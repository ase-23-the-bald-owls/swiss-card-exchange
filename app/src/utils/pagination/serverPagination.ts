import {
  PaginationProps,
  PaginationQueryProps,
  pageNumberValidation,
  pageSizeValidation,
} from './paginationProps';
import { AllEntities } from '@/lib/schema';
import { isInput } from '@/utils/parsers';
import { SupabaseServerType, createSupabaseServer } from '@/utils/supabase-server';
import { PostgrestError } from '@supabase/supabase-js';
import { GetServerSidePropsContext } from 'next';
import { ParsedUrlQuery } from 'querystring';
import { z } from 'zod';

type QueryParamsType = ParsedUrlQuery | PaginationQueryProps;
type FetchError = PostgrestError | string | number;
type CreatePaginationProps<Entity extends AllEntities, RETURN_VALUE> = {
  entity: Entity;
  query: QueryParamsType;

  supabaseServerParam?: SupabaseServerType;
  countPromise?: (
    param: CountProps<Entity>
  ) => Promise<{ count?: number; error?: FetchError }>;

  fetchPromise?: (
    param: FetchProps<Entity>
  ) => Promise<{ data?: RETURN_VALUE[]; error?: FetchError }>;
  nextContext: GetServerSidePropsContext;
};

export async function createPagination<Entity extends AllEntities, RETURN_VALUE>({
  entity,
  query,
  countPromise,
  fetchPromise,
  supabaseServerParam,
  nextContext,
}: CreatePaginationProps<Entity, RETURN_VALUE>) {
  const supabaseServer = supabaseServerParam ?? createSupabaseServer(nextContext);
  const countElements = countPromise ?? countWithSupabase;
  const { count, error: countError } = await countElements({ entity, supabaseServer });

  if (countError || isInput(count).forSchema(z.number().int().min(0)).inValid) {
    return { error: countError ?? `no valid count returned, was: ${count}` };
  }

  const maxElements = count ?? 10;
  const { pageSize: queryPageSize, pageNumber: queryPageNumber } = query;
  const pageSize = isInput<number>(parseInt(queryPageSize?.toString() ?? ''))
    .forSchema(pageSizeValidation.max(maxElements))
    .validOrElse(10);
  const maxPageNumber = Math.max(Math.floor(maxElements / pageSize), 0);
  const pageNumber = isInput<number>(parseInt(queryPageNumber?.toString() ?? ''))
    .forSchema(pageNumberValidation.max(maxPageNumber))
    .validOrElse(0);

  const fetchElements = fetchPromise ?? fetchWithSupabase;
  const { data, error } = await fetchElements({
    entity,
    supabaseServer,
    pageSize,
    pageNumber,
  });
  const paginationProps: PaginationProps = {
    pageNumber,
    pageSize,
    totalItems: maxElements,
  };
  return { data, error, paginationProps };
}

type CountProps<Entity extends AllEntities> = {
  entity: Entity;
  supabaseServer: SupabaseServerType;
};

async function countWithSupabase<Entity extends AllEntities>({
  entity,
  supabaseServer,
}: CountProps<Entity>) {
  return supabaseServer.from(entity).select('*', { count: 'exact', head: true });
}

export type FetchProps<Entity extends AllEntities> = CountProps<Entity> &
  PaginationQueryProps;

async function fetchWithSupabase<Entity extends AllEntities, RETURN_VALUE>({
  entity,
  supabaseServer,
  pageNumber,
  pageSize,
}: FetchProps<Entity>) {
  const { data: supabaseResult, error } = await supabaseServer
    .from(entity)
    .select('*')
    .range(pageNumber * pageSize, (pageNumber + 1) * pageSize - 1);
  // supabase does not type the result nicely, so we cast it
  const castedData = supabaseResult as unknown as RETURN_VALUE[];
  return { data: castedData, error };
}

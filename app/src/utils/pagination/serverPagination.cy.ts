import { createPagination } from './serverPagination';
import { createProduct } from '@/lib/products';
import { createFakeNextRequestContext } from '@/testutils/fakeNextRequestContext';
import { createFakeSupabaseClient } from '@/testutils/fakeSupabaseClient';
import { PaginationProps } from '@/utils/pagination/paginationProps';
import { range } from '@/utils/range';

const countErrorValue = 'countError';
const countError = async (_: unknown) => ({ error: countErrorValue });
const countSuccess = (count: number) => async (_: unknown) => ({ count });

const fetchErrorValue = 'fetchError';
const fetchError = async (_: unknown) => ({ error: fetchErrorValue });

const createNProducts = (n: number) => range(0, n).map((_) => createProduct());
const fetchSuccess = (count: number) => async (_: unknown) => ({
  data: createNProducts(count),
});

describe('createPagination', () => {
  it('returns error if items cannot be counted', async () => {
    const pagination = await createPagination({
      entity: 'products',
      query: {},
      supabaseServerParam: createFakeSupabaseClient(),
      countPromise: countError,
      nextContext: createFakeNextRequestContext(),
    });

    expect(pagination.error).eq(countErrorValue);
  });

  it('returns error if items cannot be fetched', async () => {
    const pagination = await createPagination({
      entity: 'products',
      query: {},
      supabaseServerParam: createFakeSupabaseClient(),
      countPromise: countSuccess(100),
      fetchPromise: fetchError,
      nextContext: createFakeNextRequestContext(),
    });

    expect(pagination.error).eq(fetchErrorValue);
    expect(pagination.data).eq(undefined);
  });

  it('returns a pagination on success', async () => {
    const count = 100;

    const pagination = await createPagination({
      entity: 'products',
      query: {},
      supabaseServerParam: createFakeSupabaseClient(),
      countPromise: countSuccess(count),
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      fetchPromise: fetchSuccess(10),
      nextContext: createFakeNextRequestContext(),
    });

    expect(pagination.error).eq(undefined);
    expect(pagination.data).to.have.length(10);
    expect(pagination.paginationProps).to.deep.eq({
      pageNumber: 0,
      pageSize: 10,
      totalItems: count,
    } as PaginationProps);
  });

  [
    {
      name: 'normal case',
      pagination: {
        pageNumber: 5,
        pageSize: 20,
      },
      count: 100,
      expectedPagination: {
        pageNumber: 5,
        pageSize: 20,
      },
    },
    {
      name: 'missing pageNumber',
      pagination: {
        pageSize: 10,
      },
      count: 20,
      expectedPagination: {
        pageNumber: 0,
        pageSize: 10,
      },
    },
    {
      name: 'missing pageSize',
      pagination: {
        pageNumber: 0,
      },
      count: 20,
      expectedPagination: {
        pageNumber: 0,
        pageSize: 10,
      },
    },
    {
      name: 'not enough items',
      pagination: {
        pageNumber: 5,
        pageSize: 20,
      },
      count: 10,
      expectedPagination: {
        pageNumber: 0,
        pageSize: 10,
      },
    },
    {
      name: 'pageSize too large',
      pagination: {
        pageNumber: 0,
        pageSize: 101,
      },
      count: 101,
      expectedPagination: {
        pageNumber: 0,
        pageSize: 10,
      },
    },
  ].forEach((param) => {
    it(`returns a pagination for parameters ${JSON.stringify(param)}`, async () => {
      const count = param.count;
      const paramPagination = param.pagination;

      const pagination = await createPagination({
        entity: 'products',
        // eslint-disable-next-line @typescript-eslint/ban-ts-comment
        // @ts-ignore
        query: paramPagination,
        supabaseServerParam: createFakeSupabaseClient(),
        countPromise: countSuccess(count),
        // eslint-disable-next-line @typescript-eslint/ban-ts-comment
        // @ts-ignore
        fetchPromise: fetchSuccess(param.expectedPagination.pageSize),
        nextContext: createFakeNextRequestContext(),
      });

      expect(pagination.error).eq(undefined);
      expect(pagination.data).to.have.length(pagination?.paginationProps?.pageSize ?? 0);
      expect(JSON.stringify(pagination.paginationProps)).eq(
        JSON.stringify({
          ...param.expectedPagination,
          totalItems: param.count,
        } as PaginationProps)
      );
    });
  });
});

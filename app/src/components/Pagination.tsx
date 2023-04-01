// noinspection ES6PreferShortImport
// noinspection ES6PreferShortImport
import { clientPagination } from '../utils/pagination/clientPagination';
import {
  PaginationProps,
  PaginationQueryProps,
} from '../utils/pagination/paginationProps';
import { Button, ButtonGroup } from '@chakra-ui/react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import { ParsedUrlQuery } from 'querystring';
import React from 'react';

function toQueryString(query: object) {
  return '?' + new URLSearchParams(JSON.parse(JSON.stringify(query))).toString();
}

function replaceQuery(first: PaginationQueryProps | null, query: ParsedUrlQuery) {
  return first
    ? { ...query, pageNumber: first.pageNumber, pageSize: first.pageSize }
    : query;
}

type LinkButtonProps = {
  children: React.ReactNode;
  disabled: boolean;
  href?: string;
  linkProps?: Parameters<typeof Link>;
  buttonProps?: Parameters<typeof Button>;
};

function LinkButton({
  children,
  disabled,
  href,
  linkProps,
  buttonProps,
}: LinkButtonProps) {
  if (disabled || !href) {
    return <Button disabled>{children}</Button>;
  }
  return (
    <Link href={href} {...linkProps}>
      {/* eslint-disable-next-line @typescript-eslint/ban-ts-comment */}
      {/*@ts-ignore*/}
      <Button colorScheme={'blue'} {...buttonProps}>
        {children}
      </Button>
    </Link>
  );
}
export function Pagination(paginationProps: PaginationProps) {
  const { query } = useRouter();
  const paginationValues = clientPagination(paginationProps);

  const firstRef = toQueryString(replaceQuery(paginationValues.first, query));
  const previousRef = toQueryString(replaceQuery(paginationValues.previous, query));
  const nextRef = toQueryString(replaceQuery(paginationValues.next, query));
  const lastRef = toQueryString(replaceQuery(paginationValues.last, query));

  return (
    <>
      <ButtonGroup isAttached variant={'outline'} style={{ margin: '20px' }}>
        <LinkButton disabled={paginationValues.first === null} href={firstRef}>
          {'<<'}
        </LinkButton>
        <LinkButton disabled={paginationValues.previous === null} href={previousRef}>
          {'<'}
        </LinkButton>
        <LinkButton disabled={true}>{paginationValues.current + 1}</LinkButton>
        <LinkButton disabled={paginationValues.next === null} href={nextRef}>
          {'>'}
        </LinkButton>
        <LinkButton disabled={paginationValues.last === null} href={lastRef}>
          {'>>'}
        </LinkButton>
      </ButtonGroup>
    </>
  );
}

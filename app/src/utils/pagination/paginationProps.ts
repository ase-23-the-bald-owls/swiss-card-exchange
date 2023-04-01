import { z } from 'zod';

export const pageSizeValidation = z.number().int().min(10).max(100);
export const pageNumberValidation = z.number().int().min(0);
export const paginationQueryProps = z.object({
  pageNumber: pageNumberValidation,
  pageSize: pageSizeValidation,
});

export type PaginationQueryProps = z.infer<typeof paginationQueryProps>;

export function createPaginationProps(
  pageNumber: number,
  pageSize: number
): PaginationQueryProps {
  return {
    pageNumber,
    pageSize,
  };
}

export const paginationPropsSchema = paginationQueryProps.merge(
  z.object({ totalItems: z.number().int().min(0) })
);

export type PaginationProps = z.infer<typeof paginationPropsSchema>;

// noinspection ES6PreferShortImport
import { isInput } from '../../utils/parsers';
import {
  PaginationProps,
  PaginationQueryProps,
  pageNumberValidation,
} from './paginationProps';

export function clientPagination({ pageNumber, pageSize, totalItems }: PaginationProps) {
  const pageNumberModifier = totalItems % pageSize === 0 ? -1 : 0;
  const maxPageNumber = isInput<number>(
    Math.floor(totalItems / pageSize) + pageNumberModifier
  )
    .forSchema(pageNumberValidation)
    .validOrElse(0);
  return {
    get current() {
      return pageNumber;
    },

    get previous(): PaginationQueryProps | null {
      if (pageNumber <= 0) {
        return null;
      }
      return {
        pageNumber: pageNumber - 1,
        pageSize,
      };
    },

    get next(): PaginationQueryProps | null {
      if (pageNumber >= maxPageNumber) {
        return null;
      }
      return {
        pageNumber: pageNumber + 1,
        pageSize,
      };
    },

    get first(): PaginationQueryProps | null {
      if (pageNumber <= 0) {
        return null;
      }
      return {
        pageNumber: 0,
        pageSize,
      };
    },

    get last(): PaginationQueryProps | null {
      if (pageNumber >= maxPageNumber) {
        return null;
      }
      return {
        pageNumber: maxPageNumber,
        pageSize,
      };
    },
  };
}

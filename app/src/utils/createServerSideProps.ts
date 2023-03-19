import { PropsWithError } from '@/utils/ErrorProps';

export function createError(code: number): PropsWithError {
  return {
    props: {
      code,
    },
  };
}

export function createSuccess<T>(data: T) {
  return {
    props: {
      ...data,
    },
  };
}

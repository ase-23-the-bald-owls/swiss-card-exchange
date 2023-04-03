import { ZodType } from 'zod';

export function isInput<T>(input: unknown) {
  return {
    forSchema(schema: ZodType<T>) {
      return {
        validOrElse(fallback: T) {
          return schema.safeParse(input).success ? schema.parse(input) : fallback;
        },
        get valid() {
          return schema.safeParse(input).success;
        },
        get inValid() {
          return !this.valid;
        },
      };
    },
  };
}

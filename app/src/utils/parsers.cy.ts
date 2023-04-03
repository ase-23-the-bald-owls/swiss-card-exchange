import { isInput } from './parsers';
import { z } from 'zod';

describe('isInput', () => {
  const schema = z.number().int().min(0).max(10_000);
  [0, -0, 1, 1_000].forEach((input) => {
    it(`validates valid input ${input}`, () => {
      expect(isInput(input).forSchema(schema).valid).to.eq(true);
      expect(isInput(input).forSchema(schema).inValid).to.eq(false);
      expect(isInput(input).forSchema(schema).validOrElse(100)).to.eq(input);
    });
  });

  [
    -1,
    0.5,
    10_001,
    Number.MIN_VALUE,
    Number.MAX_VALUE,
    Number.MIN_SAFE_INTEGER,
    Number.MAX_SAFE_INTEGER,
    '',
    '1',
    [],
    null,
    undefined,
    NaN,
  ].forEach((input) => {
    it(`invalid input ${input} is invalid`, () => {
      expect(isInput(input).forSchema(schema).valid).to.eq(false);
      expect(isInput(input).forSchema(schema).inValid).to.eq(true);
      expect(isInput(input).forSchema(schema).validOrElse(100)).to.eq(100);
    });
  });
});

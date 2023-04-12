import { HTMLChakraProps, Text } from '@chakra-ui/react';

type PriceProps = {
  price: number | null;
} & HTMLChakraProps<'span'>;

export function Price({ price, ...chakraProps }: PriceProps) {
  if (price === null) {
    return (
      <Text color="blue.200" fontSize="2xl" {...chakraProps}>
        Price on request
      </Text>
    );
  }
  return (
    <Text color="blue.200" fontSize="2xl" {...chakraProps}>
      CHF {price.toFixed(2)}
    </Text>
  );
}

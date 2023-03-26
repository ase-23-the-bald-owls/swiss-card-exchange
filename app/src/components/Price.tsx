import { Text } from '@chakra-ui/react';

type PriceProps = {
  price: number | null;
};

export function Price({ price }: PriceProps) {
  if (price === null) {
    return (
      <Text color="blue.200" fontSize="2xl">
        Price on request
      </Text>
    );
  }
  return (
    <Text color="blue.200" fontSize="2xl">
      CHF {price.toFixed(2)}
    </Text>
  );
}

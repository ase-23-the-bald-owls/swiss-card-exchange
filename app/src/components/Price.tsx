import { Text } from '@chakra-ui/react';

type PriceProps = {
  price: number;
};

export function Price({ price }: PriceProps) {
  return (
    <Text color="blue.600" fontSize="2xl">
      CHF {price.toFixed(2)}
    </Text>
  );
}

import { Price } from '@/components/Price';
import { totalShoppingCartPriceAtom } from '@/store/shoppingCartStore';
import { Card } from '@chakra-ui/card';
import { Flex, HTMLChakraProps, Heading, Spacer } from '@chakra-ui/react';
import { useAtom } from 'jotai';

export function ShoppingCartTotalPrice({ ...chakraProps }: HTMLChakraProps<'div'>) {
  const [totalPrice] = useAtom(totalShoppingCartPriceAtom);
  return (
    <Card {...chakraProps} padding={'10px'}>
      <Flex>
        <Heading fontSize={'2xl'} alignSelf={'center'}>
          Sum:
        </Heading>
        <Spacer width={'20px'} />
        <Price price={totalPrice} />
      </Flex>
    </Card>
  );
}

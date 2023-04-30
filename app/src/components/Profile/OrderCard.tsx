import { Price } from '@/components/Price';
import { OrderWithCustomerAndItems } from '@/lib/orders';
import { Card, CardBody } from '@chakra-ui/card';
import { Flex, Heading, Text } from '@chakra-ui/react';
import React from 'react';

const elementMargin = '20px 0 20px 0';

type OrderCardProps = {
  order: OrderWithCustomerAndItems;
};

export function OrderCard({ order }: OrderCardProps) {
  const nrOfItems = order.orderitems
    .map((value) => value.quantity ?? 0)
    .reduce((a, b) => a + b, 0);

  const orderValue = order.orderitems
    .map((value) => (value.quantity ?? 0) * (value.product.price ?? 0))
    .reduce((a, b) => a + b, 0);

  return (
    <Card>
      <CardBody>
        <Flex style={{ justifyContent: 'space-between' }} wrap={'wrap'}>
          <Heading
            size={'lg'}
            minWidth={{ base: '80%', md: '50%', lg: '40%' }}
            margin={elementMargin}
          >
            Order Nr. {order.id}
          </Heading>
          <Text alignSelf={'center'}>Count: {nrOfItems}</Text>
          <Flex margin={elementMargin} minWidth={{ base: '30%', md: '40%' }}>
            <Text alignSelf={'center'}>Value:</Text>{' '}
            <Price price={orderValue} marginLeft={'auto'} />
          </Flex>
        </Flex>
      </CardBody>
    </Card>
  );
}

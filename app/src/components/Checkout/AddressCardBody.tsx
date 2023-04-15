import { Address } from '@/store/checkoutStore';
import { CardBody } from '@chakra-ui/card';
import { Text } from '@chakra-ui/react';
import React from 'react';

type AddressCardBodyProps = {
  address?: Address;
};

export function AddressCardBody({ address }: AddressCardBodyProps) {
  return (
    <CardBody>
      <Text>
        {address?.firstname} {address?.name}
      </Text>
      <Text>{address?.company}</Text>
      <Text>{address?.address}</Text>
      <Text>
        {address?.zipCode} {address?.city}
      </Text>
    </CardBody>
  );
}

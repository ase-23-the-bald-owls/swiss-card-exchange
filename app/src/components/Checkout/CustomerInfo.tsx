import { AddressCardBody } from '@/components/Checkout/AddressCardBody';
import { getBillingAddressAtom, shippingAddressAtom } from '@/store/checkoutStore';
import { Card, CardBody, CardHeader } from '@chakra-ui/card';
import { Spacer } from '@chakra-ui/react';
import { useAtom } from 'jotai/react';
import React from 'react';

export function CustomerInfo() {
  const [shippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  return (
    <>
      <Card width={{ base: '100%', md: '50%' }}>
        <CardBody>Email: {shippingAddress?.email}</CardBody>
      </Card>

      <Spacer minHeight={{ base: '20px' }} />

      <Card width={{ base: '100%', md: '50%' }}>
        <CardHeader>Shipping Address</CardHeader>
        {/* eslint-disable-next-line @typescript-eslint/no-non-null-assertion */}
        <AddressCardBody address={shippingAddress ?? undefined} />
      </Card>

      <Spacer minHeight={{ base: '10px' }} />

      <Card width={{ base: '100%', md: '50%' }}>
        <CardHeader>Billing Address</CardHeader>
        {/* eslint-disable-next-line @typescript-eslint/no-non-null-assertion */}
        <AddressCardBody address={billingAddress ?? undefined} />
      </Card>
    </>
  );
}

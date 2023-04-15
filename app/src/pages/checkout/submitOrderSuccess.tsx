import { CustomerInfo } from '@/components/Checkout/CustomerInfo';
import { NavBar } from '@/components/Navigation/NavBar';
import { Price } from '@/components/Price';
import { paymentAmountAtom } from '@/store/checkoutStore';
import styles from '@/styles/Home.module.css';
import { HomeRoute } from '@/utils/routes';
import { Card, CardBody, CardHeader } from '@chakra-ui/card';
import { Button, Flex, Heading, Spacer, Text } from '@chakra-ui/react';
import { useAtom } from 'jotai/react';
import Link from 'next/link';
import React from 'react';

export default function SubmitOrderPage() {
  const [paymentAmount] = useAtom(paymentAmountAtom);

  return (
    <>
      <NavBar></NavBar>
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'} minWidth={{ base: '90%', lg: '70%' }}>
          <Heading alignSelf={'center'}>Order successfully submitted</Heading>
          <Spacer minHeight={'20px'} />

          <Spacer minHeight={{ base: '50px' }} />

          <CustomerInfo />

          <Spacer minHeight={{ base: '30px' }} />

          <Card width={{ base: '100%' }}>
            <CardHeader>
              <Heading size={'md'}>Payment Information</Heading>
            </CardHeader>
            <CardBody>
              <Text>Please pay the amount of:</Text>
              <Price price={paymentAmount} />
              <Text>to the following account: CH59 8914 4397 6375 1145 7</Text>
              <Text>The products will be shipped after payment</Text>
            </CardBody>
          </Card>

          <Spacer minHeight={{ base: '50px' }} />

          <Link href={HomeRoute}>
            <Button
              variant="solid"
              colorScheme="blue"
              maxWidth={{ base: '80%', md: '50%', lg: '20%' }}
              marginLeft={'auto'}
              data-cy={'submit-order-success-home'}
            >
              Back to shopping
            </Button>
          </Link>
        </Flex>
      </main>
    </>
  );
}

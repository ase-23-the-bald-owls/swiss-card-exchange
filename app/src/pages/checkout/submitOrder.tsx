import { CustomerInfo } from '@/components/Checkout/CustomerInfo';
import { NavBar } from '@/components/Navigation/NavBar';
import { Price } from '@/components/Price';
import { ShoppingCartTotalPrice } from '@/components/ShoppingCartOverview/ShoppingCartTotalPrice';
import { useSubmitOrder } from '@/hooks/useSubmitOrder';
import { getBillingAddressAtom, shippingAddressAtom } from '@/store/checkoutStore';
import { getAllItemsAsMap } from '@/store/shoppingCartStore';
import styles from '@/styles/Home.module.css';
import {
  BillingAddressRoute,
  HomeRoute,
  ShippingAddressRoute,
  ShoppingCartRoute,
  SubmitOrderSuccessRoute,
} from '@/utils/routes';
import { Card, CardBody } from '@chakra-ui/card';
import {
  Alert,
  AlertDescription,
  AlertIcon,
  AlertTitle,
  Breadcrumb,
  BreadcrumbItem,
  Button,
  Flex,
  Heading,
  Spacer,
  Text,
} from '@chakra-ui/react';
import { useQuery } from '@tanstack/react-query';
import { useAtom } from 'jotai/react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import React, { useEffect } from 'react';

const elementMargin = '20px 0 20px 0';

export default function SubmitOrderPage() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);
  const [shippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  const { submitOrder: submitOrderHook } = useSubmitOrder();
  const router = useRouter();

  async function submitOrder() {
    const result = await submitOrderHook();
    await router.push(SubmitOrderSuccessRoute);
    return result;
  }

  const {
    error,
    refetch: triggerSubmitOrder,
    isFetching,
  } = useQuery({
    queryKey: ['submitOrder'],
    queryFn: submitOrder,
    enabled: false,
    retry: false,
  });

  useEffect(() => {
    if (!shippingAddress && !billingAddress) {
      if (shoppingCartLineItems.size === 0) {
        // noinspection JSIgnoredPromiseFromCall
        router.push(HomeRoute);
      }
      // noinspection JSIgnoredPromiseFromCall
      router.push(ShippingAddressRoute);
    }
  });

  return (
    <>
      <NavBar></NavBar>
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'} minWidth={{ base: '90%', lg: '70%' }}>
          <Heading alignSelf={'center'}>Submit Order</Heading>
          <Spacer minHeight={'20px'} />
          <Breadcrumb separator={'>'}>
            <BreadcrumbItem>
              <Link href={ShoppingCartRoute}>Shopping Cart</Link>
            </BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={ShippingAddressRoute}>Shipping Address</Link>
            </BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={BillingAddressRoute}>Billing Address</Link>
            </BreadcrumbItem>
            <BreadcrumbItem isCurrentPage>Submit Order</BreadcrumbItem>
          </Breadcrumb>

          <Spacer minHeight={{ base: '50px' }} />

          {Array.from(shoppingCartLineItems)
            .filter(([entry]) => entry.numberOfProducts > 0)
            .map(([entry]) => (
              <Card
                key={entry.product.id}
                data-cy={'submit-order-item-card'}
                marginBottom={'10px'}
              >
                <CardBody>
                  <Flex style={{ justifyContent: 'space-between' }} wrap={'wrap'}>
                    <Heading
                      size={'lg'}
                      minWidth={{ base: '80%', md: '50%', lg: '40%' }}
                      margin={elementMargin}
                    >
                      {entry.product.title}
                    </Heading>
                    <Text alignSelf={'center'}>Count: {entry.numberOfProducts}</Text>
                    <Text alignSelf={'center'}>Price/Item:</Text>
                    <Price price={entry.product.price ?? null} alignSelf={'center'} />
                    <Flex margin={elementMargin} minWidth={{ base: '30%', md: '40%' }}>
                      <Price
                        price={entry.numberOfProducts * (entry.product.price || 0)}
                        marginLeft={'auto'}
                      />
                    </Flex>
                  </Flex>
                </CardBody>
              </Card>
            ))}
          <Spacer minHeight={{ base: '10px' }} />
          <Flex>
            <ShoppingCartTotalPrice
              marginLeft={'auto'}
              data-cy={'shopping-cart-overview-total-price'}
            />
          </Flex>

          <Spacer minHeight={{ base: '20px' }} />

          <CustomerInfo />

          <Spacer minHeight={{ base: '50px' }} />

          {error ? (
            <Alert status="error">
              <AlertIcon />
              <AlertTitle>Your order could not be submitted</AlertTitle>
              <AlertDescription>Please try again</AlertDescription>
            </Alert>
          ) : (
            <></>
          )}

          <Button
            onClick={() => triggerSubmitOrder()}
            isLoading={isFetching}
            variant="solid"
            colorScheme="blue"
            maxWidth={{ base: '80%', md: '50%', lg: '20%' }}
            marginLeft={'auto'}
            data-cy={'submit-order-button'}
          >
            Submit Order
          </Button>
        </Flex>
      </main>
    </>
  );
}

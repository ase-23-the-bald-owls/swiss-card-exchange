import { AddressFormFields } from '@/components/Checkout/AddressFormFields';
import { NavBar } from '@/components/Navigation/NavBar';
import {
  Address,
  addressFields,
  billingAddressAtom,
  billingAddressSameAsShippingAddressAtom,
  getBillingAddressAtom,
  shippingAddressAtom,
} from '@/store/checkoutStore';
import { getAllItemsAsMap } from '@/store/shoppingCartStore';
import styles from '@/styles/Home.module.css';
import {
  HomeRoute,
  ShippingAddressRoute,
  ShoppingCartRoute,
  SubmitOrderRoute,
} from '@/utils/routes';
import {
  Breadcrumb,
  BreadcrumbItem,
  Button,
  Flex,
  FormControl,
  FormLabel,
  Heading,
  Spacer,
  Switch,
} from '@chakra-ui/react';
import { Form, Formik } from 'formik';
import { useAtom } from 'jotai/react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import { useEffect } from 'react';

const formFieldSpacerHeight = '10px';

export default function ShippingAdress() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);
  const [shippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  const [, setBillingAddress] = useAtom(billingAddressAtom);
  const [billingAddressSameAsShippingAddress, setBillingAddressSameAsShippingAddress] =
    useAtom(billingAddressSameAsShippingAddressAtom);
  const router = useRouter();

  useEffect(() => {
    if (!shippingAddress) {
      if (shoppingCartLineItems.size === 0) {
        router.push(HomeRoute);
      }
      router.push(ShippingAddressRoute);
    }
  });

  const initialValues = billingAddress ?? { ...addressFields };

  async function submitForm(values: Address) {
    setBillingAddress(values);
    await router.push(SubmitOrderRoute);
  }

  return (
    <>
      <NavBar></NavBar>
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'} minWidth={{ base: '90%', lg: '50%' }}>
          <Heading alignSelf={'center'}>Billing Address</Heading>

          <Breadcrumb separator={'>'}>
            <BreadcrumbItem>
              <Link href={ShoppingCartRoute}>Shopping Cart</Link>
            </BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={ShippingAddressRoute}>Shipping Address</Link>
            </BreadcrumbItem>
            <BreadcrumbItem isCurrentPage>Billing Address</BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={shippingAddress && billingAddress ? SubmitOrderRoute : '#'}>
                Submit Order
              </Link>
            </BreadcrumbItem>
          </Breadcrumb>

          <Spacer minHeight={'30px'} />

          <FormControl display="flex" alignItems="center">
            <FormLabel htmlFor="addressesSame" mb="0">
              Billing address is the same as the shipping address?
            </FormLabel>
            <Switch
              id="addressesSame"
              isChecked={billingAddressSameAsShippingAddress}
              onChange={() => {
                setBillingAddressSameAsShippingAddress((oldvalue) => !oldvalue);
              }}
            />
          </FormControl>

          <Spacer minHeight={formFieldSpacerHeight} />

          {!billingAddressSameAsShippingAddress && (
            <Formik initialValues={initialValues} onSubmit={submitForm}>
              <Form>
                <AddressFormFields spacerHeight={formFieldSpacerHeight} />
                <Spacer minHeight={formFieldSpacerHeight} />
                <Button type={'submit'} variant={'solid'} colorScheme="blue">
                  Submit
                </Button>
              </Form>
            </Formik>
          )}

          {billingAddressSameAsShippingAddress && (
            <Button
              variant={'solid'}
              colorScheme="blue"
              maxWidth={{ base: '80%', md: '50%', lg: '20%' }}
              onClick={() => router.push(SubmitOrderRoute)}
            >
              Continue
            </Button>
          )}
        </Flex>
      </main>
    </>
  );
}

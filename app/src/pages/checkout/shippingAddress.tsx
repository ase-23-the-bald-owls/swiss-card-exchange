import { AddressFormFields } from '@/components/Checkout/AddressFormFields';
import { NavBar } from '@/components/Navigation/NavBar';
import {
  ShippingAddress,
  getBillingAddressAtom,
  shippingAddressAtom,
  shippingAddressFields,
} from '@/store/checkoutStore';
import { getAllItemsAsMap } from '@/store/shoppingCartStore';
import styles from '@/styles/Home.module.css';
import {
  BillingAddressRoute,
  HomeRoute,
  ShoppingCartRoute,
  SubmitOrderRoute,
} from '@/utils/routes';
import {
  Breadcrumb,
  BreadcrumbItem,
  Button,
  Flex,
  FormControl,
  FormErrorMessage,
  FormLabel,
  Heading,
  Input,
  Spacer,
} from '@chakra-ui/react';
import { Field, Form, Formik } from 'formik';
import { useAtom } from 'jotai/react';
import Link from 'next/link';
import { useRouter } from 'next/router';
import { useEffect } from 'react';

const formFieldSpacerHeight = '10px';

export default function ShippingAdress() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);
  const [shippingAddress, setShippingAddress] = useAtom(shippingAddressAtom);
  const [billingAddress] = useAtom(getBillingAddressAtom);
  const router = useRouter();

  const initialValues = shippingAddress ?? { ...shippingAddressFields };

  useEffect(() => {
    if (shoppingCartLineItems.size === 0) {
      router.push(HomeRoute);
    }
  });

  async function submitForm(values: ShippingAddress) {
    setShippingAddress(values);
    await router.push(BillingAddressRoute);
  }

  return (
    <>
      <NavBar></NavBar>
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'} minWidth={{ base: '90%', lg: '50%' }}>
          <Heading alignSelf={'center'}>Shipping Address</Heading>

          <Breadcrumb separator={'>'}>
            <BreadcrumbItem>
              <Link href={ShoppingCartRoute}>Shopping Cart</Link>
            </BreadcrumbItem>
            <BreadcrumbItem isCurrentPage>Shipping Address</BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={shippingAddress ? BillingAddressRoute : '#'}>
                Billing Address
              </Link>
            </BreadcrumbItem>
            <BreadcrumbItem>
              <Link href={shippingAddress && billingAddress ? SubmitOrderRoute : '#'}>
                Submit Order
              </Link>
            </BreadcrumbItem>
          </Breadcrumb>

          <Spacer minHeight={'30px'} />

          <Formik initialValues={initialValues} onSubmit={submitForm}>
            <Form>
              <AddressFormFields spacerHeight={formFieldSpacerHeight} />
              <Spacer minHeight={formFieldSpacerHeight} />
              <FormControl isRequired>
                <FormLabel htmlFor={'email'}>Email</FormLabel>
                <Field
                  as={Input}
                  type={'email'}
                  id={'email'}
                  name={'email'}
                  placeholder={'email'}
                />
                <FormErrorMessage>errors.email</FormErrorMessage>
              </FormControl>
              <Spacer minHeight={formFieldSpacerHeight} />
              <Button type={'submit'} variant={'solid'} colorScheme="blue">
                Submit
              </Button>
            </Form>
          </Formik>
        </Flex>
      </main>
    </>
  );
}

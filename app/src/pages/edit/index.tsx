import { useProducts } from '@/hooks/useProducts';
import { Product } from '@/lib/products';
import { BackendProducts } from '@/utils/routes';
import { Box, Button, FormControl, FormLabel, Stack, Text } from '@chakra-ui/react';
import { Field, Form, Formik } from 'formik';
import { useRouter } from 'next/router';

export default function AddProduct() {
  const { createProduct } = useProducts();

  const router = useRouter();
  const product: Product = {
    attributes: '',
    card_type: '',
    description: '',
    id: NaN,
    rarity: '',
    set: '',
    title: '',
    types: '',
    price: 666,
    created_at: new Date().toISOString(),
    inserted_at: new Date().toISOString(),
  };

  return (
    <Box w="60%" p={4}>
      <Stack>
        <Text fontSize="5xl">Create Products</Text>
        <Formik
          initialValues={product}
          onSubmit={async (values, actions) => {
            await createProduct(values);
            console.log({ values, actions });
            alert('Successfully created a Product!');
            actions.setSubmitting(false);
            router.push(BackendProducts);
          }}
        >
          <Form>
            <FormControl isReadOnly>
              <FormLabel htmlFor="id">Id: Automatically assigned </FormLabel>
            </FormControl>
            <FormControl isRequired>
              <Field id="title" name="title" placeholder="Title" />
            </FormControl>
            <FormControl isRequired>
              <Field id="description" name="description" placeholder="Description" />
            </FormControl>
            <FormControl isRequired>
              <Field id="attributes" name="attributes" placeholder="Attributes" />
            </FormControl>
            <FormControl isRequired>
              <div id="type-radio-group">Rarity</div>
              <div role="group" aria-labelledby="rarity-radio-group">
                <label>
                  <Field type="radio" name="rarity" value="Common" />
                  Common
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Rare" />
                  Rare
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Super Rare" />
                  Super Rare
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Ultra Rare" />
                  Ultra Rare
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Secret Rare" />
                  Secret Rare
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Starlight Rare" />
                  Starlight Rare
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Short Print" />
                  Short Print
                </label>
                <label>
                  <Field type="radio" name="rarity" value="Premium Gold Rare" />
                  Premium Gold Rare
                </label>
              </div>
            </FormControl>
            <div id="card_type-radio-group">Card Type</div>
            <div role="group" aria-labelledby="card_type-radio-group">
              <label>
                <Field type="radio" name="card_type" value="Trap" />
                Trap
              </label>
              <label>
                <Field type="radio" name="card_type" value="Monster" />
                Monster
              </label>
              <label>
                <Field type="radio" name="card_type" value="Spell" />
                Spell
              </label>
            </div>
            <FormControl isRequired>
              <Field id="types" name="types" placeholder="Types" />
            </FormControl>
            <FormControl isRequired>
              <Field id="set" name="set" placeholder="Set" />
            </FormControl>
            <Button type="submit">Save</Button>
          </Form>
        </Formik>
      </Stack>
    </Box>
  );
}

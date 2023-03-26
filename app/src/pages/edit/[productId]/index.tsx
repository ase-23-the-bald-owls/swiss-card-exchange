import { useState} from 'react';
import { Formik, Field, Form, FormikHelpers } from 'formik';
import { Box, Stack, Input, Text, Button, FormControl, FormLabel } from '@chakra-ui/react';
import { Product } from '@/lib/products';
import { GetServerSidePropsContext } from 'next';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { createSupabaseServer } from '@/utils/supabase-server';
import Error from 'next/error';
import { useRouter } from 'next/router';
import { useProducts } from '@/hooks/useProducts';
import { BackendProducts } from '@/utils/routes';

type EditProductProperties = {
  product?: Product;
} & ErrorProps;

export async function getServerSideProps({ params }: GetServerSidePropsContext) {
  if (!params) {
    return createError(400);
  }
  const productId = params['productId'];
  const supabaseServer = createSupabaseServer();
  const { data } = await supabaseServer.from('products').select('*').eq('id', productId);
  if (data === null || data === undefined || !Array.isArray(data)) {
    return createError(500);
  }

  if (data.length === 0) {
    return createError(404);
  }

  return createSuccess({ product: data[0] });
}


export default function EditProduct({product, code}:EditProductProperties) {

  const {updateProduct} =  useProducts()
  const router = useRouter()

  if (code || !product) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }

  const createProduct = {
    attributes: product.attributes?? '', 
    card_type: product.card_type?? '',
    created_at: product.created_at?? '',
    description: product.description?? '',
    id: product.id?? '',
    inserted_at: product.inserted_at??'',
    rarity: product.rarity?? '',
    set: product.set?? '',
    title: product.title?? '',
    types: product.types?? ''
  }



  return (
    <Box  w='60%' p={4}>
        <Stack>
        <Text fontSize='5xl'>Edit Products</Text>
      <Formik
        initialValues={createProduct}
        onSubmit={async (values, actions) => {
          console.log({ values, actions });
          alert('Successfully edited the product!');
          actions.setSubmitting(false);
          await updateProduct(values)
          router.push(BackendProducts)
          
         }} >
          
        <Form> 
          <FormControl isReadOnly>
          <FormLabel htmlFor='id' >Id: {product.id} </FormLabel>
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
          <Button type="submit" >Save</Button>
        </Form>
      </Formik>
    </Stack>
    </Box>
  );
};

import { useState} from 'react';
import { Formik, Field, Form, FormikHelpers } from 'formik';
import { Box, Stack, Input, Text, Button, RadioGroup, Radio, FormControl, FormLabel } from '@chakra-ui/react';
import { Product } from '@/lib/products';
import { type } from 'os';

type EditProductProperties =  {
  prod: Product;
}


export default function Edit({prod}:EditProductProperties) {

  const [rarity, setRarity] = useState<string>('Common');
  const [type,setType] = useState<string>('Monster')
  const createProduct = {
    attributes: '',
    card_type: '',
    description: '',
    id: NaN,
    rarity: '',
    set: '',
    title: '',
    types: '',}

  return (

    <Box  w='60%' p={4}>
        <Stack>
        <Text fontSize='5xl'>Edit or Create Products</Text>
      <Formik
        initialValues={createProduct}
        onSubmit={(values, actions) => {
          console.log({ values, actions });
          alert(JSON.stringify(values, null, 2));
          actions.setSubmitting(false);
         }} >
          
        <Form> 
          <FormControl isReadOnly>
          <FormLabel htmlFor='id' >Id: </FormLabel>
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
          <Button>Clear</Button>
        </Form>
      </Formik>
    </Stack>
   
    </Box>
  );
};

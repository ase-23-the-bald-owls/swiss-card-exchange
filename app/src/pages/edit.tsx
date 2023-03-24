import { useState} from 'react';
import { Formik, Field, Form, FormikHelpers } from 'formik';
import { Box, Stack, Input, Text, Button, RadioGroup, Radio, FormControl, FormLabel } from '@chakra-ui/react';
import { Product } from '@/lib/products';
import { type } from 'os';



export default function Edit({}) {

  const [editProduct, setEditProduct] = useState<Product | null >(null);
  const [rarity, setRarity] = useState<string>('');
  const [type,setType] = useState<string>('Monster')

  return (
    <Box  w='60%' p={4}>
        <Stack>
        <Text fontSize='5xl'>Edit or Create Products</Text>
      <Formik
        initialValues={{
          attributes: null,
          card_type: null,
          description: null,
          id: null,
          rarity: null,
          set: null,
          title: null,
          types: null,
        }}
        onSubmit={( values: Product,{setSubmitting }: FormikHelpers<Product>) => {
          setTimeout(() => { alert(JSON.stringify(values, null, 2));
            setSubmitting(false);
          }, 500);
        }}
      >
        <Form>
          <FormControl isRequired>
          <FormLabel>Id:{}</FormLabel>
          </FormControl>
          
          <FormControl isRequired>
          <Input id="title" name="title" placeholder="Title" />
          </FormControl>
          <Input id="description" name="description" placeholder="Description" />
          <RadioGroup onChange={setRarity} value={rarity} defaultValue='Common'>
          <Stack direction='row'>
          <Radio value='Common'>Common</Radio>
          <Radio value='Rare'>Rare</Radio>
          <Radio value='Super Rare'>Super Rare</Radio>
          <Radio value='Ultra Rare'>Ultra Rare</Radio>
          <Radio value='Short Print'>Short Print</Radio>
          <Radio value='Secret Rare'>Secret Rare</Radio>
          <Radio value='Starlight Rare'>Starlight Rare</Radio>
          <Radio value='Premium Gold Rare'>Premium Gold Rare</Radio>
          </Stack>
          </RadioGroup>
         



          
          <Text>Type</Text>
          <RadioGroup onChange={setType} value={type}>
          <Stack direction='row'>
          <Radio value='Monster'>Monster</Radio>
          <Radio value='Spell'>Spell</Radio>
          <Radio value='Trap'>Trap</Radio>
          </Stack>
          </RadioGroup>
          <Button type="submit">Save</Button>
          <Button>Clear</Button>
        </Form>
      </Formik>
    </Stack>
   
    </Box>
  );
};

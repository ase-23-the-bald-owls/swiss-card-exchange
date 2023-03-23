import * as React from 'react';
import { Formik, Field, Form, FormikHelpers } from 'formik';
import { Box, Stack, Input, Text, Button } from '@chakra-ui/react';

interface Values {
  firstName: string;
  lastName: string;
  email: string;
}

export default function Edit({}) {
  return (
    <Box  w='50%' p={4}>
        <Stack>
        <Text fontSize='6xl'>Edit or Create Products</Text>
      <Formik
        initialValues={{
             firstName: '',
          lastName: '',
          email: '',
        }}
        onSubmit={(
          values: Values,
          { setSubmitting }: FormikHelpers<Values>
        ) => {
          setTimeout(() => {
            alert(JSON.stringify(values, null, 2));
            setSubmitting(false);
          }, 500);
        }}
      >
        <Form>
          <Text>Id</Text>
          <Input id="firstName" name="firstName" placeholder="John" />

          <Text>Last Name</Text>
          <Input id="lastName" name="lastName" placeholder="Doe" />

          <Text>Email</Text>
          <Input id="email" name="email" placeholder="john@acme.com" type="email"/>
          <Button type="submit">Save</Button>
          <Button>Clear</Button>
        </Form>
      </Formik>
    </Stack>
   
    </Box>
  );
};

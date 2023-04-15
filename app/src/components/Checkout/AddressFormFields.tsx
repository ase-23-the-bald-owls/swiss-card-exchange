import { FormControl, FormLabel, Input, Spacer } from '@chakra-ui/react';
import { Field } from 'formik';

type AddressFormFieldProps = { spacerHeight: string };

export function AddressFormFields({ spacerHeight }: AddressFormFieldProps) {
  return (
    <>
      <FormControl isRequired>
        <FormLabel htmlFor={'firstname'}>Firstname</FormLabel>
        <Field
          as={Input}
          id={'firstname'}
          name={'firstname'}
          placeholder={'first name'}
        />
      </FormControl>
      <Spacer minHeight={spacerHeight} />
      <FormControl isRequired>
        <FormLabel htmlFor={'name'}>Name</FormLabel>
        <Field as={Input} id={'name'} name={'name'} placeholder={'name'} />
      </FormControl>
      <Spacer minHeight={spacerHeight} />
      <FormControl>
        <FormLabel htmlFor={'company'}>Company</FormLabel>
        <Field as={Input} id={'company'} name={'company'} placeholder={'company'} />
      </FormControl>
      <Spacer minHeight={spacerHeight} />
      <FormControl isRequired>
        <FormLabel htmlFor={'address'}>Address</FormLabel>
        <Field as={Input} id={'address'} name={'address'} placeholder={'address'} />
      </FormControl>
      <Spacer minHeight={spacerHeight} />
      <FormControl isRequired>
        <FormLabel htmlFor={'zipCode'}>Zip code</FormLabel>
        <Field
          as={Input}
          id={'zipCode'}
          name={'zipCode'}
          placeholder={'Zip code'}
          maxWidth={'250px'}
        />
      </FormControl>
      <Spacer minHeight={spacerHeight} />
      <FormControl isRequired>
        <FormLabel htmlFor={'city'}>City</FormLabel>
        <Field
          as={Input}
          id={'city'}
          name={'city'}
          placeholder={'city'}
          maxWidth={'250px'}
        />
      </FormControl>
    </>
  );
}

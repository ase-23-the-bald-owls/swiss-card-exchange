import { Product } from '@/lib/products';
import styles from '../styles/globals.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import { getProduct } from '@/utils/backend-requests';
import {Button, ButtonGroup, Input, InputGroup, InputLeftAddon, Stack, Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr } from '@chakra-ui/react';
import { useState } from 'react';
import TableButton from '@/components/Table/TableButton';



type HomeProps = {
  products: Product[];
};



export async function getServerSideProps() {
  const supabaseServer = createSupabaseServer();
  const { data } = await supabaseServer.from('products').select('*');
  return {
    props: { products: data },
  };
}




export default function Backend({ products }: HomeProps) {

  const editEvent = (currentid:number):void => {
    
      console.log('id selected: ',currentid)
   }

   const deleteEvent = (currentid:number):void => {
    
    console.log('id selected: ',currentid)
 }

  const getProduct = (id:string):void => {
    //TODO: make a request to supabase to get the current selected id an
    
  }

  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        <Stack direction='row' spacing={2} align='center'>
        <InputGroup>
          <InputLeftAddon children="title"/>
          <Input type="text" borderLeftRadius="0" />
        </InputGroup>
        <InputGroup>
          <InputLeftAddon children="rarity"/>
          <Input type="text" borderLeftRadius="0" />
        </InputGroup>
        <ButtonGroup>
          <Button colorScheme="teal" variant="outline">
            Save
          </Button>
        </ButtonGroup>
        </Stack>

        <TableContainer>
          <Table variant='striped' colorScheme='teal' size='sm'>
            <Thead>
              <Tr>
              <Th>ID</Th>
              <Th>Title</Th>
              <Th>Rarity</Th>
              <Th>Added</Th>
              </Tr>
            </Thead>
            <Tbody>
            {products?.map((product) => (
              <Tr key={product.id}>
                <Td>{product.id}</Td>
                <Td>{product.title}</Td>
                <Td>{product.rarity}</Td>
                <Td>{product.created_at}</Td>
                <Td><TableButton onEdit={() => editEvent(product.id)} onDelete={() => deleteEvent(product.id)}/></Td>
              </Tr>
              ))}
            </Tbody>
          <TableCaption>Product Backlog</TableCaption>
          </Table>
        </TableContainer>
      </main>
    </>
  );
}

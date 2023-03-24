import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import {Button, ButtonGroup, Input, InputGroup, InputLeftAddon, Stack, Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr,Text, useDisclosure, Modal, ModalOverlay, ModalContent, ModalHeader, ModalCloseButton, ModalBody, FormControl, FormLabel, ModalFooter, Textarea, Popover, PopoverTrigger, PopoverContent, PopoverArrow, PopoverCloseButton, PopoverHeader, PopoverBody } from '@chakra-ui/react';
import { useState,useRef } from 'react';
import TableButton from '@/components/Table/TableButton';
import { useProducts } from '@/hooks/useProducts';



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
      
      const selected = products.filter((product) => product.id === currentid)
      
      if (selected.length === 0) {

        throw new Error('product not found lol')
      }
      console.log(selected);
          
   }

   const deleteEvent = (currentid:number):void => {
     
      const selected = products.filter((product) => product.id === currentid)
      
      if (selected.length === 0) {

        throw new Error('product not found lol')
      }
      console.log(selected);
      
          
    console.log('id selected: ',currentid)
 }




  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        <Stack direction='row' spacing={5} align='center' justify='space-around'>
          <Button>Add Product</Button>
        </Stack>

        <TableContainer>
          <Table variant='striped' colorScheme='teal' size='sm'>
            <Thead>
              <Tr>
              <Th>ID</Th>
              <Th>Title</Th>
              <Th>Rarity</Th>
              <Th>Description</Th>
              </Tr>
            </Thead>
            <Tbody>
            {products?.map((product) => (
              <Tr key={product.id}>
                <Td>{product.id}</Td>
                <Td>{product.title}</Td>
                <Td>{product.rarity}</Td>
                <Td><Popover>
                  <PopoverTrigger>
                    <Button>Open</Button>
                    </PopoverTrigger>
                    <PopoverContent>
                      <PopoverArrow/>
                      <PopoverCloseButton />
                        <PopoverHeader>Description</PopoverHeader>
                        <PopoverBody display='flex' maxW='sm'>{product.description}</PopoverBody>
                        </PopoverContent>
                        </Popover>
                        </Td>
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

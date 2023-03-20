import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import {Button, ButtonGroup, Input, InputGroup, InputLeftAddon, Stack, Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr,Text, useDisclosure, Modal, ModalOverlay, ModalContent, ModalHeader, ModalCloseButton, ModalBody, FormControl, FormLabel, ModalFooter } from '@chakra-ui/react';
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

  const [editProduct, setEditProduct] = useState<Product | null >(null);
  const [editId, setEditId] = useState<number | null>()
  const [editTitle,setEditTitle] = useState<string>('')
  const [editDesc, setEditDesc] = useState<string>('')
  const { isOpen, onOpen, onClose } = useDisclosure()
  const [deleteProduct,setDeleteProduct] = useState<Product | null>(null);
  const initialRef = useRef(null)
  const finalRef = useRef(null)

  const editEvent = (currentid:number):void => {
    
      console.log('id selected: ',currentid)
      
      const selected = products.filter((product) => product.id === currentid)
      
      if (selected.length === 0) {

        throw new Error('product not found lol')
      }
      console.log(selected);
      
      setEditProduct(selected[0] || null)
      setEditTitle(editProduct?.title || '')
      setEditDesc(editProduct?.description || '')
      setEditId(editProduct?.id)
      
   }

   const handleTitleChange = (title:string) => {
    setEditTitle(title)
    
  }

   const handleDescChange = (currentDesc:string) => {

      setEditDesc(currentDesc)
   }

   const deleteEvent = (currentid:number):void => {
      onOpen()
      const selected = products.filter((product) => product.id === currentid)
      
      if (selected.length === 0) {

        throw new Error('product not found lol')
      }
      console.log(selected);
      
      setDeleteProduct(selected[0] || null)
    
    console.log('id selected: ',currentid)
 }

 
  const handleDeleteConfirm = ():void => {

    console.log(deleteProduct, 'deleted!');
    
    
    onClose()
  }
  const clearEvent =():void => { 
    
    setEditProduct(null)
    setEditTitle('')
    setEditDesc('')
    setEditId(null)
  
  }

  const handleSave = ():void => {
    //deliver a product object
     
  }


  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        <Stack direction='row' spacing={5} align='center'>
        <Text>id: {editId}</Text>
        <InputGroup size='sm'>
          <InputLeftAddon children="title"/>
          <Input type="text" borderLeftRadius="0" value={editTitle} onChange={(event) => handleTitleChange(event.target.value)}/>
          <InputLeftAddon children='description'/>
          <Input type='text' borderLeftRadius='0' value={editDesc} onChange={(event) => handleDescChange(event.target.value)}/>
        </InputGroup>
        <ButtonGroup>
          <Button colorScheme="teal" variant="outline" onClick={() => handleSave()}>
            Save
          </Button>
          <Button colorScheme="teal" variant="outline" onClick={() => clearEvent()}>
            Clear
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

        <Modal initialFocusRef={initialRef} finalFocusRef={finalRef} isOpen={isOpen}onClose={onClose}>
        <ModalOverlay />
        <ModalContent>
          <ModalHeader>Are you sure you want to the delete the following product?</ModalHeader>
          <ModalCloseButton />
          <ModalBody pb={6}>
            <FormControl mt={4}>
              <FormLabel>id: {deleteProduct?.id}</FormLabel>
              <FormLabel>Title: {deleteProduct?.title}</FormLabel>
              <FormLabel>Description: {deleteProduct?.description}</FormLabel>
              <FormLabel>Rarity: {deleteProduct?.rarity}</FormLabel>
            </FormControl>
          </ModalBody>

          <ModalFooter>
            <Button colorScheme='red' mr={3} onClick={()=> handleDeleteConfirm()}>
              Delete
            </Button>
            <Button onClick={onClose}>Cancel</Button>
          </ModalFooter>
        </ModalContent>
      </Modal>
      </main>
    </>
  );
}

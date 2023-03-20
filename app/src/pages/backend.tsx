import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import {Button, ButtonGroup, Input, InputGroup, InputLeftAddon, Stack, Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr } from '@chakra-ui/react';
import { useState } from 'react';
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
  const [editTitle,setEditTitle] = useState<string>('')
  const [editDesc, setEditDesc] = useState<string>('')
  const [editId, setEditId] = useState<number | null>()

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
    
    console.log('id selected: ',currentid)
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
        <Stack direction='row' spacing={2} align='center'>
        <InputGroup size='sm'>
          <InputLeftAddon children="id"/>
          <Input type="text" borderLeftRadius="0" value={editId} isDisabled={true}/>

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
      </main>
    </>
  );
}

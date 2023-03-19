import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import {Button, ButtonGroup, Input, InputGroup, InputLeftAddon, Stack, Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr } from '@chakra-ui/react';


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


  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        
        <Stack direction="row" spacing={2} align="center">
          <Input variant="flushed" placeholder="id" size='sm'/>
          <Button colorScheme="teal" variant="outline">
            Edit
          </Button>
        </Stack>
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
          <Button colorScheme="red" variant="outline">
            Delete
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

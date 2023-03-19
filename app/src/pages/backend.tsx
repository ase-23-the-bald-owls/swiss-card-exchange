import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';
import {Table, TableCaption, TableContainer, Tbody, Td, Th, Thead, Tr } from '@chakra-ui/react';

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

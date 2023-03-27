import TableButton from '@/components/Table/TableButton';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { EditProductRoute } from '@/utils/routes';
import { createSupabaseServer } from '@/utils/supabase-server';
import {
  Button,
  Popover,
  PopoverArrow,
  PopoverBody,
  PopoverCloseButton,
  PopoverContent,
  PopoverHeader,
  PopoverTrigger,
  Stack,
  Table,
  TableCaption,
  TableContainer,
  Tbody,
  Td,
  Text,
  Th,
  Thead,
  Tr,
} from '@chakra-ui/react';
import Link from 'next/link';

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
        <Stack direction="row" spacing={5} align="center" justify="space-around">
          <Link href={EditProductRoute}>
            <Button>Add Product</Button>
          </Link>
        </Stack>

        <TableContainer>
          <Table variant="striped" colorScheme="teal" size="sm">
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
                  <Td>
                    <Popover>
                      <PopoverTrigger>
                        <Button>Open</Button>
                      </PopoverTrigger>
                      <PopoverContent>
                        <PopoverArrow />
                        <PopoverCloseButton />
                        <PopoverHeader>Description</PopoverHeader>
                        <PopoverBody display="flex" maxW="sm">
                          {product.description}
                        </PopoverBody>
                      </PopoverContent>
                    </Popover>
                  </Td>
                  <Td>
                    <TableButton
                      onEdit={() => null}
                      onDelete={() => null}
                      prod={product}
                    />
                  </Td>
                </Tr>
              ))}
            </Tbody>
            <TableCaption>Product Backlog</TableCaption>
          </Table>
        </TableContainer>
        <Text>{JSON.stringify(products[1])}</Text>
      </main>
    </>
  );
}
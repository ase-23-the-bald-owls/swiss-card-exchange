import { Pagination } from '@/components/Pagination';
import TableButton from '@/components/Table/TableButton';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { PaginationProps } from '@/utils/pagination/paginationProps';
import { createPagination } from '@/utils/pagination/serverPagination';
import { EditProductRoute } from '@/utils/routes';
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
  Th,
  Thead,
  Tr,
} from '@chakra-ui/react';
import { GetServerSidePropsContext } from 'next';
import Error from 'next/error';
import Link from 'next/link';

type HomeProps = {
  products: Product[];
  pagination: PaginationProps;
} & ErrorProps;

export async function getServerSideProps(nextContext: GetServerSidePropsContext) {
  const { query } = nextContext;
  const { data, error, paginationProps } = await createPagination({
    entity: 'products',
    query,
    nextContext,
  });
  if (error || !data) {
    console.warn('Error occurred fetching data with supabase, reason: ', error);
    if (!data) {
      return createError(404);
    }
    return createError(500);
  }

  return createSuccess({ products: data, pagination: paginationProps });
}

export default function Backend({ products, pagination, code }: HomeProps) {
  if (code || !products) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }
  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        <Stack direction="row" spacing={5} align="center" justify="space-around">
          <Link href={EditProductRoute}>
            <Button>Add Product</Button>
          </Link>
        </Stack>

        <Pagination {...pagination} />
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
                    <TableButton product={product} />
                  </Td>
                </Tr>
              ))}
            </Tbody>
            <TableCaption>Product Backlog</TableCaption>
          </Table>
        </TableContainer>
        <Pagination {...pagination} />
      </main>
    </>
  );
}

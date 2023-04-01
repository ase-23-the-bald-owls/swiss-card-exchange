import { NavBar } from '@/components/Navigation/NavBar';
import { ProductGrid } from '@/components/ProductGrid/ProductGrid';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { PaginationProps } from '@/utils/pagination/paginationProps';
import { createPagination } from '@/utils/pagination/serverPagination';
import { GetServerSidePropsContext } from 'next';
import Error from 'next/error';

type HomeProps = {
  products: Product[];
  pagination: PaginationProps;
} & ErrorProps;

export async function getServerSideProps({ query }: GetServerSidePropsContext) {
  const { data, error, paginationProps } = await createPagination({
    entity: 'products',
    query,
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

export default function Home({ products, code, pagination }: HomeProps) {
  if (code || !products) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }
  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <ProductGrid products={products} pagination={pagination} />
      </main>
    </>
  );
}

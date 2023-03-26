import { NavBar } from '@/components/Navigation/NavBar';
import { ProductGrid } from '@/components/ProductGrid/ProductGrid';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { createSupabaseServer } from '@/utils/supabase-server';
import Error from 'next/error';

type HomeProps = {
  products: Product[];
} & ErrorProps;

export async function getServerSideProps() {
  const supabaseServer = createSupabaseServer();
  const { data, error } = await supabaseServer.from('products').select('*').limit(30);
  if (error) {
    console.warn('Error occurred fetching data with supabase, reason: ', error);
    return createError(500);
  }
  return createSuccess({ products: data });
}

export default function Home({ products, code }: HomeProps) {
  if (code || !products) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }
  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <ProductGrid products={products} />
      </main>
    </>
  );
}

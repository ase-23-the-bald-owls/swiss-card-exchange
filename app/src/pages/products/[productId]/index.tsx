import { NavBar } from '@/components/Navigation/NavBar';
import { ProductDetailComponent } from '@/components/ProductDetail/ProductDetailComponent';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { createSupabaseServer } from '@/utils/supabase-server';
import { GetServerSidePropsContext } from 'next';
import Error from 'next/error';

type ProductDetailProps = {
  product?: Product;
} & ErrorProps;

export async function getServerSideProps(nextContext: GetServerSidePropsContext) {
  const { params } = nextContext;
  if (!params) {
    return createError(400);
  }
  const productId = params['productId'];
  const supabaseServer = createSupabaseServer(nextContext);
  const { data } = await supabaseServer.from('products').select('*').eq('id', productId);
  if (data === null || data === undefined || !Array.isArray(data)) {
    return createError(500);
  }

  if (data.length === 0) {
    return createError(404);
  }

  return createSuccess({ product: data[0] });
}

export default function ProductDetail({ product, code }: ProductDetailProps) {
  if (code || !product) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }
  return (
    <>
      <NavBar />
      <main className={styles.main}>
        <ProductDetailComponent product={product} />
      </main>
    </>
  );
}

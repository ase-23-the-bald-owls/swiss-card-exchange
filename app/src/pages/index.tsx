import { NavBar } from '@/components/Navigation/NavBar';
import { ProductGrid } from '@/components/ProductGrid/ProductGrid';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';

type HomeProps = {
  products: Product[];
};

export async function getServerSideProps() {
  const supabaseServer = createSupabaseServer();
  const { data } = await supabaseServer.from('products').select('*').limit(30);
  return {
    props: { products: data },
  };
}

export default function Home({ products }: HomeProps) {
  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <ProductGrid products={products} />
      </main>
    </>
  );
}

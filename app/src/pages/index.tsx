import { NavBar } from '@/components/Navigation/NavBar';
import { Product } from '@/lib/products';
import styles from '@/styles/Home.module.css';
import { createSupabaseServer } from '@/utils/supabase-server';

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

export default function Home({ products }: HomeProps) {
  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <h1>Here comes the Swiss Card Exchange</h1>
        <ul>
          {products?.map((product) => (
            <li key={product.id}>{JSON.stringify(product)}</li>
          ))}
        </ul>
      </main>
    </>
  );
}

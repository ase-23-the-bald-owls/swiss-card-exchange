import styles from '@/styles/Home.module.css';
import { Product } from '@/lib/products';
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


export default function Backend({ products }: HomeProps) {
  return (
    <>
      <main className={styles.main} data-testid="index">
        <h1>Product Backend</h1>
        <button>add Product</button>

        <ul>
          {products?.map((product) => (
            <li key={product.id}>{JSON.stringify(product)}</li>
          ))}
        </ul>
      </main>
    </>
  );
}

import { useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import { Database } from '@/lib/database.types';
import { defaultStore } from '@/store/defaultStore';
import {
  addProductInfo,
  getAllItemsAsMap,
  reloadFromStorage,
  removeAllProducts,
} from '@/store/shoppingCartStore';
import { SupabaseClient } from '@supabase/auth-helpers-nextjs';
import { useQuery } from '@tanstack/react-query';
import { ReactNode } from 'react';

type ReinitializeShoppingCartProps = {
  children?: ReactNode;
};

export function ReinitializeShoppingCart({ children }: ReinitializeShoppingCartProps) {
  const supabaseClient = useBrowserSupabase();
  useQuery(['fetchProducts'], async () => reinitializeStore(supabaseClient), {
    retry: 10,
  });

  return <>{children}</>;
}

async function reinitializeStore(supabaseClient: SupabaseClient<Database>) {
  reloadFromStorage();
  const allItemsMap = defaultStore.get(getAllItemsAsMap);
  const allItemsArray = Array.from(allItemsMap);
  const allProductIds = allItemsArray.map(([entry, _]) => entry.product.id);
  const { data: fetchedProducts, error } = await supabaseClient
    .from('products')
    .select('*')
    .in('id', allProductIds);
  if (error || !fetchedProducts || !Array.isArray(fetchedProducts)) {
    throw Error('failed to fetch products');
  }
  const fetchedProductsMap = new Map(
    fetchedProducts.map((product) => [product.id, product])
  );
  for (const [item] of allItemsArray) {
    const fetchedProduct = fetchedProductsMap.get(item.product.id);
    if (fetchedProduct) {
      addProductInfo(fetchedProduct);
    } else {
      removeAllProducts(item.product);
    }
  }
  return fetchedProducts;
}

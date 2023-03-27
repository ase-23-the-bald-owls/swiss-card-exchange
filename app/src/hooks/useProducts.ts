import { useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import { ProductWithId, ProductWithoutId } from '@/lib/products';
import { useQuery, useQueryClient } from '@tanstack/react-query';

const productsQueryKey = ['products'];

export function useProducts() {
  const supabase = useBrowserSupabase();
  const queryClient = useQueryClient();

  const products = useQuery({
    queryKey: productsQueryKey,
    queryFn: async () => await supabase.from('products').select('*'),
  });

  async function createProduct(product: ProductWithoutId) {
    const { data, error } = await supabase.from('products').insert(product).select();
    await queryClient.invalidateQueries(productsQueryKey);
    return { data, error };
  }

  async function updateProduct(product: ProductWithId) {
    const { data, error } = await supabase
      .from('products')
      .update(product)
      .eq('id', product.id)
      .select();
    await queryClient.invalidateQueries(productsQueryKey);
    return { data, error };
  }

  async function deleteProduct(product: ProductWithId) {
    const { error } = await supabase.from('products').delete().eq('id', product.id);
    await queryClient.invalidateQueries(productsQueryKey);
    return { error };
  }

  return {
    products,
    createProduct,
    updateProduct,
    deleteProduct,
  };
}

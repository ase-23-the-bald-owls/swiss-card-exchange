import { Database } from '@/lib/database.types';

export type Product = Database['public']['Tables']['products']['Row'];
export type ProductWithId = Partial<Product> & { id: number };
export type ProductWithoutId = Omit<Partial<Product>, 'id'>;

export function createProduct() {
  const product = {} as Partial<Product>;
  product['id'] = Math.round(Math.random() * 1000);
  return product as Product;
}

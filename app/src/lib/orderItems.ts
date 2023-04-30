import { Database } from '@/lib/database.types';
import { Product } from '@/lib/products';

export type OrderItem = Database['public']['Tables']['orderitem']['Row'];
export type OrderItemWithId = Partial<OrderItem> & { id: number };
export type OrderItemWithoutId = Omit<Partial<OrderItem>, 'id'>;

export type OrderItemWithProduct = OrderItem & {
  product: Product;
};

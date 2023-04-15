import { Database } from '@/lib/database.types';

export type OrderItem = Database['public']['Tables']['orderitem']['Row'];
export type OrderItemWithId = Partial<OrderItem> & { id: number };
export type OrderItemWithoutId = Omit<Partial<OrderItem>, 'id'>;

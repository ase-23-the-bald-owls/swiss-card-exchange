import { Database } from '@/lib/database.types';


export type Orders = Database['public']['Tables']['orders']['Row'];
export type OrdersWithId = Partial<Orders> & { id: number };
export type OrdersWithoutID = Omit<Partial<Orders>, 'id'>;

export function getProducts() {





}

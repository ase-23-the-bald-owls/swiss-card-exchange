import { Database } from '@/lib/database.types';

export type Order = Database['public']['Tables']['orders']['Row'];
export type OrderWithId = Partial<Order> & { id: number };
export type OrderWithoutId = Omit<Partial<Order>, 'id'>;

export enum OrderState {
  ORDERED = 'ordered',
  PAYED = 'payed',
  SHIPPED = 'shipped',
  CANCELED = 'canceled',
}

import { CustomerWithAddresses } from '@/lib/customers';
import { Database } from '@/lib/database.types';
import { OrderItemWithProduct } from '@/lib/orderItems';

export type Order = Database['public']['Tables']['orders']['Row'];
export type OrderWithId = Partial<Order> & { id: number };
export type OrderWithoutId = Omit<Partial<Order>, 'id'>;

export type OrderWithCustomerAndItems = Order & {
  orderitems: OrderItemWithProduct[];
  customer: CustomerWithAddresses;
};

export enum OrderState {
  ORDERED = 'ordered',
  PAYED = 'payed',
  SHIPPED = 'shipped',
  CANCELED = 'canceled',
}

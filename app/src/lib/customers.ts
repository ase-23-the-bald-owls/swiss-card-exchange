import { Address } from '@/lib/addresses';
import { Database } from '@/lib/database.types';

export type Customer = Database['public']['Tables']['customer']['Row'];
export type CustomerWithId = Omit<Customer, 'creator_expiry_time'>;
export type CustomerWithoutId = Omit<Customer, 'id' | 'creator_expiry_time'>;

export type CustomerWithAddresses = Customer & {
  billing_address: Address;
  shipping_address: Address;
};

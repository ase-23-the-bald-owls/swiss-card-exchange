import { Database } from '@/lib/database.types';

export type Customer = Database['public']['Tables']['customer']['Row'];
export type CustomerWithId = Customer;
export type CustomerWithoutId = Omit<Customer, 'id'>;

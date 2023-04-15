import { Database } from '@/lib/database.types';

export type Customer = Database['public']['Tables']['customer']['Row'];
export type CustomerWithId = Partial<Customer> & { id: number };
export type CustomerWithoutId = Omit<Partial<Customer>, 'id'>;

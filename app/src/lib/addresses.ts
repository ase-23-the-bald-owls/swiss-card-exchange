import { Database } from '@/lib/database.types';

export type Address = Database['public']['Tables']['addresses']['Row'];
export type AddressWithId = Address;
export type AddressWithoutId = Omit<Address, 'id'>;

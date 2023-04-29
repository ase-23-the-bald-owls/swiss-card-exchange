import { Database } from '@/lib/database.types';

export type Address = Database['public']['Tables']['addresses']['Row'];
export type AddressWithId = Omit<Address, 'creator_expiry_time'>;
export type AddressWithoutId = Omit<Address, 'id' | 'creator_expiry_time'>;

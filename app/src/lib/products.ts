import { Database } from '@/lib/database.types';

export type Product = Database['public']['Tables']['products']['Row'];
export type ProductWithId = Partial<Product> & { id: number };
export type ProductWithoutId = Omit<Partial<Product>, 'id'>;

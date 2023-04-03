import { Database } from '@/lib/database.types';

export type AllEntities = keyof Database['public']['Tables'];

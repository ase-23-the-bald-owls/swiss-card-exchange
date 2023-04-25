/* eslint-disable @typescript-eslint/no-unused-vars */
import { Database } from '@/lib/database.types';
import { createServerSupabaseClient } from '@supabase/auth-helpers-nextjs';
import { GetServerSidePropsContext } from 'next';

export const createSupabaseServer = (nextContext: GetServerSidePropsContext) =>
  createServerSupabaseClient<Database>(nextContext);

export type SupabaseServerType = ReturnType<typeof createSupabaseServer>;

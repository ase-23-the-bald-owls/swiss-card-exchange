'use client';

import { Database } from '@/lib/database.types';
import { createBrowserSupabaseClient } from '@supabase/auth-helpers-nextjs';

// store as const here that they don't get inlined at build time
const runtimeEnv = process.env;
export const createSupabaseBrowser = () =>
  createBrowserSupabaseClient<Database>({
    supabaseUrl: runtimeEnv.NEXT_PUBLIC_SUPABASE_URL,
    supabaseKey: runtimeEnv.NEXT_PUBLIC_SUPABASE_ANON_KEY,
  });

/* eslint-disable @typescript-eslint/no-unused-vars */
// noinspection JSUnusedLocalSymbols

/* istanbul ignore file */
import { Database } from '@/lib/database.types';
import { createMiddlewareSupabaseClient } from '@supabase/auth-helpers-nextjs';
import type { NextRequest } from 'next/server';
import { NextResponse } from 'next/server';

export async function middleware(req: NextRequest) {
  const res = NextResponse.next();

  const supabase = createMiddlewareSupabaseClient<Database>({ req, res });

  const {
    data: { session },
  } = await supabase.auth.getSession();

  return res;
}

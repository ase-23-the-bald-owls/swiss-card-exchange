'use client';

// noinspection ES6PreferShortImport
import { Database } from '../lib/database.types';
import { createBrowserSupabaseClient } from '@supabase/auth-helpers-nextjs';

export const createSupabaseBrowser = () => createBrowserSupabaseClient<Database>();

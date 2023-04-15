'use client';

import type { Database } from '@/lib/database.types';
import { createSupabaseBrowser } from '@/utils/supabase-browser';
import type { SupabaseClient } from '@supabase/auth-helpers-nextjs';
import { PostgrestError } from '@supabase/supabase-js';
import { createContext, useContext, useMemo, useState } from 'react';

type SupabaseContext = {
  supabase: SupabaseClient<Database>;
};

const Context = createContext<SupabaseContext | undefined>(undefined);

export function SupabaseProvider({ children }: { children: React.ReactNode }) {
  const [supabase] = useState(() => createSupabaseBrowser());
  const supabaseObj = useMemo(
    () => ({
      supabase,
    }),
    [supabase]
  );

  return (
    <Context.Provider value={supabaseObj}>
      <>{children}</>
    </Context.Provider>
  );
}

export const useBrowserSupabase = () => {
  const context = useContext(Context);
  if (context === undefined) {
    throw new Error('useSupabase must be used inside SupabaseProvider');
  } else {
    return context.supabase;
  }
};

export function throwIfSupabaseFailed(
  error:
    | null
    | PostgrestError
    | {
        message: string | undefined;
        details: string | undefined;
        hint: string | undefined;
        code: string | undefined;
      },
  data: unknown,
  entityName: string
) {
  if (error || !data) {
    const message = error?.message ?? `operation on ${entityName} failed`;
    throw Error(message);
  }
}

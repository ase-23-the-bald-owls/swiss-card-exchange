// eslint-disable-next-line @typescript-eslint/ban-ts-comment
// @ts-ignore
import { SupabaseClient } from '@supabase/auth-helpers-nextjs';
import { Session } from '@supabase/supabase-js';

export function createFakeInitialSession(): Session {
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  return { user: { email: 'bla' } };
}

export function createFakeSupabaseClient(
  initialSession = createFakeInitialSession()
): SupabaseClient {
  return {
    auth: {
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      onAuthStateChange: function () {
        return {
          data: {
            subscription: {
              unsubscribe: () => ({}),
            },
          },
        };
      },
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      // @ts-ignore
      getSession: async function () {
        return {
          data: {
            session: initialSession,
          },
        };
      },
    },
  };
}

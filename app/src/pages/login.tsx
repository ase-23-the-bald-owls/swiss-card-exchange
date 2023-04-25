import { NavBar } from '@/components/Navigation/NavBar';
import { useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import styles from '@/styles/Home.module.css';
import { createSuccess } from '@/utils/createServerSideProps';
import { parseRedirectUrl } from '@/utils/parseRedirectUrl';
import { HomeRoute } from '@/utils/routes';
import { createServerSupabaseClient } from '@supabase/auth-helpers-nextjs';
import { useUser } from '@supabase/auth-helpers-react';
import { Auth } from '@supabase/auth-ui-react';
import { ThemeSupa } from '@supabase/auth-ui-shared';
import { GetServerSidePropsContext } from 'next';
import { useRouter } from 'next/router';
import { useEffect } from 'react';

type LoginProps = {
  redirectUrl: string;
};

export async function getServerSideProps(nextContext: GetServerSidePropsContext) {
  const { query } = nextContext;
  const redirectUrl = parseRedirectUrl(query);
  const supabase = createServerSupabaseClient(nextContext);
  const {
    data: { session },
  } = await supabase.auth.getSession();

  const redirectTo = redirectUrl ?? HomeRoute;
  if (session) {
    return {
      redirect: {
        destination: redirectTo,
        permanent: false,
      },
    };
  }
  return createSuccess({ redirectUrl: redirectTo });
}

export default function Login({ redirectUrl }: LoginProps) {
  const supabaseClient = useBrowserSupabase();
  const theme = { ...ThemeSupa };
  const user = useUser();
  const router = useRouter();

  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  theme.default.colors.inputText = 'white';

  useEffect(() => {
    if (user) {
      router.push(redirectUrl);
    }
  }, [user, router, redirectUrl]);

  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <Auth
          appearance={{
            theme,
          }}
          supabaseClient={supabaseClient}
          providers={[]}
        />
      </main>
    </>
  );
}

import { NavBar } from '@/components/Navigation/NavBar';
import { useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import styles from '@/styles/Home.module.css';
import { createSuccess } from '@/utils/createServerSideProps';
import { HomeRoute, LoginRoute } from '@/utils/routes';
import { Button, Flex, Heading } from '@chakra-ui/react';
import { createServerSupabaseClient } from '@supabase/auth-helpers-nextjs';
import { User } from '@supabase/auth-helpers-react';
import { GetServerSidePropsContext } from 'next';
import { useRouter } from 'next/router';
import * as querystring from 'querystring';

type ProfileProps = {
  user: User;
};

export async function getServerSideProps(nextContext: GetServerSidePropsContext) {
  const supabase = createServerSupabaseClient(nextContext);
  const {
    data: { session },
  } = await supabase.auth.getSession();

  if (!session) {
    return {
      redirect: {
        destination:
          LoginRoute +
          '?' +
          querystring.stringify({ redirectUrl: nextContext.resolvedUrl }),
        permanent: false,
      },
    };
  }
  return createSuccess({ user: session.user });
}

export default function Profile({ user }: ProfileProps) {
  const supabaseClient = useBrowserSupabase();
  const router = useRouter();

  const logout = async () => {
    await supabaseClient.auth.signOut();
    await router.push(HomeRoute);
  };

  return (
    <>
      <NavBar />
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'}>
          <Heading>Profile of: {user.email}</Heading>
          <Button variant={'solid'} colorScheme="blue" onClick={logout}>
            Logout
          </Button>
        </Flex>
      </main>
    </>
  );
}

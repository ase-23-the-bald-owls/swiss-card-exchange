import { NavBar } from '@/components/Navigation/NavBar';
import { Pagination } from '@/components/Pagination';
import { OrderCard } from '@/components/Profile/OrderCard';
import { useBrowserSupabase } from '@/hooks/useSupabaseBrowser';
import { OrderWithCustomerAndItems } from '@/lib/orders';
import styles from '@/styles/Home.module.css';
import { ErrorProps } from '@/utils/ErrorProps';
import { createError, createSuccess } from '@/utils/createServerSideProps';
import { PaginationProps } from '@/utils/pagination/paginationProps';
import { FetchProps, createPagination } from '@/utils/pagination/serverPagination';
import { HomeRoute, LoginRoute } from '@/utils/routes';
import {
  Accordion,
  AccordionButton,
  AccordionIcon,
  AccordionItem,
  AccordionPanel,
  Box,
  Button,
  Flex,
  Heading,
  Spacer,
} from '@chakra-ui/react';
import { createServerSupabaseClient } from '@supabase/auth-helpers-nextjs';
import { User } from '@supabase/auth-helpers-react';
import { GetServerSidePropsContext } from 'next';
import Error from 'next/error';
import { useRouter } from 'next/router';
import * as querystring from 'querystring';

type ProfileProps = {
  user: User;
  orders: OrderWithCustomerAndItems[];
  pagination: PaginationProps;
} & ErrorProps;

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

  const { query } = nextContext;

  const { data, error, paginationProps } = await createPagination({
    entity: 'orders',
    query,
    nextContext,
    fetchPromise: fetchOrdersPaginated,
  });
  if (error || !data) {
    console.warn('Error occurred fetching data with supabase, reason: ', error);
    if (!data) {
      return createError(404);
    }
    return createError(500);
  }

  return createSuccess({ user: session.user, orders: data, pagination: paginationProps });
}

export default function Profile({ user, orders, pagination, code }: ProfileProps) {
  const supabaseClient = useBrowserSupabase();
  const router = useRouter();

  if (code || !Array.isArray(orders)) {
    const statusCode = code ?? 404;
    return <Error statusCode={statusCode}></Error>;
  }

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
          <Spacer minHeight={'50px'} />
          <Accordion allowToggle>
            <AccordionItem>
              <h2>
                <AccordionButton>
                  <Box as="span" flex="1" textAlign="left">
                    Orders
                  </Box>
                  <AccordionIcon />
                </AccordionButton>
              </h2>
              <AccordionPanel pb={4}>
                <Pagination {...pagination}></Pagination>
                {orders.map((order) => (
                  <OrderCard order={order} key={order.id} />
                ))}
                <Pagination {...pagination}></Pagination>
              </AccordionPanel>
            </AccordionItem>
          </Accordion>
          <Spacer minHeight={'50px'} />
          <Button variant={'solid'} colorScheme="blue" onClick={logout}>
            Logout
          </Button>
        </Flex>
      </main>
    </>
  );
}

async function fetchOrdersPaginated(param: FetchProps<'orders'>) {
  const { entity, pageNumber, pageSize, supabaseServer } = param;
  const { data: supabaseResult, error } = await supabaseServer
    .from('orders')
    .select(
      `*, 
        orderitems:orderitem!left(
            *, 
            product:products!left(*)
        ),
        customer!left(
            *,
            billing_address:addresses!customer_billing_address_id_fkey(*),
            shipping_address:addresses!customer_shipping_address_id_fkey(*)
        )`
    )
    .range(pageNumber * pageSize, (pageNumber + 1) * pageSize - 1);
  if (error || !supabaseResult) {
    return { error: error ?? `fetch of ${entity} failed` };
  }
  // supabase does not type the result nicely, so we cast it
  const castedData = supabaseResult as unknown as OrderWithCustomerAndItems[];
  return { data: castedData };
}

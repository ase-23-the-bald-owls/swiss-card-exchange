import Logo from './Logo';
import { NavBarContainer } from './NavBarContainer';
import { ShoppingCartIcon } from './ShoppingCartIcon';
import { LoginRoute, ProfileRoute } from '@/utils/routes';
import { Avatar, Button, HStack, Spacer } from '@chakra-ui/react';
import { useUser } from '@supabase/auth-helpers-react';
import Link from 'next/link';
import React from 'react';

export function NavBar() {
  const user = useUser();

  return (
    <NavBarContainer>
      <Logo style={{ alignSelf: 'start' }} />
      <HStack>
        <ShoppingCartIcon style={{ alignSelf: 'center' }} />
        <Spacer w={'1'}></Spacer>
        {user && (
          <Link href={ProfileRoute}>
            <Avatar
              size={'lg'}
              name={user.email}
              bg={'teal.500'}
              data-cy={'user-avatar'}
            />
          </Link>
        )}
        {!user && (
          <Link href={LoginRoute}>
            <Button variant={'solid'} colorScheme="blue">
              Login
            </Button>
          </Link>
        )}
      </HStack>
    </NavBarContainer>
  );
}

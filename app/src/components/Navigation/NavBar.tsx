import Logo from './Logo';
import { NavBarContainer } from './NavBarContainer';
import { ShoppingCart } from './ShoppingCart';
import { Avatar, HStack, Spacer } from '@chakra-ui/react';
import React from 'react';

export function NavBar() {
  return (
    <NavBarContainer>
      <Logo style={{ alignSelf: 'start' }} />
      <HStack>
        <ShoppingCart style={{ alignSelf: 'center' }} />
        <Spacer w={'1'}></Spacer>
        <Avatar
          size={'lg'}
          name="Kola Tioluwani"
          bg={'teal.500'}
          data-cy={'user-avatar'}
        />
      </HStack>
    </NavBarContainer>
  );
}

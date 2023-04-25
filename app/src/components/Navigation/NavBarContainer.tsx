import { styles } from './styles';
import { HStack, useColorModeValue } from '@chakra-ui/react';
import React from 'react';

type NavBarContainerProps = {
  children: JSX.Element[];
};

export function NavBarContainer({ children }: NavBarContainerProps) {
  const navbarStyles = styles.navbar;
  return (
    <HStack
      as="nav"
      align="center"
      justify="space-between"
      w="100%"
      style={{
        minHeight: navbarStyles.maxHeight,
        padding: navbarStyles.navbarPadding,
      }}
      bg={useColorModeValue('gray.900', 'gray.900')}
    >
      {children}
    </HStack>
  );
}

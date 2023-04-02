// noinspection ES6PreferShortImport
import { numberOfProducts } from '../../store/shoppingCart';
import { Avatar, AvatarBadge, Text } from '@chakra-ui/react';
import { CartShopping } from '@styled-icons/fa-solid';
import { useAtom } from 'jotai/react';
import React, { CSSProperties } from 'react';

type ShoppingCartProperties = {
  style?: CSSProperties;
};
export function ShoppingCart({ style = {} }: ShoppingCartProperties) {
  const [numberOfProductsValue] = useAtom(numberOfProducts);
  const showMaxOf9 = numberOfProductsValue >= 9 ? '9+' : numberOfProductsValue;
  return (
    <Avatar
      style={{ backgroundColor: 'rgba(0, 0, 0, 0)' }}
      icon={<CartShopping style={style} width={40} height={40} />}
    >
      <AvatarBadge boxSize={'1.5em'} bg={'blue.500'} data-cy={'shopping-cart-badge'}>
        <Text fontSize={'sm'}>{showMaxOf9}</Text>
      </AvatarBadge>
    </Avatar>
  );
}

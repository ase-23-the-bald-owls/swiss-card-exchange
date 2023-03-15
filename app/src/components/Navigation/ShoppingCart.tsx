import { CartShopping } from '@styled-icons/fa-solid';
import React, { CSSProperties } from 'react';

type ShoppingCartProperties = {
  style?: CSSProperties;
};
export function ShoppingCart({ style = {} }: ShoppingCartProperties) {
  return <CartShopping style={style} width={40} height={40} />;
}

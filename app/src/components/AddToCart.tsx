// noinspection ES6PreferShortImport
import { ProductWithId } from '../lib/products';
// noinspection ES6PreferShortImport
import { addProduct } from '../store/shoppingCartStore';
import { Button } from '@chakra-ui/react';
import React from 'react';

type AddToCartProps = {
  product: ProductWithId;
};

export function AddToCart({ product }: AddToCartProps) {
  return (
    <Button
      onClick={(_) => addProduct(product)}
      variant="solid"
      colorScheme="blue"
      data-cy={'add-to-cart-button'}
    >
      Add to cart
    </Button>
  );
}

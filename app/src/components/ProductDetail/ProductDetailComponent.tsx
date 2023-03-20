// noinspection ES6PreferShortImport
import noImage from '../../assets/no-image.png';
// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
import { Price } from '../Price';
import { Card, CardBody, CardFooter } from '@chakra-ui/card';
import { Button, ButtonGroup, Divider, Heading, Stack, Text } from '@chakra-ui/react';
import Image from 'next/image';
import React from 'react';

type ProductDetailComponentProps = {
  product: Product;
};

export function ProductDetailComponent({ product }: ProductDetailComponentProps) {
  return (
    <Card maxW="max" data-cy={'product-detail'}>
      <CardBody>
        <Image
          src={noImage}
          alt={`Image of ${product.title}`}
          style={{ margin: 'auto' }}
        />
        <Stack mt="6" spacing="3">
          <Heading size="md">{product.title}</Heading>
          <Text>{product.description}</Text>
          <Price price={5} />
        </Stack>
      </CardBody>
      <Divider />
      <CardFooter>
        <ButtonGroup spacing="2">
          <Button variant="ghost" colorScheme="blue">
            Add to cart
          </Button>
        </ButtonGroup>
      </CardFooter>
    </Card>
  );
}

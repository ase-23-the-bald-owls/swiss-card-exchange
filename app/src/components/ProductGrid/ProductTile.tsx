// noinspection ES6PreferShortImport
import noImage from '../../assets/no-image.png';
// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
import { Card, CardBody, CardFooter } from '@chakra-ui/card';
import { Button, ButtonGroup, Divider, Heading, Stack, Text } from '@chakra-ui/react';
import Image from 'next/image';
import React from 'react';

type ProductTileProps = {
  product: Product;
};

export function ProductTile({ product }: ProductTileProps) {
  return (
    <Card maxW="sm" data-cy={'product-tile'}>
      <CardBody>
        <Image src={noImage} alt={`Image of ${product.title}`} />
        <Stack mt="6" spacing="3">
          <Heading size="md">{product.title}</Heading>
          <Text>{product.description}</Text>
          <Text color="blue.600" fontSize="2xl">
            CHF 5.00
          </Text>
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

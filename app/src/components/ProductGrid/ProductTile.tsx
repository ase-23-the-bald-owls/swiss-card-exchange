// noinspection ES6PreferShortImport
import noImage from '../../assets/no-image.png';
// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
// noinspection ES6PreferShortImport
import { ProductDetailsRoute } from '../../utils/routes';
import { Price } from '../Price';
import { CardRarityLabel } from '@/components/CardRarityLabel';
import { Card, CardBody, CardFooter } from '@chakra-ui/card';
import { InfoOutlineIcon } from '@chakra-ui/icons';
import { Button, ButtonGroup, Divider, Heading, Stack, Text } from '@chakra-ui/react';
import Image from 'next/image';
import Link from 'next/link';
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
          <Price price={5} />
        </Stack>
        <CardRarityLabel rarity={product.rarity} />
      </CardBody>
      <Divider />
      <CardFooter>
        <ButtonGroup spacing="2">
          <Button variant="solid" colorScheme="blue">
            Add to cart
          </Button>
          <Link href={`${ProductDetailsRoute}/${product.id}`}>
            <Button variant="ghost" colorScheme="blue" rightIcon={<InfoOutlineIcon />}>
              Details
            </Button>
          </Link>
        </ButtonGroup>
      </CardFooter>
    </Card>
  );
}

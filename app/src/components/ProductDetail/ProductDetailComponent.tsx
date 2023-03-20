// noinspection ES6PreferShortImport
import noImage from '../../assets/no-image.png';
// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
import { Price } from '../Price';
import { Card, CardBody, CardFooter } from '@chakra-ui/card';
import {
  Box,
  Button,
  ButtonGroup,
  Divider,
  Grid,
  HStack,
  Heading,
  Spacer,
  Text,
  VStack,
} from '@chakra-ui/react';
import Image from 'next/image';
import React from 'react';

type CenterBoxProps = {
  children: React.ReactNode;
};

function CenterBox({ children }: CenterBoxProps) {
  return (
    <HStack align={'space-around'}>
      <Box style={{ maxWidth: '800px' }}>{children}</Box>
    </HStack>
  );
}

type ProductDetailComponentProps = {
  product: Product;
};

export function ProductDetailComponent({ product }: ProductDetailComponentProps) {
  return (
    <CenterBox>
      <Card maxW="max" data-cy={'product-detail'}>
        <CardBody>
          <VStack>
            <Image
              src={noImage}
              alt={`Image of ${product.title}`}
              style={{ margin: 'auto' }}
            />
            <Heading size="md">{product.title}</Heading>
            <Text>{product.description}</Text>
            <Spacer />
            <Grid templateColumns="2fr 1fr" minWidth={{ base: '80%', md: '50%' }}>
              <Heading size="sm">Card Type</Heading>
              <Text>{product.card_type}</Text>
              <Heading size="sm">Set</Heading>
              <Text>{product.set}</Text>
              <Heading size="sm">Types</Heading>
              <Text>{product.types}</Text>
              <Heading size="sm">Rarity</Heading>
              <Text>{product.rarity}</Text>
            </Grid>
            <Spacer />
            <Price price={5} />
          </VStack>
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
    </CenterBox>
  );
}

// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
import { ProductTile } from '@/components/ProductGrid/ProductTile';
import { SimpleGrid } from '@chakra-ui/react';

type ProductGridProps = {
  products: Product[];
};

export function ProductGrid({ products }: ProductGridProps) {
  return (
    <SimpleGrid
      minChildWidth="300px"
      gap={30}
      style={{ gridAutoRows: '1fr' }}
      w={{ base: '100%', lg: '80%' }}
    >
      {products.map((product) => (
        <ProductTile key={product.id} product={product}></ProductTile>
      ))}
    </SimpleGrid>
  );
}

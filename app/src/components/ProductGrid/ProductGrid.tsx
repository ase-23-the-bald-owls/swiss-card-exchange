// noinspection ES6PreferShortImport
// noinspection ES6PreferShortImport
import { Product } from '../../lib/products';
import { PaginationProps } from '../../utils/pagination/paginationProps';
import { Pagination } from '../Pagination';
import { ProductTile } from './ProductTile';
import { SimpleGrid } from '@chakra-ui/react';

type ProductGridProps = {
  products: Product[];
  pagination: PaginationProps;
};

export function ProductGrid({ products, pagination }: ProductGridProps) {
  return (
    <>
      <Pagination {...pagination}></Pagination>
      <SimpleGrid
        minChildWidth="300px"
        gap={30}
        style={{ gridAutoRows: '1fr' }}
        w={{ base: '100%', lg: '80%' }}
      >
        {products?.map((product) => (
          <ProductTile key={product.id} product={product}></ProductTile>
        ))}
      </SimpleGrid>
      <Pagination {...pagination}></Pagination>
    </>
  );
}

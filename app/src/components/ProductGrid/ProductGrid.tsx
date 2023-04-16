import { ProductTile } from './ProductTile';
import { Pagination } from '@/components/Pagination';
import { Product } from '@/lib/products';
import { PaginationProps } from '@/utils/pagination/paginationProps';
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

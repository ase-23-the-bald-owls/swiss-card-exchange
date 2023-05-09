import { useProducts } from '@/hooks/useProducts';
import { Product } from '@/lib/products';
import { EditProductRoute } from '@/utils/routes';
import { Button, ButtonGroup } from '@chakra-ui/react';
import Link from 'next/link';
import { useRouter } from 'next/router';

type TableButtonProps = {
  product: Product;
};

export default function TableButton({ product }: TableButtonProps) {
  const { deleteProduct } = useProducts();
  const router = useRouter();

  return (
    <>
      <ButtonGroup size="sm">
        <Link href={`${EditProductRoute}/${product.id}`} rel="noopener noreferrer">
          <Button colorScheme="teal" variant="outline">
            Edit
          </Button>
        </Link>

        <Button
          colorScheme="red"
          variant="outline"
          onClick={async () => {
            await deleteProduct(product);
            router.reload();
          }}
        >
          Delete{' '}
        </Button>
      </ButtonGroup>
    </>
  );
}

import { useProducts } from '@/hooks/useProducts';
import { Alert } from '@chakra-ui/alert';
import { Button } from '@chakra-ui/react';

export default function TestSupabaseClient() {
  const { products, createProduct, updateProduct, deleteProduct } = useProducts();

  if (products.error) {
    return <Alert>An error occurred: ${JSON.stringify(products.error)}</Alert>;
  }

  if (!products.data) {
    return <Alert>Loading</Alert>;
  }

  const data = products.data.data;
  if (!data) {
    return <Alert>Loading</Alert>;
  }
  const productToModify = {
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    attributes: 'test',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    card_type: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    created_at: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    inserted_at: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    rarity: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    set: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    types: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    description: 'asdf',
    // eslint-disable-next-line @typescript-eslint/ban-ts-comment
    // @ts-ignore
    id: -1,
    ...data[0],
    title: Date() + '',
  };
  const productToCreate = {
    ...productToModify,
    id: getRandomIntInclusive(5000, 1_000_000),
  };

  return (
    <>
      <div>Currently we have {data?.length} products</div>
      <Button onClick={() => createProduct(productToCreate)}>Create product</Button>
      <Button onClick={() => updateProduct(productToModify)}>Update product</Button>
      <Button onClick={() => deleteProduct(productToModify)}>Delete product</Button>
    </>
  );
}

function getRandomIntInclusive(min: number, max: number) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min); // The maximum is inclusive and the minimum is inclusive
}

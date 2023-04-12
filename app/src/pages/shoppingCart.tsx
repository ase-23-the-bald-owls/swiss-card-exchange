import { NavBar } from '@/components/Navigation/NavBar';
import { ShoppingCartItemCard } from '@/components/ShoppingCartOverview/ShoppingCartItemCard';
import { ShoppingCartTotalPrice } from '@/components/ShoppingCartOverview/ShoppingCartTotalPrice';
import { getAllItemsAsMap } from '@/store/shoppingCartStore';
import styles from '@/styles/Home.module.css';
import { Flex, Heading, Spacer, Text } from '@chakra-ui/react';
import { useAtom } from 'jotai/react';

export default function ShoppingCartPage() {
  const [shoppingCartLineItems] = useAtom(getAllItemsAsMap);

  const shoppingCartEmpty = shoppingCartLineItems.size === 0;
  return (
    <>
      <NavBar></NavBar>
      <main className={styles.main} data-testid="index">
        <Flex direction={'column'} minWidth={{ base: '90%', lg: '70%' }}>
          <Heading alignSelf={'center'}>Shopping Cart</Heading>
          <Spacer minHeight={{ base: '50px' }} />
          {!shoppingCartEmpty && (
            <Flex>
              <ShoppingCartTotalPrice
                marginLeft={'auto'}
                data-cy={'shopping-cart-overview-total-price'}
              />
            </Flex>
          )}
          {shoppingCartEmpty && (
            <Text marginLeft={'auto'} marginRight={'auto'}>
              No items in shopping cart.
            </Text>
          )}
          {Array.from(shoppingCartLineItems).map(([entry, entryAtom]) => (
            <ShoppingCartItemCard
              key={entry.product.id}
              item={entryAtom}
              style={{ margin: '20px 0 20px 0' }}
            ></ShoppingCartItemCard>
          ))}
          <Spacer minHeight={{ base: '10px' }} />
          {!shoppingCartEmpty && (
            <Flex>
              <ShoppingCartTotalPrice
                marginLeft={'auto'}
                data-cy={'shopping-cart-overview-total-price'}
              />
            </Flex>
          )}
        </Flex>
      </main>
    </>
  );
}

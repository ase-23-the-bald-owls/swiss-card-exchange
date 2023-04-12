// noinspection ES6PreferShortImport
import { WriteableLineItemAtom } from '../../store/shoppingCartStore';
import { Price } from '../Price';
import { isInput } from '@/utils/parsers';
import { Card, CardBody } from '@chakra-ui/card';
import {
  Flex,
  Heading,
  NumberDecrementStepper,
  NumberIncrementStepper,
  NumberInput,
  NumberInputField,
  NumberInputStepper,
  Spinner,
} from '@chakra-ui/react';
import { useAtom } from 'jotai/react';
import { CSSProperties } from 'react';
import { z } from 'zod';

type ShoppingCartItemCardProps = {
  item: WriteableLineItemAtom;
  style?: CSSProperties;
};

const requiredProperties = z.object({
  product: z.object({
    title: z.string(),
    price: z.number(),
  }),
  numberOfProducts: z.number(),
});

const elementMargin = '20px 0 20px 0';

export function ShoppingCartItemCard({ item, style }: ShoppingCartItemCardProps) {
  const [itemValue, setItemValue] = useAtom(item);
  if (!isInput(itemValue).forSchema(requiredProperties).valid) {
    return (
      <Card style={style}>
        <Spinner />
      </Card>
    );
  }

  const validItem = requiredProperties.parse(itemValue);
  const rowPrice = itemValue.numberOfProducts * validItem.product.price;

  const updateNumberOfItems = (_: never, newNumber: number) => {
    if (z.number().int().min(0).safeParse(newNumber).success) {
      setItemValue({ ...itemValue, numberOfProducts: newNumber });
    }
  };

  return (
    <Card style={style} data-cy={'shopping-card-item-card'}>
      <CardBody>
        <Flex style={{ justifyContent: 'space-between' }} wrap={'wrap'}>
          <Heading
            size={'lg'}
            minWidth={{ base: '80%', md: '50%', lg: '40%' }}
            margin={elementMargin}
          >
            {itemValue.product.title}
          </Heading>
          <NumberInput
            value={validItem.numberOfProducts}
            onChange={updateNumberOfItems}
            min={0}
            step={1}
            margin={elementMargin}
          >
            <NumberInputField data-cy={'shopping-card-item-number-input'} />
            <NumberInputStepper>
              <NumberIncrementStepper data-cy={'shopping-card-item-number-increment'} />
              <NumberDecrementStepper data-cy={'shopping-card-item-number-decrement'} />
            </NumberInputStepper>
          </NumberInput>
          <Flex margin={elementMargin} minWidth={{ base: '30%', md: '40%' }}>
            <Price price={rowPrice} marginLeft={'auto'} />
          </Flex>
        </Flex>
      </CardBody>
    </Card>
  );
}

// noinspection ES6PreferShortImport
import { ProductWithId } from '../lib/products';
import { defaultStore } from './defaultStore';
import { WritableAtom, atom } from 'jotai';

type ItemLine = {
  product: ProductWithId;
  numberOfProducts: number;
};

type WriteableLineItemAtom = WritableAtom<ItemLine, [newItem: ItemLine], void>;

const allItemLines = atom<WriteableLineItemAtom[]>([]);

export const getAllItemLines = atom<WriteableLineItemAtom[]>((get) => get(allItemLines));

export const numberOfProducts = atom((get) =>
  get(allItemLines)
    .map((itemLine) => get(itemLine))
    .map((value) => value.numberOfProducts)
    .reduce((acc, value) => acc + value, 0)
);

export function addProduct(product: ProductWithId) {
  const allItems = defaultStore.get(allItemLines);
  const itemToUpdate = allItems.find(
    (value) => defaultStore.get(value).product.id === product.id
  );

  if (!itemToUpdate) {
    const itemLine = createItemLineFor(product);
    defaultStore.set(allItemLines, [...allItems, itemLine]);
    return;
  }
  const existingItem = defaultStore.get(itemToUpdate);

  defaultStore.set(itemToUpdate, {
    ...existingItem,
    numberOfProducts: existingItem.numberOfProducts + 1,
  });
}

export function removeProduct(productToRemove: ProductWithId) {
  const allItems = defaultStore.get(allItemLines);
  const itemToRemove = allItems.find(
    (value) => defaultStore.get(value).product.id === productToRemove.id
  );

  if (!itemToRemove) {
    return;
  }
  const existingItem = defaultStore.get(itemToRemove);
  if (existingItem.numberOfProducts <= 1) {
    const newItemList = allItems.filter(
      (value) => defaultStore.get(value).product.id !== productToRemove.id
    );
    defaultStore.set(allItemLines, newItemList);
    return;
  }
  defaultStore.set(itemToRemove, {
    ...existingItem,
    numberOfProducts: existingItem.numberOfProducts - 1,
  });
}

function createItemLineFor(product: ProductWithId) {
  const itemLine = atom<ItemLine>({ product, numberOfProducts: 1 });
  return atom<ItemLine, [newItem: ItemLine], void>(
    (get) => {
      return get(itemLine);
    },
    (get, set, newItem: ItemLine) => {
      set(itemLine, newItem);
    }
  );
}

/**
 * only use this function in tests!!!
 */
export function resetStore() {
  defaultStore.set(allItemLines, []);
}

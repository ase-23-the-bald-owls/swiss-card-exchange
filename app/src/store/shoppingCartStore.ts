import { defaultStore } from './defaultStore';
import { Product, ProductWithId } from '@/lib/products';
import { isInput } from '@/utils/parsers';
import { Atom, WritableAtom, atom } from 'jotai';
import { z } from 'zod';

export const shoppingCartLocalStorageKey = 'shoppingCartItems';

const lineItemSchema = z.object({
  product: z.object({
    id: z.number().int().min(0),
  }),
  numberOfProducts: z.number().int().min(0),
});

type ItemLine = z.infer<typeof lineItemSchema> & { product: ProductWithId };

export type WriteableLineItemAtom = WritableAtom<ItemLine, [newItem: ItemLine], void>;

function readItemsFromStorage() {
  if (typeof localStorage === 'undefined') {
    return [];
  }
  const allItemsJson = localStorage.getItem(shoppingCartLocalStorageKey);
  if (!allItemsJson) {
    return [];
  }
  try {
    const parsedShoppingCartItems = JSON.parse(allItemsJson);
    const validLineItems = isInput(parsedShoppingCartItems)
      .forSchema(z.array(lineItemSchema))
      .validOrElse([]) as ItemLine[];

    return validLineItems.map((item) =>
      createItemLineFor(item.product, item.numberOfProducts)
    );
  } catch (e) {
    console.warn('received invalid data from storage, was: ', allItemsJson);
    return [];
  }
}

const allItemLines = atom<WriteableLineItemAtom[]>([]);

const updateItemLines = atom<
  WriteableLineItemAtom[],
  [newItem: WriteableLineItemAtom[]],
  void
>(
  (get) => get(allItemLines),
  (get, set, newItem) => {
    set(allItemLines, newItem);
    updateLocalStorage(get);
  }
);

function updateLocalStorage(get: <Value>(atom: Atom<Value>) => Value) {
  const valuesForStorage = JSON.stringify(get(allItemLines).map((value) => get(value)));
  localStorage.setItem(shoppingCartLocalStorageKey, valuesForStorage);
}

export function reloadFromStorage() {
  defaultStore.set(allItemLines, readItemsFromStorage());
}

export const getAllItemLines = atom<WriteableLineItemAtom[]>((get) => get(allItemLines));

export const getAllItemsAsMap = atom(
  (get) => new Map(get(allItemLines).map((item) => [get(item), item]))
);

export const numberOfProducts = atom((get) =>
  Array.from(get(getAllItemsAsMap).keys())
    .map((value) => value.numberOfProducts)
    .reduce((acc, value) => acc + value, 0)
);

export const totalShoppingCartPriceAtom = atom((get) =>
  Array.from(get(getAllItemsAsMap).keys())
    .map((value) => value.numberOfProducts * (value.product.price ?? 0))
    .reduce((acc, value) => acc + value, 0)
);

export function addProduct(product: ProductWithId) {
  const allItems = defaultStore.get(allItemLines);
  const itemToUpdate = allItems.find(
    (value) => defaultStore.get(value).product.id === product.id
  );

  if (!itemToUpdate) {
    const itemLine = createItemLineFor(product);
    defaultStore.set(updateItemLines, [...allItems, itemLine]);
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
    removeAllProducts(productToRemove);
  }
  defaultStore.set(itemToRemove, {
    ...existingItem,
    numberOfProducts: existingItem.numberOfProducts - 1,
  });
}

export function addProductInfo(product: Product) {
  const allItems = defaultStore.get(allItemLines);
  const itemToUpdate = allItems.find(
    (value) => defaultStore.get(value).product.id === product.id
  );

  if (!itemToUpdate) {
    throw Error(`did not find item to add product info, id was: ${product.id}`);
  }
  const existingItem = defaultStore.get(itemToUpdate);

  defaultStore.set(itemToUpdate, {
    ...existingItem,
    product: product,
  });
}

export function removeAllProducts(productToRemove: ProductWithId) {
  const allItems = defaultStore.get(allItemLines);
  const newItemList = allItems.filter(
    (value) => defaultStore.get(value).product.id !== productToRemove.id
  );
  defaultStore.set(updateItemLines, newItemList);
}

function createItemLineFor(product: ProductWithId, numberOfProducts = 1) {
  const itemLine = atom<ItemLine>({ product, numberOfProducts: numberOfProducts });
  return atom<ItemLine, [newItem: ItemLine], void>(
    (get) => {
      return get(itemLine);
    },
    (get, set, newItem: ItemLine) => {
      set(itemLine, newItem);
      updateLocalStorage(get);
    }
  );
}

/**
 * only use this function in tests!!!
 */
export function resetStore() {
  defaultStore.set(allItemLines, []);
}

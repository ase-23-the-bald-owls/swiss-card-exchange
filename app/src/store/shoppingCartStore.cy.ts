// noinspection ES6PreferShortImport
import { createProduct } from '../lib/products';
// noinspection ES6PreferShortImport
import { wrap } from '../testutils/jotaiUtils';
import {
  addProduct,
  getAllItemLines,
  reloadFromStorage,
  removeProduct,
  resetStore,
  shoppingCartLocalStorageKey,
} from './shoppingCartStore';

describe('A shoppingCart', () => {
  beforeEach(() => resetStore());

  it('is empty at start', () => {
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(0);
  });

  it('has a product after one was added', () => {
    addProduct(createProduct());
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(1);
  });

  it('allows to delete product', () => {
    const product1 = createProduct();
    addProduct(product1);
    const product2 = createProduct();
    addProduct(product2);
    removeProduct(product1);
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(1);
    const expectedLineItem1 = JSON.stringify({ product: product2, numberOfProducts: 1 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem1);
  });

  it('updates the existing line when adding the same product again', () => {
    const product1 = createProduct();
    addProduct(product1);
    addProduct(product1);
    const product2 = createProduct();
    addProduct(product2);
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(2);
    const expectedLineItem1 = JSON.stringify({ product: product1, numberOfProducts: 2 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem1);
    const expectedLineItem2 = JSON.stringify({ product: product2, numberOfProducts: 1 });
    expect(JSON.stringify(wrap(allItems[1]).value)).eq(expectedLineItem2);
  });

  it('reduces the amount of products again when removed', () => {
    const product1 = createProduct();
    addProduct(product1);
    addProduct(product1);
    const product2 = createProduct();
    addProduct(product2);
    removeProduct(product1);
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(2);
    const expectedLineItem1 = JSON.stringify({ product: product1, numberOfProducts: 1 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem1);
    const expectedLineItem2 = JSON.stringify({ product: product2, numberOfProducts: 1 });
    expect(JSON.stringify(wrap(allItems[1]).value)).eq(expectedLineItem2);
  });

  it('does not crash if product to remove does not exist', () => {
    const product1 = createProduct();
    removeProduct(product1);
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(0);
  });

  it('can load data from local storage', () => {
    const product = createProduct();
    addProduct(product);
    addProduct(product);

    resetStore();
    const allItemsWithEmptyStore = wrap(getAllItemLines).value;
    expect(allItemsWithEmptyStore).to.have.length(0);

    reloadFromStorage();
    const allItems = wrap(getAllItemLines).value;
    expect(allItems).to.have.length(1);
    const expectedLineItem = JSON.stringify({ product: product, numberOfProducts: 2 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem);
  });

  [
    '{',
    JSON.stringify({ product: {} }),
    JSON.stringify([{ product: {} }]),
    JSON.stringify([{ product: { id: 1 } }]),
    JSON.stringify([{ product: { id: 1 }, numberOfProducts: -1 }]),
    JSON.stringify([{ product: { id: 1 }, numberOfProducts: 5.5 }]),
  ].forEach((notParseable) => {
    it(`starts with empty shopping cart if localStorage item cannot be parsed for ${notParseable}`, () => {
      localStorage.setItem(shoppingCartLocalStorageKey, notParseable);

      reloadFromStorage();
      const allItems = wrap(getAllItemLines).value;
      expect(allItems).to.have.length(0);
    });
  });
});

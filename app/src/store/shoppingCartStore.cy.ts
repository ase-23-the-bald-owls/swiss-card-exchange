import { defaultStore } from './defaultStore';
import {
  addProduct,
  addProductInfo,
  getAllItemLines,
  numberOfProducts,
  reloadFromStorage,
  removeAllProducts,
  removeProduct,
  resetStore,
  shoppingCartLocalStorageKey,
  totalShoppingCartPriceAtom,
} from './shoppingCartStore';
import { createProduct } from '@/lib/products';
import { wrap } from '@/testutils/jotaiUtils';

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

  it('allows to add the product properties loaded from the api to be added', () => {
    const product1 = createProduct();
    addProduct(product1);

    const enrichedProduct = { ...product1, price: 5, title: 'test' };
    addProductInfo(enrichedProduct);

    const allItems = wrap(getAllItemLines).value;
    const lineItem = wrap(allItems[0]).value;
    const productFromStore = lineItem.product;
    expect(productFromStore.title).eq(enrichedProduct.title);
    expect(productFromStore.price).eq(enrichedProduct.price);
    expect(lineItem.numberOfProducts).eq(1);
  });

  it('counts the number of products correctly', () => {
    const product1 = createProduct();
    addProduct(product1);
    addProduct(product1);
    const product2 = createProduct();
    addProduct(product2);
    const product3 = createProduct();
    addProduct(product3);

    const allItems = wrap(getAllItemLines).value;
    const product3oldvalue = wrap(allItems[2]).value;
    expect(product3oldvalue.product.id).eq(product3.id);

    product3oldvalue.numberOfProducts = 0;
    defaultStore.set(allItems[2], product3oldvalue);

    expect(wrap(numberOfProducts).value).eq(3);
  });

  it('sums up the total shopping cart price correctly', () => {
    const product1 = createProduct();
    product1.price = 1.1;
    addProduct(product1);
    addProduct(product1);
    const product2 = createProduct();
    product2.price = 10;
    addProduct(product2);
    const product3 = createProduct();
    product3.price = 100;
    addProduct(product3);

    const allItems = wrap(getAllItemLines).value;
    const product3oldvalue = wrap(allItems[2]).value;
    expect(product3oldvalue.product.id).eq(product3.id);

    product3oldvalue.numberOfProducts = 0;
    defaultStore.set(allItems[2], product3oldvalue);

    expect(wrap(totalShoppingCartPriceAtom).value).eq(12.2);
  });

  it('removeAllProducts removes a product from the list if numberOfProducts > 1', () => {
    const product1 = createProduct();
    addProduct(product1);
    addProduct(product1);
    const product2 = createProduct();
    addProduct(product2);
    removeAllProducts(product1);
    const allItems = wrap(getAllItemLines).value;

    expect(allItems).to.have.length(1);
    const expectedLineItem1 = JSON.stringify({ product: product2, numberOfProducts: 1 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem1);
  });

  describe('does not crash', () => {
    describe('if product to remove does not exist for', () => {
      it('removeProduct', () => {
        const product1 = createProduct();
        removeProduct(product1);
        const allItems = wrap(getAllItemLines).value;

        expect(allItems).to.have.length(0);
      });

      it('removeAllProducts', () => {
        const product1 = createProduct();
        removeAllProducts(product1);
        const allItems = wrap(getAllItemLines).value;

        expect(allItems).to.have.length(0);
      });
    });
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
    const expectedLineItem = JSON.stringify({ product, numberOfProducts: 2 });
    expect(JSON.stringify(wrap(allItems[0]).value)).eq(expectedLineItem);
  });

  it(`allows item with numberOfProducts 0 to be loaded from store`, () => {
    localStorage.setItem(
      shoppingCartLocalStorageKey,
      JSON.stringify([{ product: { id: 1 }, numberOfProducts: 0 }])
    );

    reloadFromStorage();
    const allItems = wrap(getAllItemLines).value;
    expect(allItems).to.have.length(1);
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

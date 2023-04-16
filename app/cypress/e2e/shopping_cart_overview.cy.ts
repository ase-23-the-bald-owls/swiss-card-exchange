// noinspection ES6PreferShortImport
import { HomeRoute, ShoppingCartRoute } from '../../src/utils/routes';

describe('the shopping cart overview', () => {
  it('allows to navigate back to home', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');

    cy.get('[data-cy="shopping-cart-icon"]').click();
    cy.location('pathname').should('contain', ShoppingCartRoute);

    cy.get('img[alt="Swiss Card Exchange Logo"]').first().click();

    cy.location('pathname').should('eq', HomeRoute);
  });

  it('shows no products in cart if empty', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.get('[data-cy="shopping-cart-badge"]').contains('0');

    cy.get('[data-cy="shopping-cart-icon"]').click();
    cy.location('pathname').should('contain', ShoppingCartRoute);
    cy.contains('No items in shopping cart.');
    cy.get('[data-cy="shopping-cart-overview-total-price"]').should('not.exist');
    cy.runnerScreenShot();
  });

  describe('with items in the shopping cart', () => {
    beforeEach('fill the shopping cart ', () => {
      cy.visitAndWaitFor(HomeRoute, 'index');

      cy.get('[data-cy="add-to-cart-button"]').then((buttons) => {
        cy.wrap(buttons[2]).click();
        cy.wrap(buttons[2]).click();
        cy.wrap(buttons[1]).click();

        cy.contains('Details').click();

        cy.get('[data-cy=product-detail]').should('have.length', 1);

        cy.get('[data-cy="add-to-cart-button"]').click();

        cy.get('[data-cy="shopping-cart-icon"]').click();

        cy.get('[data-cy="shopping-cart-overview-total-price"]').should('have.length', 2);
      });
    });

    it('shows items in shopping cart', () => {
      cy.contains('No items in shopping cart.').should('not.exist');
      cy.get('[data-cy="shopping-card-item-card"]').should('have.length', 3);

      cy.runnerScreenShot();
    });

    it('allows to change the number of items', () => {
      cy.get('[data-cy="shopping-card-item-card"]')
        .then((cards) => cards[0])
        .then((card) => cy.wrap(card).contains('CHF'))
        .then((elementWithPrice) => {
          const priceBefore = elementWithPrice.text();

          cy.get('[data-cy="shopping-card-item-number-input"]')
            .then((numberInputs) => cy.wrap(numberInputs[0]).type('5'))
            .then((_) => expect(priceBefore).not.eq(elementWithPrice.text()));
        });
    });

    it('allows to increment and decrement the number of items', () => {
      cy.get('[data-cy="shopping-card-item-card"]')
        .then((cards) => cards[0])
        .then((card) => cy.wrap(card).contains('CHF'))
        .then((elementWithPrice) => {
          const priceBefore = elementWithPrice.text();

          cy.get('[data-cy="shopping-card-item-number-increment"]')
            .then((numberInputs) => cy.wrap(numberInputs[0]).click())
            .then((_) => expect(elementWithPrice.text()).not.eq(priceBefore));

          cy.get('[data-cy="shopping-card-item-number-decrement"]')
            .then((numberInputs) => cy.wrap(numberInputs[0]).click())
            .then((_) => expect(elementWithPrice.text()).eq(priceBefore));

          cy.get('[data-cy="shopping-card-item-number-decrement"]')
            .then((numberInputs) => cy.wrap(numberInputs[0]).click().click())
            .then((_) => expect(elementWithPrice.text()).eq('CHF 0.00'));
        });

      cy.reload();

      cy.get('[data-cy="shopping-card-item-card"]').should('have.length', 3);
      cy.get('[data-cy="shopping-card-item-card"]')
        .then((cards) => cards[0])
        .then((card) => cy.wrap(card).contains('CHF'))
        .then((elementWithPrice) => expect(elementWithPrice.text()).eq('CHF 0.00'));

      cy.get('[data-cy="shopping-card-item-card"]')
        .then((cards) => cards[1])
        .then((card) => cy.wrap(card).contains('CHF'))
        .then((elementWithPrice) => expect(elementWithPrice.text()).not.eq('CHF 0.00'));

      cy.runnerScreenShot();
    });
  });
});

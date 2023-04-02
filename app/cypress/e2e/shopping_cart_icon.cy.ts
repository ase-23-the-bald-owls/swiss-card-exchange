// noinspection ES6PreferShortImport
// noinspection ES6PreferShortImport
import { HomeRoute } from '../../src/utils/routes';

describe('the shopping cart icon', () => {
  it('should show the number of products in the shopping cart', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.get('[data-cy="shopping-cart-badge"]').contains('0');
    cy.runnerScreenShot();

    cy.get('[data-cy="add-to-cart-button"]').then((buttons) => {
      cy.wrap(buttons[0]).click();
      cy.get('[data-cy="shopping-cart-badge"]').contains('1');

      cy.wrap(buttons[0]).click();
      cy.get('[data-cy="shopping-cart-badge"]').contains('2');

      cy.wrap(buttons[1]).click();
      cy.get('[data-cy="shopping-cart-badge"]').contains('3');

      cy.runnerScreenShot();
    });
  });

  //to avoid displaying too large numbers
  it('should not show 9+ if more than 10 items are in cart', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.get('[data-cy="shopping-cart-badge"]').contains('0');
    cy.runnerScreenShot();

    cy.get('[data-cy="add-to-cart-button"]').then((buttons) => {
      for (let i = 0; i < 9; i++) {
        cy.wrap(buttons[0]).click();
      }
      cy.get('[data-cy="shopping-cart-badge"]').contains('9+');

      cy.wrap(buttons[0]).click();
      cy.get('[data-cy="shopping-cart-badge"]').contains('9+');

      cy.runnerScreenShot();
    });
  });
});

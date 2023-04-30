// noinspection ES6PreferShortImport
import {
  BillingAddressRoute,
  HomeRoute,
  ShippingAddressRoute,
  SubmitOrderSuccessRoute,
} from '../../src/utils/routes';
import { user1 } from './users';

const shippingAddress = {
  firstname: 'Fritz',
  name: 'Kalbermatter',
  company: 'Bettercompany',
  address: 'My street 6',
  zipCode: '8000',
  city: 'Zürich',
  email: 'blabla@mustermann.ch',
};

const shippingAddressWithOtherName = {
  ...shippingAddress,
  name: 'other name',
};

const billingAddress = {
  firstname: 'Hans',
  name: 'Müller',
  address: 'My street 5',
  zipCode: '4000',
  city: 'Basel',
};

describe('the checkout process', () => {
  [ShippingAddressRoute, BillingAddressRoute, SubmitOrderSuccessRoute].forEach(
    (route) => {
      it(`${route} redirects back to home when no items in shopping cart`, () => {
        cy.visitAndWaitFor(ShippingAddressRoute, 'index');

        cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 1);
        cy.location('pathname').should('contain', HomeRoute);
      });
    }
  );

  it(`${SubmitOrderSuccessRoute} does not crash completely if navigated to directly`, () => {
    cy.visitAndWaitFor(SubmitOrderSuccessRoute, 'index');

    cy.contains('Email');
    cy.location('pathname').should('contain', SubmitOrderSuccessRoute);
    cy.runnerScreenShot();
  });

  describe('with an item in the shopping cart', () => {
    beforeEach(() => {
      cy.visitAndWaitFor(HomeRoute, 'index');
      cy.get('[data-cy="add-to-cart-button"]').first().click();
    });

    [BillingAddressRoute, SubmitOrderSuccessRoute].forEach((route) => {
      it(`${route} redirects back to home when no shipping address`, () => {
        cy.visitAndWaitFor(ShippingAddressRoute, 'index');

        cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 1);
        cy.location('pathname').should('contain', HomeRoute);
      });
    });

    it('the user can perform a checkout', () => {
      cy.get('[data-cy="shopping-cart-icon"]').click();
      cy.contains('Checkout').first().click();

      cy.get('h2').contains('Shipping Address');
      Object.entries(shippingAddressWithOtherName).forEach(([key, value]) => {
        cy.get(`#${key}`).type(value);
      });
      cy.runnerScreenShot();
      cy.get('button').contains('Submit').click();

      cy.get('h2').contains('Billing Address');
      Object.entries(billingAddress).forEach(([key, value]) => {
        cy.get(`#${key}`).type(value);
      });
      cy.runnerScreenShot();
      cy.get('button').contains('Submit').click();

      cy.get('h2').contains('Submit Order');
      Object.entries(shippingAddressWithOtherName).forEach(([, value]) => {
        cy.contains(value);
      });
      Object.entries(billingAddress).forEach(([, value]) => {
        cy.contains(value);
      });
      cy.runnerScreenShot();

      // go back and forth

      cy.get('a').contains('Shopping Cart').click();
      cy.get('h2').contains('Shopping Cart');

      cy.contains('Checkout').first().click();
      cy.get('h2').contains('Shipping Address');

      cy.get('a').contains('Billing Address').click();
      cy.get('h2').contains('Billing Address');

      cy.get('a').contains('Shipping Address').click();
      cy.get('h2').contains('Shipping Address');

      cy.get('a').contains('Billing Address').click();
      cy.get('h2').contains('Billing Address');

      cy.get('a').contains('Submit Order').click();
      cy.get('h2').contains('Submit Order');

      // change shipping address again

      cy.get('a').contains('Shipping Address').click();
      cy.get('h2').contains('Shipping Address');
      Object.entries(shippingAddress).forEach(([key, value]) => {
        cy.get(`#${key}`).clear().type(value);
      });
      cy.get('button').contains('Submit').click();

      cy.get('a').contains('Submit Order').click();

      cy.get('h2').contains('Submit Order');
      Object.entries(shippingAddress).forEach(([, value]) => {
        cy.contains(value);
      });
      Object.entries(billingAddress).forEach(([, value]) => {
        cy.contains(value);
      });
      cy.get('button').contains('Submit Order').click();

      cy.get('h2').contains('Order successfully submitted');
      cy.get('[data-cy="shopping-cart-badge"]').contains('0');
      Object.entries(shippingAddress).forEach(([, value]) => {
        cy.contains(value);
      });
      Object.entries(billingAddress).forEach(([, value]) => {
        cy.contains(value);
      });
      cy.contains('Payment Information');
      cy.runnerScreenShot();
      cy.get('button').contains('Back to shopping').click();

      cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 1);
    });

    // noinspection DuplicatedCode
    it('the user can use the same address for shipping and billing', () => {
      cy.get('[data-cy="shopping-cart-icon"]').click();
      cy.contains('Checkout').first().click();

      cy.get('h2').contains('Shipping Address');
      Object.entries(shippingAddress).forEach(([key, value]) => {
        cy.get(`#${key}`).type(value);
      });
      cy.runnerScreenShot();
      cy.get('button').contains('Submit').click();

      cy.get('h2').contains('Billing Address');
      cy.get('label:has(#addressesSame)').click();
      cy.runnerScreenShot();
      cy.get('button').contains('Continue').click();

      cy.get('h2').contains('Submit Order');
      Object.entries(shippingAddress)
        .filter(([key]) => 'email' !== key)
        .forEach(([, value]) => {
          cy.get('.chakra-card__body')
            .filter((key, element) => element.innerText.indexOf(value) !== -1)
            .should('have.length', 2);
        });
      Object.entries(billingAddress).forEach(([, value]) => {
        cy.contains(value).should('not.exist');
      });
      cy.get('button').contains('Submit Order').click();

      cy.get('h2').contains('Order successfully submitted');
      cy.get('[data-cy="shopping-cart-badge"]').contains('0');
    });

    describe('and logged in', () => {
      beforeEach(() => {
        cy.logout();
        cy.login(user1.username, user1.password);
      });

      // noinspection DuplicatedCode
      it('the user can perform a checkout and sees his order list', () => {
        cy.get('[data-cy="shopping-cart-icon"]').click();
        cy.contains('Checkout').first().click();

        cy.get('h2').contains('Shipping Address', { timeout: 20000 });
        // the address is already prefilled
        Object.entries(shippingAddress).forEach(([key, value]) => {
          cy.get(`#${key}`).should('have.value', value);
        });
        cy.runnerScreenShot();
        cy.get('button').contains('Submit').click();

        cy.get('h2').contains('Billing Address', { timeout: 20000 });
        // the address is already prefilled
        Object.entries(billingAddress).forEach(([key, value]) => {
          cy.get(`#${key}`).should('have.value', value);
        });
        cy.runnerScreenShot();
        cy.get('label:has(#addressesSame)').click();
        cy.runnerScreenShot();
        cy.get('button').contains('Continue').click();

        cy.get('h2').contains('Submit Order', { timeout: 20000 });
        Object.entries(shippingAddress)
          .filter(([key]) => 'email' !== key)
          .forEach(([, value]) => {
            cy.get('.chakra-card__body')
              .filter((key, element) => element.innerText.indexOf(value) !== -1)
              .should('have.length', 2);
          });
        Object.entries(billingAddress).forEach(([, value]) => {
          cy.contains(value).should('not.exist');
        });
        cy.get('button').contains('Submit Order').click();

        cy.get('h2').contains('Order successfully submitted', { timeout: 20000 });
        cy.get('[data-cy="shopping-cart-badge"]').contains('0');

        cy.get('[data-cy=user-avatar]').click();

        cy.contains('Orders').click();

        cy.contains('Order N').should('have.length.at.least', 1);
        cy.runnerScreenShot();
      });
    });
  });
});

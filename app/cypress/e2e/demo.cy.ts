// noinspection DuplicatedCode
// noinspection ES6PreferShortImport
import { HomeRoute, LoginRoute } from '../../src/utils/routes';
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

const billingAddress = {
  firstname: 'Hans',
  name: 'Müller',
  address: 'My street 5',
  zipCode: '4000',
  city: 'Basel',
};

function markButton() {
  // eslint-disable-next-line @typescript-eslint/ban-ts-comment
  // @ts-ignore
  return (button) => button.css('border', '5px solid magenta');
}

it('demo the app', () => {
  cy.visitAndWaitFor(HomeRoute, 'index');
  cy.get('[data-cy="shopping-cart-badge"]').contains('0');

  cy.get('[data-cy="add-to-cart-button"]').then((buttons) => {
    cy.wrap(buttons[0]).scrollIntoView().then(markButton()).click();
    cy.get('[data-cy="shopping-cart-badge"]').contains('1');

    cy.wrap(buttons[0]).scrollIntoView().then(markButton()).click();
    cy.get('[data-cy="shopping-cart-badge"]').contains('2');

    cy.wrap(buttons[1]).scrollIntoView().then(markButton()).click();
    cy.get('[data-cy="shopping-cart-badge"]').contains('3');

    cy.wait(1000);
  });

  cy.get('[data-cy="shopping-cart-icon"]').scrollIntoView().then(markButton()).click();

  cy.wait(1000);

  cy.get('[data-cy="shopping-card-item-card"]')
    .then((cards) => cards[0])
    .then((card) => cy.wrap(card).contains('CHF'))
    .then((elementWithPrice) => {
      const priceBefore = elementWithPrice.text();

      cy.get('[data-cy="shopping-card-item-number-input"]')
        .then((numberInputs) => cy.wrap(numberInputs[0]).type('5'))
        .then((_) => expect(priceBefore).not.eq(elementWithPrice.text()));
    });

  cy.wait(1000);

  cy.get('[data-cy="shopping-card-item-card"]')
    .then((cards) => cards[0])
    .then((card) => cy.wrap(card).contains('CHF'))
    .then((elementWithPrice) => {
      const priceBefore = elementWithPrice.text();

      cy.get('[data-cy="shopping-card-item-number-increment"]')
        .then((numberInputs) =>
          cy.wrap(numberInputs[0]).scrollIntoView().then(markButton()).click()
        )
        .then((_) => expect(elementWithPrice.text()).not.eq(priceBefore));

      cy.get('[data-cy="shopping-card-item-number-decrement"]')
        .then((numberInputs) =>
          cy.wrap(numberInputs[0]).scrollIntoView().then(markButton()).click()
        )
        .then((_) => expect(elementWithPrice.text()).eq(priceBefore));

      cy.get('[data-cy="shopping-card-item-number-decrement"]').then((numberInputs) =>
        cy.wrap(numberInputs[0]).scrollIntoView().then(markButton()).click().click()
      );
    });

  cy.wait(1000);

  cy.reload();

  cy.wait(1000);

  cy.contains('Checkout').first().scrollIntoView().then(markButton()).click();

  cy.get('h2').contains('Shipping Address');
  Object.entries(shippingAddress).forEach(([key, value]) => {
    cy.get(`#${key}`).type(value);
  });
  cy.wait(1000);
  cy.get('button').contains('Submit').scrollIntoView().then(markButton()).click();

  cy.get('h2').contains('Billing Address');
  Object.entries(billingAddress).forEach(([key, value]) => {
    cy.get(`#${key}`).type(value);
  });
  cy.wait(1000);
  cy.get('label:has(#addressesSame)').scrollIntoView().then(markButton()).click();
  cy.wait(1000);

  cy.get('button').contains('Continue').scrollIntoView().then(markButton()).click();

  cy.get('h2').contains('Submit Order');
  Object.entries(shippingAddress).forEach(([, value]) => {
    cy.contains(value);
  });
  cy.wait(1000);
  cy.get('button').contains('Submit Order').scrollIntoView().then(markButton()).click();

  cy.get('h2').contains('Order successfully submitted');
  cy.get('[data-cy="shopping-cart-badge"]').contains('0');
  Object.entries(shippingAddress).forEach(([, value]) => {
    cy.contains(value);
  });
  cy.contains('Payment Information');
  cy.wait(1000);
  cy.get('button')
    .contains('Back to shopping')
    .scrollIntoView()
    .then(markButton())
    .click();

  cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 1);

  cy.wait(1000);

  cy.visit('http://localhost:8025');

  cy.wait(1000);

  cy.visitAndWaitFor(HomeRoute, 'index');

  cy.visitAndWaitFor(LoginRoute, 'index');
  cy.get('[type=email]').type(user1.username);
  cy.get('[type=password]').type(user1.password);

  cy.wait(1000);

  cy.contains('Sign in').scrollIntoView().then(markButton()).click();

  cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
    'have.lengthOf.at.least',
    1
  );
});

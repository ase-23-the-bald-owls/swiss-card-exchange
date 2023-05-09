// noinspection ES6PreferShortImport
import { HomeRoute, ProductDetailsRoute } from '../../src/utils/routes';

describe('the product details', () => {
  it('can be accessed from the home page', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.contains('Details').click();

    cy.location('pathname').should('contain', ProductDetailsRoute);
    cy.get('[data-cy=product-detail]').should('have.length', 1);
    cy.runnerScreenShot();
  });

  it('can be left by clicking on the logo', () => {
    cy.visit(`${ProductDetailsRoute}/5`);

    cy.get('img[alt="Swiss Card Exchange Logo"]').first().click();

    cy.location('pathname').should('eq', HomeRoute);
    cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 10);
  });

  it('show an error if product id is unknown', () => {
    cy.visit(`${ProductDetailsRoute}/unknown`);

    cy.contains('Internal Server Error');
  });

  it('show an error if product id is not found', () => {
    cy.visit(`${ProductDetailsRoute}/-1`);

    cy.contains('This page could not be found');
  });
});

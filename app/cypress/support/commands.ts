// noinspection ES6PreferShortImport
import { LoginRoute, ProfileRoute } from '../../src/utils/routes';
import '@testing-library/cypress/add-commands';

/**
 * NOTE: If you add a custom command, please add types for it.
 * @see https://docs.cypress.io/guides/tooling/typescript-support.html#Types-for-custom-commands
 * */

Cypress.Commands.add('visitAndWaitFor', (pathname, testId) => {
  cy.visit(pathname);
  cy.findByTestId(testId).should('exist').and('be.visible');
});

Cypress.Commands.add('runnerScreenShot', () => {
  cy.screenshot({ capture: 'runner' });
});

Cypress.Commands.add('logout', () => {
  cy.visitAndWaitFor(ProfileRoute, 'index');
  cy.get('body').then((body) => {
    if (
      body
        .find('button')
        .toArray()
        .some((value) => value.innerHTML.indexOf('Logout') !== -1)
    ) {
      cy.contains('Logout').click();
    }
  });
});

Cypress.Commands.add('login', (username: string, password: string) => {
  cy.visitAndWaitFor(ProfileRoute, 'index');
  cy.get('body').then((body) => {
    if (
      body
        .find('button')
        .toArray()
        .some((value) => value.innerHTML.indexOf('Logout') !== -1)
    ) {
      throw new Error('Another user was already logged in, so cannot login again');
    }
  });

  cy.visitAndWaitFor(LoginRoute, 'index');

  cy.get('[type=email]').type(username);
  cy.get('[type=password]').type(password);

  cy.contains('Sign in').click();

  cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
    'have.lengthOf.at.least',
    1
  );
});

// noinspection ES6PreferShortImport
import { LoginRoute } from '../../src/utils/routes';
import { randomBytes } from 'crypto';

const username = randomBytes(20).toString('hex');
const userEmail = `${username}@example.com`;
const password = randomBytes(20).toString('hex');

describe('The login form', () => {
  beforeEach(() => {
    cy.logout();
  });

  it('allows to sign up and then sign in', () => {
    cy.visitAndWaitFor(LoginRoute, 'index');
    cy.contains("Don't have an account? Sign up").click();
    cy.get('[type=email]').type(userEmail);
    cy.get('[type=password]').type(password);

    cy.contains('Sign up').click();

    cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
      'have.lengthOf.at.least',
      1
    );

    cy.get('[data-cy="user-avatar"]').click();

    cy.contains('Logout').click();

    cy.visitAndWaitFor(LoginRoute, 'index');
    cy.get('[type=email]').type(userEmail);
    cy.get('[type=password]').type(password);

    cy.contains('Sign in').click();

    cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
      'have.lengthOf.at.least',
      1
    );
  });
});

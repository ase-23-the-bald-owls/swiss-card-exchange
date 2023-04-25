// noinspection ES6PreferShortImport
import { LoginRoute } from '../../src/utils/routes';
import { user1 } from './users';

describe('The login in form', () => {
  describe('when not logged in', () => {
    beforeEach(() => {
      cy.logout();
    });

    it('allows to sign in with the default customer user', () => {
      cy.visitAndWaitFor(LoginRoute, 'index');
      cy.get('[type=email]').type(user1.username);
      cy.get('[type=password]').type(user1.password);

      cy.contains('Sign in').click();

      cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
        'have.lengthOf.at.least',
        1
      );
    });

    it('rejects the wrong passsword', () => {
      cy.visitAndWaitFor(LoginRoute, 'index');
      cy.get('[type=email]').type(user1.username);
      cy.get('[type=password]').type(user1.password + 'a');

      cy.contains('Sign in').click();

      cy.contains('Invalid login credentials');
    });

    it('redirects to the page in redirectUrl after login', () => {
      cy.visitAndWaitFor(
        `${LoginRoute}?redirectUrl=${encodeURIComponent('/profile')}`,
        'index'
      );
      cy.get('[type=email]').type(user1.username);
      cy.get('[type=password]').type(user1.password);

      cy.contains('Sign in').click();

      cy.contains('Profile of', { timeout: 20000 });
    });
  });

  describe('when logged in', () => {
    beforeEach(() => {
      cy.logout();
      cy.login(user1.username, user1.password);
    });

    it('redirects to the home page', () => {
      cy.visitAndWaitFor(LoginRoute, 'index');

      cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
        'have.lengthOf.at.least',
        1
      );
    });

    it('redirects to the redirectUrl when specified', () => {
      cy.visitAndWaitFor(
        `${LoginRoute}?redirectUrl=${encodeURIComponent('/profile')}`,
        'index'
      );

      cy.contains('Profile of', { timeout: 20000 });
    });
  });
});

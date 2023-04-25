// noinspection ES6PreferShortImport
import { ProfileRoute } from '../../src/utils/routes';
import { user1 } from './users';

describe('The profile page', () => {
  describe('when not logged in', () => {
    beforeEach(() => {
      cy.logout();
    });

    it('redirects to the login page', () => {
      cy.visitAndWaitFor(ProfileRoute, 'index');

      cy.contains('Sign in');
    });

    it('shows the profile page after login', () => {
      cy.visitAndWaitFor(ProfileRoute, 'index');

      cy.get('[type=email]').type(user1.username);
      cy.get('[type=password]').type(user1.password);
      cy.contains('Sign in').click();

      cy.contains(`Profile of: ${user1.username}`);
    });
  });

  describe('when logged in', () => {
    beforeEach(() => {
      cy.logout();
      cy.login(user1.username, user1.password);
    });

    it('shows the profile page', () => {
      cy.visitAndWaitFor(ProfileRoute, 'index');

      cy.contains(`Profile of: ${user1.username}`);
    });

    it('allows to logout and then redirects to Home', () => {
      cy.visitAndWaitFor(ProfileRoute, 'index');

      cy.contains('Logout').click();

      cy.get('[data-cy=product-tile]', { timeout: 20000 }).should(
        'have.lengthOf.at.least',
        1
      );
      cy.get('[data-cy="user-avatar"]').should('not.exist');
      cy.contains('Login');
    });
  });
});

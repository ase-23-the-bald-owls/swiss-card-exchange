// noinspection ES6PreferShortImport
import { HomeRoute } from '../../src/utils/routes';

export {}; // Next.js requires --isolatedModules in tsconfig to be true. Feel free to remove this if you have an import

describe('landing', () => {
  it('should render', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 10);
    cy.runnerScreenShot();
  });
});

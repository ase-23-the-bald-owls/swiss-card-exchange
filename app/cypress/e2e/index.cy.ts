// noinspection ES6PreferShortImport
// noinspection ES6PreferShortImport
import { createPaginationProps } from '../../src/utils/pagination/paginationProps';
import { HomeRoute } from '../../src/utils/routes';
import * as querystring from 'querystring';

export {}; // Next.js requires --isolatedModules in tsconfig to be true. Feel free to remove this if you have an import

describe('landing', () => {
  it('should render', () => {
    cy.visitAndWaitFor(HomeRoute, 'index');
    cy.get('[data-cy=product-tile]').should('have.lengthOf.at.least', 10);
    cy.get('img').should(($imgs) =>
      $imgs.map((i, img) => expect(img.naturalWidth).to.be.greaterThan(0))
    );
    cy.runnerScreenShot();
  });

  it('should paginate', () => {
    cy.visitAndWaitFor(`${HomeRoute}`, 'index');

    cy.get('[data-cy=product-tile]').should('have.lengthOf', 10);

    cy.runnerScreenShot();

    cy.get('a').contains(/^>$/).click();

    const paginationSecondPage = querystring.stringify(createPaginationProps(1, 10));
    cy.location('search').should('contain', paginationSecondPage);
    cy.get('[data-cy=product-tile]').should('have.lengthOf', 10);

    cy.get('a').contains('>>').click();

    const paginationQueryForLast = querystring.stringify(createPaginationProps(52, 10));
    cy.location('search').should('contain', paginationQueryForLast);
    cy.get('[data-cy=product-tile]').should('have.lengthOf', 5);

    cy.get('a').contains(/^<$/).click();

    const paginationPreLast = querystring.stringify(createPaginationProps(51, 10));
    cy.location('search').should('contain', paginationPreLast);
    cy.get('[data-cy=product-tile]').should('have.lengthOf', 10);

    cy.get('a').contains('<<').click();

    const paginationFirst = querystring.stringify(createPaginationProps(0, 10));
    cy.location('search').should('contain', paginationFirst);
    cy.get('[data-cy=product-tile]').should('have.lengthOf', 10);
  });
});

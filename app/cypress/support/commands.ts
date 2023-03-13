import '@testing-library/cypress/add-commands';

/**
 * NOTE: If you add a custom command, please add types for it.
 * @see https://docs.cypress.io/guides/tooling/typescript-support.html#Types-for-custom-commands
 * */

Cypress.Commands.add('visitAndWaitFor', (pathname, testId) => {
  cy.visit(pathname);
  cy.findByTestId(testId).should('exist').and('be.visible');
});

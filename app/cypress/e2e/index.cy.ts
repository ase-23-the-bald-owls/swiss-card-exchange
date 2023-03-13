import products from '../fixtures/products.json';
describe('landing', () => {
  it('should render', () => {
    cy.intercept('GET', 'localhost:54321/*', products);
    cy.visitAndWaitFor('/', 'index');
  });
});

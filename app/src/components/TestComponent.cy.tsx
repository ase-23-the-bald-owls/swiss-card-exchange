import { TestComponent } from './TestComponent';

describe('A TestComponent', () => {
  it('does it', () => {
    cy.mount(<TestComponent doit={true} />);
    cy.get('h1').contains('doing it');
  });
  it('does not do it', () => {
    cy.mount(<TestComponent doit={false} />);
    cy.get('h1').contains('not doing it');
  });
});

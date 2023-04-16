import { Pagination } from './Pagination';
import ChakraThemeProvider from '@/testutils/ChakraThemeProvider';
import { MockRouter } from '@/testutils/mockrouter';

describe('Pagination', () => {
  it('shows disabled buttons when on only page', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={0} pageNumber={0} totalItems={0}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a').should('not.exist');
  });

  it('next and last are enabled when on first page', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={10} pageNumber={0} totalItems={20}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 2)
      .each((links) => expect(links).contains(/>|>>/g));
  });

  it('first and previous are enabled when on last page', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={10} pageNumber={1} totalItems={20}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 2)
      .each((links) => expect(links).contains(/<|<</g));
  });

  it('detects last page on odd page numbers', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={10} pageNumber={2} totalItems={22}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 2)
      .each((links) => expect(links).contains(/<|<</g));
  });

  it('all are enabled when on page in the middle', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={10} pageNumber={1} totalItems={30}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 4)
      .each((links) => expect(links).contains(/<|<<|>|>>/g));
  });

  it('handles odd page numbers', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter>
          <Pagination pageSize={10} pageNumber={1} totalItems={22}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 4)
      .each((links) => expect(links).contains(/<|<<|>|>>/g));
  });

  it('keeps other query parameters', () => {
    cy.mount(
      <ChakraThemeProvider>
        <MockRouter query={{ test: '1' }}>
          <Pagination pageSize={10} pageNumber={1} totalItems={22}></Pagination>
        </MockRouter>
      </ChakraThemeProvider>
    );

    cy.get('a')
      .should('have.length', 4)
      .each((link) => {
        expect(link.attr('href')).contains('test=1');
      });
  });
});

import ChakraThemeProvider from '../../testutils/ChakraThemeProvider';
// noinspection ES6PreferShortImport
import { viewports } from '../../testutils/viewports';
import { NavBar } from './NavBar';

viewports.forEach((viewPort) => {
  describe(`On ${viewPort.width}x${viewPort.height} the NavBar`, () => {
    it('does not wrap', () => {
      cy.viewport(viewPort.width, viewPort.height);
      cy.mount(
        <ChakraThemeProvider>
          <NavBar />
        </ChakraThemeProvider>
      );
      cy.get('img').then((logo) => {
        cy.get('[data-cy=user-avatar]').then((svg) => {
          const logoBoundingClientRect = logo[0].getBoundingClientRect();
          const svgBoundingClientRect = svg[0].getBoundingClientRect();
          expect(logoBoundingClientRect.y).to.be.closeTo(svgBoundingClientRect.y, 30);
          cy.screenshot();
        });
      });
    });
  });
});
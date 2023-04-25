import { NavBar } from './NavBar';
import ChakraThemeProvider from '@/testutils/ChakraThemeProvider';
import {
  createFakeInitialSession,
  createFakeSupabaseClient,
} from '@/testutils/fakeSupabaseClient';
import { viewports } from '@/testutils/viewports';
import { SessionContextProvider } from '@supabase/auth-helpers-react';

viewports.forEach((viewPort) => {
  describe(`On ${viewPort.width}x${viewPort.height} the NavBar`, () => {
    describe('does not wrap', () => {
      it('when logged in', () => {
        cy.viewport(viewPort.width, viewPort.height);
        cy.mount(
          <ChakraThemeProvider>
            <SessionContextProvider
              initialSession={createFakeInitialSession()}
              supabaseClient={createFakeSupabaseClient()}
            >
              <NavBar />
            </SessionContextProvider>
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
});

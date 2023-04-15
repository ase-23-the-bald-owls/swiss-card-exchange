import { CardRarityEnum, CardRarityLabel } from './CardRarityLabel';
import ChakraThemeProvider from '@/testutils/ChakraThemeProvider';

const cardRarities = Object.values(CardRarityEnum);
describe('The CardRarityLabel', () => {
  it('Renders for all enum values', () => {
    cy.mount(
      <ChakraThemeProvider>
        <ul>
          {cardRarities.map((rarity) => (
            <li key={rarity}>
              <CardRarityLabel rarity={rarity}></CardRarityLabel>
            </li>
          ))}
        </ul>
      </ChakraThemeProvider>
    );
    cardRarities.forEach((rarity) => cy.contains(rarity));
    cy.screenshot();
  });

  it('Renders unknown value', () => {
    cy.mount(
      <ChakraThemeProvider>
        <CardRarityLabel rarity={'bla'}></CardRarityLabel>
      </ChakraThemeProvider>
    );
    cy.contains('bla');
    cy.screenshot();
  });

  it('Renders null', () => {
    cy.mount(
      <ChakraThemeProvider>
        <CardRarityLabel rarity={null}></CardRarityLabel>
      </ChakraThemeProvider>
    );
    cy.get('span').should('exist');
    cy.screenshot();
  });
});

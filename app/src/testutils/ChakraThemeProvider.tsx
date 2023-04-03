import { ChakraProvider, extendTheme } from '@chakra-ui/react';
import { ReactNode } from 'react';

type ChakraProviderProps = {
  children: ReactNode;
};
export default function ChakraThemeProvider({ children }: ChakraProviderProps) {
  const theme = extendTheme({ config: { initialColorMode: 'dark' } });
  return <ChakraProvider theme={theme}>{children}</ChakraProvider>;
}

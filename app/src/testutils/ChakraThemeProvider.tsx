import { ChakraProvider, extendTheme } from '@chakra-ui/react';
import { ReactNode } from 'react';

type ChakraProviderProps = {
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  children: ReactNode;
};
export default function ChakraThemeProvider({ children }: ChakraProviderProps) {
  const theme = extendTheme({ config: { initialColorMode: 'dark' } });
  return <ChakraProvider theme={theme}>{children}</ChakraProvider>;
}

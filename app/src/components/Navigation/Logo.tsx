import logo from '../../assets/logo.png';
import { styles } from './styles';
import { Box } from '@chakra-ui/react';
import Image from 'next/image';
import { CSSProperties } from 'react';

type LogoProperties = {
  style?: CSSProperties;
};

export default function Logo({ style = {} }: LogoProperties) {
  const logoStyles = styles.logo;
  return (
    <Box>
      <Image
        alt={'Swiss Card Exchange Logo'}
        src={logo}
        style={{
          objectFit: 'contain',
          minHeight: logoStyles.height,
          maxHeight: logoStyles.height,
          ...style,
        }}
      />
    </Box>
  );
}

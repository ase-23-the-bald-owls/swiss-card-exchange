import { styles } from './styles';
import logo from '@/assets/SCE_logo.png';
import { HomeRoute } from '@/utils/routes';
import { Box } from '@chakra-ui/react';
import Image from 'next/image';
import Link from 'next/link';
import { CSSProperties } from 'react';

type LogoProperties = {
  style?: CSSProperties;
};

export default function Logo({ style = {} }: LogoProperties) {
  const logoStyles = styles.logo;
  return (
    <Box>
      <Link href={HomeRoute}>
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
      </Link>
    </Box>
  );
}

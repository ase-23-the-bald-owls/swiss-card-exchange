import { Badge } from '@chakra-ui/react';
import { ThemeTypings } from '@chakra-ui/styled-system';

// noinspection JSUnusedGlobalSymbols
export enum CardRarityEnum {
  COMMON = 'Common',
  RARE = 'Rare',
  SUPER_RARE = 'Super Rare',
  ULTRA_RARE = 'Ultra Rare',
  SECRET_RARE = 'Secret Rare',
  STARLIGHT_RARE = 'Starlight Rare',
  PREMIUM_GOLD_RARE = 'Premium Gold Rare',
}

export type CardRarity =
  | (typeof CardRarityEnum)[keyof typeof CardRarityEnum]
  | string
  | null;

type CardRarityProps = {
  rarity: CardRarity;
};

function toColor(rarity: CardRarity): ThemeTypings['colorSchemes'] {
  switch (rarity) {
    case 'Common':
      return 'gray';
    case 'Rare':
      return 'twitter';
    case 'Ultra Rare':
      return 'yellow';
    case 'Secret Rare':
      return 'cyan';
    case 'Starlight Rare':
      return 'blue';
    case 'Premium Gold Rare':
      return 'purple';
  }
  return 'default';
}

export function CardRarityLabel({ rarity }: CardRarityProps) {
  return <Badge colorScheme={toColor(rarity)}>{rarity ?? ''}</Badge>;
}

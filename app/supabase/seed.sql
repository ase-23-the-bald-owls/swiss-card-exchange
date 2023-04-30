-- noinspection SqlNoDataSourceInspectionForFile
-- noinspection SqlResolveForFile @ any/"auth"
CALL auth.sce_create_user ('user1@example.com');

INSERT INTO
  public.products (
    title,
    description,
    rarity,
    SET
,
      card_type,
      attributes,
      TYPES
  )
VALUES
  (
    'Witch of the Black Forest',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Metal Raiders',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'Plasma Ball',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Photon Shockwave',
    'Monster',
    'LIGHT',
    'Thunder / Effect'
  ),
  (
    'Koa''ki Meiru Supplier',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Rise of the Duelist',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Coffin Seller',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaonic Guardian',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Elborz, the Sacred Lands of Simorgh',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rising Rampage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Cloudcastle',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Alliance',
    'Monster',
    'WIND',
    'Machine / Synchro / Effect'
  ),
  (
    'Samsara',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Patroid',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Revolution',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Gauntlet Launcher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'EARTH',
    'Warrior / Xyz / Effect'
  ),
  (
    'Reptilianne Scylla',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Stardust Overdrive',
    'Monster',
    'DARK',
    'Reptile / Effect'
  ),
  (
    'Otoshidamashi',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lightning Overdrive',
    'Monster',
    'EARTH',
    'Beast / Tuner / Effect'
  ),
  (
    'Sunvine Cross Breed',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lightning Overdrive',
    'Spell',
    NULL,
    NULL
  ),
  (
    'D.D. Sprite',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Storm of Ragnarok',
    'Monster',
    'LIGHT',
    'Fairy / Tuner / Effect'
  ),
  (
    'Insect Knight',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flaming Eternity',
    'Monster',
    'EARTH',
    'Insect'
  ),
  (
    'Paleozoic Olenoides',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'The Dark Illusion',
    'Trap',
    NULL,
    NULL
  ),
  (
    'F.A. Pit Stop',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Circuit Break',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Ultra Beetrooper Absolute Hercules',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Burst of Destiny',
    'Monster',
    'EARTH',
    'Insect / Fusion / Effect'
  ),
  (
    'Aromaseraphy Angelica',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Invasion: Vengeance',
    'Monster',
    'LIGHT',
    'Plant / Tuner / Effect'
  ),
  (
    'Counselor Lily',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The Duelist Genesis',
    'Monster',
    'EARTH',
    'Fairy / Tuner'
  ),
  (
    'Darksea Rescue',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Ancient Prophecy',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Fake Hero',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Power of the Duelist',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Dream Mirror Phantasms',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Chaos Impact',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Ibicella Lutea',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Ignition Assault',
    'Monster',
    'EARTH',
    'Plant / Effect'
  ),
  (
    'Rise of the Salamangreat',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul Fusion',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Top Runner',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Storm of Ragnarok',
    'Monster',
    'WIND',
    'Machine / Tuner'
  ),
  (
    'The Traveler and the Burning Abyss',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Duelist Alliance',
    'Trap',
    NULL,
    NULL
  ),
  (
    'The Terminus of the Burning Abyss',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Crossed Souls',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Black Veloci',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Darkness',
    'Monster',
    'EARTH',
    'Dinosaur / Effect'
  ),
  (
    'Swarm of Locusts',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Pharaonic Guardian',
    'Monster',
    'DARK',
    'Insect / Effect'
  ),
  (
    'Blackwing - Shura the Blue Flame',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Battle',
    'Monster',
    'DARK',
    'Winged Beast / Effect'
  ),
  (
    'Live☆Twin Ki-sikil Frost',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Lightning Overdrive',
    'Monster',
    'LIGHT',
    'Aqua / Effect'
  ),
  (
    'The League of Uniform Nomenclature',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Nordic Relic Brisingamen',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Storm of Ragnarok',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Stardust Synchron',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Dawn of Majesty',
    'Monster',
    'LIGHT',
    'Machine / Tuner / Effect'
  ),
  (
    'Double Resonator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Maximum Crisis ',
    'Monster',
    'FIRE',
    'Fiend / Tuner / Effect'
  ),
  (
    'Shield Wing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Absolute Powerforce',
    'Monster',
    'WIND',
    'Winged Beast / Effect'
  ),
  (
    'Greatfly',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Flames of Destruction',
    'Monster',
    'WIND',
    'Insect / Link / Effect'
  ),
  (
    'Skull Invitation',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaoh''s Servant',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Enraged Muka Muka',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul of the Duelist',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Mega Thunderball',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Metal Raiders',
    'Monster',
    'WIND',
    'Thunder'
  ),
  (
    'Fire Opal Head',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Battle of Chaos',
    'Monster',
    'FIRE',
    'Dinosaur / Pendulum / Normal'
  ),
  (
    'Sea Dragon Lord Gishilnodon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Raging Battle',
    'Monster',
    'WATER',
    'Sea Serpent / Synchro / Effect'
  ),
  (
    'Reinforcement of the Army',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Legacy of Darkness',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Big Piece Golem',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Duelist Genesis',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Dark World Lightning',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Heroic Challenger - Swordshield',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Amaze Attraction Horror House',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Lightning Overdrive',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Interplanetary Invader "A"',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Light of Destruction',
    'Monster',
    'LIGHT',
    'Reptile / Effect'
  ),
  (
    'Link Devotee',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Horizon',
    'Monster',
    'EARTH',
    'Cyberse / Link / Effect'
  ),
  (
    'Smashing Horn',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Generation Force',
    'Trap',
    NULL,
    NULL
  ),
  (
    'The Flute of Summoning Kuriboh',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Scrap Lube',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Starstrike Blast',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Nitro Unit',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Lost Millennium',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Goblin Black Ops',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Gladiator''s Assault',
    'Monster',
    'DARK',
    'Beast-Warrior / Effect'
  ),
  (
    'Skull Red Bird',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'WIND',
    'Winged Beast'
  ),
  (
    'Balance of Judgment',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Clash of Rebellions',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Supreme King Gate Infinity',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Maximum Crisis ',
    'Monster',
    'DARK',
    'Fiend / Pendulum / Effect'
  ),
  (
    'Turbo Synchron',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Crossroads of Chaos',
    'Monster',
    'WIND',
    'Machine / Tuner / Effect'
  ),
  (
    'Pot of Greed',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Legend of Blue Eyes White Dragon',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Shell Knight',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Myutant Expansion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Rage',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Flame Manipulator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'FIRE',
    'Spellcaster / Normal'
  ),
  (
    'Svartalf of the Nordic Alfar',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Storm of Ragnarok',
    'Monster',
    'DARK',
    'Spellcaster / Tuner / Effect'
  ),
  (
    'Garuda the Wind Spirit',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Monster',
    'WIND',
    'Winged Beast / Effect'
  ),
  (
    'Root Water',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'WATER',
    'Fish'
  ),
  (
    'Gemini Lancer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Darkness',
    'Monster',
    'WATER',
    'Sea Serpent / Gemini'
  ),
  (
    'Tierra, Source of Destruction',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Raging Tempest',
    'Monster',
    'LIGHT',
    'Fiend / Effect'
  ),
  (
    'Cyclon Laser',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Gigastone Omega',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Battle',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Re-qliate',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Secrets of Eternity',
    'Trap',
    NULL,
    NULL
  ),
  (
    'The White Stone of Ancients',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Shining Victories',
    'Monster',
    'LIGHT',
    'Dragon / Tuner / Effect'
  ),
  (
    'Despian Comedy',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'DARK',
    'Fairy / Effect'
  ),
  (
    'Speedburst Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Savage Strike',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'DNA Checkup',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossroads of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Gendo the Ascetic Monk',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shining Victories',
    'Monster',
    'WATER',
    'Spellcaster / Effect'
  ),
  (
    'Scrap Rage',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Revolution',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Shien''s Castle of Mist',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Strike of Neos',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Barkion''s Bark',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Starstrike Blast',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Hieratic Sun Dragon Overlord of Heliopolis',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Galactic Overlord',
    'Monster',
    'LIGHT',
    'Dragon / Xyz / Effect'
  ),
  (
    'Ancient Fairy Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ancient Prophecy',
    'Monster',
    'LIGHT',
    'Dragon / Synchro / Effect'
  ),
  (
    'Machine King - 3000 B.C.',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Absolute Powerforce',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Doomking Balerdroch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'DARK',
    'Zombie / Effect'
  ),
  (
    'Ocubeam',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Metal Raiders',
    'Monster',
    'LIGHT',
    'Fairy'
  ),
  (
    'Emergency Assistance',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ancient Prophecy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Dark Hunter',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'The Duelist Genesis',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Dogmatika Theo, the Iron Punch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rise of the Duelist',
    'Monster',
    'LIGHT',
    'Spellcaster / Effect'
  ),
  (
    'Altergeist Failover',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Defensive Tactics',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Gladiator''s Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Performapal Bowhopper',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossed Souls',
    'Monster',
    'EARTH',
    'Insect / Effect'
  ),
  (
    'XX-Saber Boggart Knight',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The Shining Darkness',
    'Monster',
    'EARTH',
    'Beast-Warrior / Effect'
  ),
  (
    'Oops!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Extreme Force',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Celestial Wolf Lord, Blue Sirius',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Shadow Specters',
    'Monster',
    'DARK',
    'Beast-Warrior / Synchro / Effect'
  ),
  (
    'Plunder Patrollship Moerk',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Ignition Assault',
    'Monster',
    'DARK',
    'Fiend / Xyz / Effect'
  ),
  (
    'Dinowrestler Capoeiraptor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul Fusion',
    'Monster',
    'EARTH',
    'Dinosaur / Effect'
  ),
  (
    'Bonfire Colossus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Cosmo Blazer',
    'Monster',
    'FIRE',
    'Beast-Warrior / Effect'
  ),
  (
    'Survival of the Fittest',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow Specters',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Lightray Sorcerer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Galactic Overlord',
    'Monster',
    'LIGHT',
    'Spellcaster / Effect'
  ),
  (
    'Dream Mirror Hypnagogia',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Chaos Impact',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Zaborg the Thunder Monarch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Ancient Sanctuary',
    'Monster',
    'LIGHT',
    'Thunder / Effect'
  ),
  (
    'Shogi Knight',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Primal Origin',
    'Monster',
    'EARTH',
    'Beast-Warrior / Effect'
  ),
  (
    'Magical Explosion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Cybernetic Revolution',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Mistaken Arrest',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Clash of Rebellions',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Karakuri Strategist mdl 248 "Nishipachi"',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Starstrike Blast',
    'Monster',
    'EARTH',
    'Machine / Tuner'
  ),
  (
    'Rescue Cat',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flaming Eternity',
    'Monster',
    'EARTH',
    'Beast / Effect'
  ),
  (
    'Demise of the Land',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Light of Destruction',
    'Spell',
    NULL,
    NULL
  ),
  (
    'World Legacy - "World Wand"',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul Fusion',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Neiroy, the Dream Mirror Traitor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Battle of Chaos',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Archfiend Black Skull Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Clash of Rebellions',
    'Monster',
    'DARK',
    'Dragon / Fusion / Effect'
  ),
  (
    'Fairy Box',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Labyrinth of Nightmare',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Mystical Cards of Light',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Light of Destruction',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Hyper Hammerhead',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Invasion of Chaos',
    'Monster',
    'EARTH',
    'Dinosaur / Effect'
  ),
  (
    'Ally of Justice Unknown Crusher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Starstrike Blast',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Tytannial, Princess of Camellias',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Crossroads of Chaos',
    'Monster',
    'WIND',
    'Plant / Effect'
  ),
  (
    'Dark Witch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Spell Ruler',
    'Monster',
    'LIGHT',
    'Fairy'
  ),
  (
    'Super Defense Robot Lio',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Judgment of the Light',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Guardian Angel Joan',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Invasion of Chaos',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Thousand Energy',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Ancient Sanctuary',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Reign-Beaux, Overlord of Dark World',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Strike of Neos',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Flower Cardian Maple with Deer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Invasion: Vengeance',
    'Monster',
    'DARK',
    'Warrior / Effect'
  ),
  (
    'Contact Out',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Gladiator''s Assault',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Core Compression',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Ancient Prophecy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Destruction Swordsman Fusion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Sylvan Charity',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Primal Origin',
    'Spell',
    NULL,
    NULL
  ),
  (
    'D/D/D Supersight King Zero Maxwell',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lightning Overdrive',
    'Monster',
    'DARK',
    'Fiend / Pendulum / Effect'
  ),
  (
    'Fishborg Doctor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Alliance',
    'Monster',
    'WATER',
    'Fish / Effect'
  ),
  (
    'Tornado Wall',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Labyrinth of Nightmare',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Gouki The Powerload Ogre',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Eternity Code',
    'Monster',
    'EARTH',
    'Warrior / Link / Effect'
  ),
  (
    'Dragon Dowser',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Secrets of Eternity',
    'Monster',
    'EARTH',
    'Wyrm / Effect'
  ),
  (
    'Deepsea Shark',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Metal Raiders',
    'Monster',
    'WATER',
    'Fish / Fusion'
  ),
  (
    'Brotherhood of the Fire Fist - Cardinal',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'FIRE',
    'Beast-Warrior / Xyz / Effect'
  ),
  (
    'Trickstar Divaridis',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Savage Strike',
    'Monster',
    'LIGHT',
    'Fairy / Link / Effect'
  ),
  (
    'Pendulum Reborn',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Breakers of Shadow',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Yosenju Oroshi Channeling',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rising Rampage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Winged Sage Falcos',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaonic Guardian',
    'Monster',
    'WIND',
    'Winged Beast / Effect'
  ),
  (
    'Mermail Abysspike',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Abyss Rising',
    'Monster',
    'WATER',
    'Fish / Effect'
  ),
  (
    'Emperor Sem',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Battle',
    'Monster',
    'LIGHT',
    'Fiend / Effect'
  ),
  (
    'Double Summon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Tactical Evolution',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Deal of Phantom',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Nurse Dragonmaid',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Premium Gold Rare',
    'Maximum Gold',
    'Monster',
    'EARTH',
    'Dragon / Effect'
  ),
  (
    'Synchro Control',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Absolute Powerforce',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Scarr, Scout of Dark World',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Sales Pitch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Ignition Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Dark Simorgh',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Stardust Overdrive',
    'Monster',
    'DARK',
    'Winged Beast / Effect'
  ),
  (
    'Koa''ki Meiru Powerhand',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Raging Battle',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Triamid Kingolem',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Dark Illusion',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Abyssal Kingshark',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Tactical Evolution',
    'Monster',
    'WATER',
    'Fish / Effect'
  ),
  (
    'Superheavy Samurai Blowtorch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Clash of Rebellions',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Revival Rose',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Shining Darkness',
    'Monster',
    'DARK',
    'Plant / Effect'
  ),
  (
    'Springans Captain Sargas',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Blazing Vortex',
    'Monster',
    'FIRE',
    'Machine / Effect'
  ),
  (
    'Bujin Hirume',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Primal Origin',
    'Monster',
    'LIGHT',
    'Beast-Warrior / Effect'
  ),
  (
    'Mystical Knight of Jackal',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Pharaonic Guardian',
    'Monster',
    'LIGHT',
    'Beast-Warrior / Effect'
  ),
  (
    'No Entry!!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Gladiator''s Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Igknight Burst',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Clash of Rebellions',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Metaltron XII, the True Dracombatant',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Maximum Crisis ',
    'Monster',
    'LIGHT',
    'Wyrm / Effect'
  ),
  (
    'Wasteland',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Materiactor Gigadra',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Blazing Vortex',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'S-Force Orrafist',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Blazing Vortex',
    'Monster',
    'LIGHT',
    'Cyberse / Effect'
  ),
  (
    'Salvage Warrior',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Extreme Victory',
    'Monster',
    'WATER',
    'Warrior / Effect'
  ),
  (
    'Star Blast',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Crimson Crisis',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Reptilianne Ramifications',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Burst of Destiny',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Magician of Faith',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Metal Raiders',
    'Monster',
    'LIGHT',
    'Spellcaster / Flip / Effect'
  ),
  (
    'Proto-Cyber Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Shadow of Infinity',
    'Monster',
    'LIGHT',
    'Machine / Effect'
  ),
  (
    'Princess of Tsurugi',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Metal Raiders',
    'Monster',
    'WIND',
    'Warrior / Effect'
  ),
  (
    'Morphtronic Slingen',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crimson Crisis',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Cyber Dragon Infinity',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Breakers of Shadow',
    'Monster',
    'LIGHT',
    'Machine / Xyz / Effect'
  ),
  (
    'Number 41: Bagooska the Terribly Tired Tapir',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Circuit Break',
    'Monster',
    'EARTH',
    'Fiend / Xyz / Effect'
  ),
  (
    'Mecha Phantom Beast Coltwing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Judgment of the Light',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Aqua Madoor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'WATER',
    'Spellcaster / Normal'
  ),
  (
    '1st Movement Solo',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The New Challengers',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Krawler Receptor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Circuit Break',
    'Monster',
    'EARTH',
    'Insect / Flip / Effect'
  ),
  (
    'Swordsoul Blackout',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Burst of Destiny',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Yomi Ship',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Pharaonic Guardian',
    'Monster',
    'WATER',
    'Aqua / Effect'
  ),
  (
    'Moonlit Papillon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Galactic Overlord',
    'Monster',
    'LIGHT',
    'Insect / Effect'
  ),
  (
    'Junk Blader',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Judgment of the Light',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Plunder Patroll Booty',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Ignition Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Edge Imp Sabres',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The New Challengers',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Oneiros, the Dream Mirror Tormentor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Blazing Vortex',
    'Monster',
    'DARK',
    'Fiend / Fusion / Effect'
  ),
  (
    'Preparation of Rites',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Maximum Gold',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Barricadeborg Blocker',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rising Rampage',
    'Monster',
    'DARK',
    'Machine / Link / Effect'
  ),
  (
    'Virtual World Gate - Qinglong',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Rage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Gaia Plate the Earth Giant',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ancient Prophecy',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Code Exporter',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'WIND',
    'Cyberse / Effect'
  ),
  (
    'Jurrac Impact',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cosmo Blazer',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Two-Pronged Attack',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Legend of Blue Eyes White Dragon',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Number 53: Heart-eartH',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Cosmo Blazer',
    'Monster',
    'DARK',
    'Fiend / Xyz / Effect'
  ),
  (
    'Jiaotu, Darkness of the Yang Zing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'The New Challengers',
    'Monster',
    'DARK',
    'Wyrm / Tuner / Effect'
  ),
  (
    'Gladiator Beast Secutor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Gladiator''s Assault',
    'Monster',
    'WIND',
    'Reptile / Effect'
  ),
  (
    'Shiranui Sunsaga',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Tempest',
    'Monster',
    'FIRE',
    'Zombie / Synchro / Effect'
  ),
  (
    'Dark King of the Abyss',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'DARK',
    'Fiend'
  ),
  (
    'Mermail Abyssnose',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cosmo Blazer',
    'Monster',
    'WATER',
    'Fish / Effect'
  ),
  (
    'Chronomaly Moai Carrier',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legacy of the Valiant',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'World Legacy''s Memory',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Horizon',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Baxia, Brightness of the Yang Zing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'LIGHT',
    'Wyrm / Synchro / Effect'
  ),
  (
    'Fortune Vision',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Rising Rampage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Cyber Shadow Gardna',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Cyberdark Impact',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Arrivalrivals',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Circuit Break',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Fire Princess',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Labyrinth of Nightmare',
    'Monster',
    'FIRE',
    'Pyro / Effect'
  ),
  (
    'Uraby',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'EARTH',
    'Dinosaur / Normal'
  ),
  (
    'Hey, Trunade!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Maximum Gold',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Igknight Gallant',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Clash of Rebellions',
    'Monster',
    'FIRE',
    'Warrior / Pendulum'
  ),
  (
    'Dragon Buster Destruction Sword',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Monster',
    'DARK',
    'Dragon / Tuner / Effect'
  ),
  (
    'Ancient Warriors - Ingenious Zhuge Kong',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Eternity Code',
    'Monster',
    'WIND',
    'Beast-Warrior / Effect'
  ),
  (
    'Dark Deal',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Raigeki',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Legend of Blue Eyes White Dragon',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Summoner''s Art',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Tactical Evolution',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Twilight Ninja Shingetsu',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Monster',
    'DARK',
    'Warrior / Effect'
  ),
  (
    'Noctovision Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Eternity Code',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'Shaddoll Squamata',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Alliance',
    'Monster',
    'DARK',
    'Spellcaster / Flip / Effect'
  ),
  (
    'Xyz Encore',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Judgment of the Light',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Fortune Lady Past',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Rising Rampage',
    'Monster',
    'DARK',
    'Spellcaster / Tuner / Effect'
  ),
  (
    'Dual Avatar Feet - Kokoku',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Phantom Rage',
    'Monster',
    'LIGHT',
    'Warrior / Effect'
  ),
  (
    'Flamvell Commando',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ancient Prophecy',
    'Monster',
    'FIRE',
    'Pyro / Effect'
  ),
  (
    'Amaze Attraction Cyclo-Coaster',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Lightning Overdrive',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Kai-Den Kendo Spirit',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flames of Destruction',
    'Monster',
    'WIND',
    'Warrior / Pendulum / Spirit / Effect'
  ),
  (
    'Rikka Queen Strenna',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Rise of the Duelist',
    'Monster',
    'WATER',
    'Plant / Xyz / Effect'
  ),
  (
    'Despian Proskenion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dawn of Majesty',
    'Monster',
    'LIGHT',
    'Fiend / Fusion / Effect'
  ),
  (
    'Speedroid Ultra Hound',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Legendary Duelists: Synchro Storm',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Armed Dragon LV5',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Soul of the Duelist',
    'Monster',
    'WIND',
    'Dragon / Effect'
  ),
  (
    'The Return to the Normal',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rising Rampage',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Blackeyes, the Plunder Patroll Seaguide',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lightning Overdrive',
    'Monster',
    'WATER',
    'Fiend / Effect'
  ),
  (
    'Brilliant Fusion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Clash of Rebellions',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Frontline Base',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Magician''s Force',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Stall Turn',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dawn of Majesty',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Gravekeeper''s Watcher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaonic Guardian',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'Toy Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'The Duelist Genesis',
    'Monster',
    'LIGHT',
    'Spellcaster / Effect'
  ),
  (
    'Staring Contest',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flames of Destruction',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Thunder Dragon Titan',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Soul Fusion',
    'Monster',
    'LIGHT',
    'Thunder / Fusion / Effect'
  ),
  (
    'Necro Defender',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Extreme Victory',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'D - Formation',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Light of Destruction',
    'Spell',
    NULL,
    NULL
  ),
  (
    'World Legacy - "World Lance"',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Flames of Destruction',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Megalith Bethor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ignition Assault',
    'Monster',
    'EARTH',
    'Rock / Ritual / Effect'
  ),
  (
    'Qliphort Monolith',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Secrets of Eternity',
    'Monster',
    'EARTH',
    'Machine / Pendulum'
  ),
  (
    'Tower of Babel',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Invasion of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Rai-Mei',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Crossroads of Chaos',
    'Monster',
    'LIGHT',
    'Thunder / Effect'
  ),
  (
    'Lemuria, the Forgotten City',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Abyss Rising',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Crusadia Leonis',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Horizon',
    'Monster',
    'EARTH',
    'Beast / Effect'
  ),
  (
    'Space Cyclone',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Photon Shockwave',
    'Spell',
    NULL,
    NULL
  ),
  (
    'The Sanctuary in the Sky',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Ancient Sanctuary',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Ritual Sealing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Strike of Neos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Ojama Delta Hurricane!!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Invasion of Chaos',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Petit Angel',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'LIGHT',
    'Fairy'
  ),
  (
    'Noble Arms of Destiny',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Lord of the Tachyon Galaxy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Maxx "C"',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Storm of Ragnarok',
    'Monster',
    'EARTH',
    'Insect / Effect'
  ),
  (
    'Chain Destruction',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Pharaoh''s Servant',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Maximum Six',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Light of Destruction',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Predaplant Ophrys Scorpio',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Maximum Crisis ',
    'Monster',
    'DARK',
    'Plant / Effect'
  ),
  (
    'Superheavy Samurai Scarecrow',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rise of the Duelist',
    'Monster',
    'EARTH',
    'Machine / Link / Effect'
  ),
  (
    'Dinomorphia Rexterm',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Dimension Force',
    'Monster',
    'DARK',
    'Dinosaur / Fusion / Effect'
  ),
  (
    'Myutant GB-88',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Rage',
    'Monster',
    'WATER',
    'Psychic / Effect'
  ),
  (
    'Thunder Dragonroar',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Soul Fusion',
    'Monster',
    'DARK',
    'Thunder / Effect'
  ),
  (
    'Rank-Up-Magic Cipher Ascension',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Tempest',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Hero Heart',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Shien''s Daredevil',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Storm of Ragnarok',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Zero Gravity',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Invasion of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Divine Serpent Geh',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Horizon',
    'Monster',
    'DARK',
    'Reptile / Effect'
  ),
  (
    'DMZ Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rising Rampage',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'Pursuit Chaser',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossroads of Chaos',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Bye Bye Damage',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Chaos Impact',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Flame Administrator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Force',
    'Monster',
    'FIRE',
    'Cyberse / Link / Effect'
  ),
  (
    'Crystron Quariongandrax',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Raging Tempest',
    'Monster',
    'WATER',
    'Machine / Synchro / Effect'
  ),
  (
    'Loss Time',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Savage Strike',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Proxy F Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Eternity Code',
    'Monster',
    'FIRE',
    'Cyberse / Link / Effect'
  ),
  (
    'Hero Signal',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Lost Millennium',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Salamangreat Heatleo',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Soul Fusion',
    'Monster',
    'FIRE',
    'Cyberse / Link / Effect'
  ),
  (
    'D.D. Survivor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Lost Millennium',
    'Monster',
    'DARK',
    'Warrior / Effect'
  ),
  (
    'Lady Assailant of Flames',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Monster',
    'FIRE',
    'Pyro / Flip / Effect'
  ),
  (
    'Ursarctic Drytron',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Burst of Destiny',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Agave Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul Fusion',
    'Monster',
    'EARTH',
    'Wyrm / Link / Effect'
  ),
  (
    'Fuhma Shuriken',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Invasion of Chaos',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Aluber the Jester of Despia',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Dawn of Majesty',
    'Monster',
    'DARK',
    'Fairy / Effect'
  ),
  (
    'Fortissimo the Mobile Fortress',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Victory',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Nadir Servant',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Rise of the Duelist',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Sealing Ceremony of Raiton',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Galactic Overlord',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Time Thief Perpetua',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Ignition Assault',
    'Monster',
    'DARK',
    'Psychic / Xyz / Effect'
  ),
  (
    'Speedroid Horse Stilts',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Tempest',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Kozmo DOG Fighter',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dimension of Chaos',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Danger! Thunderbird!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Soul Fusion',
    'Monster',
    'DARK',
    'Winged Beast / Effect'
  ),
  (
    'There Can Be Only One',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Maximum Gold',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Tour Guide From the Underworld',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Premium Gold Rare',
    'Maximum Gold',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Lost Wind',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Tempest',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Three Trolling Trolls',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flames of Destruction',
    'Monster',
    'WATER',
    'Beast-Warrior / Tuner / Effect'
  ),
  (
    'Infernity Archer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Cosmo Blazer',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Karakuri Showdown Castle',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Starstrike Blast',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Criosphinx',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'The Lost Millennium',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Sprind the Irondash Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Blazing Vortex',
    'Monster',
    'DARK',
    'Machine / Fusion / Effect'
  ),
  (
    'Mozarta the Melodious Maestra',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Duelist Alliance',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Lancephorhynchus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The New Challengers',
    'Monster',
    'WIND',
    'Dinosaur / Pendulum / Normal'
  ),
  (
    'Abyss Warrior',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Abyss Rising',
    'Monster',
    'WATER',
    'Aqua / Effect'
  ),
  (
    'End of the World',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Runaway Karakuri',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Victory',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Code Generator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'EARTH',
    'Cyberse / Effect'
  ),
  (
    'Superheavy Samurai General Jade',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Monster',
    'EARTH',
    'Machine / Pendulum / Effect'
  ),
  (
    'Vennominaga the Deity of Poisonous Snakes',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Tactical Evolution',
    'Monster',
    'DARK',
    'Reptile / Effect'
  ),
  (
    'Xiangke Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Clash of Rebellions',
    'Monster',
    'DARK',
    'Spellcaster / Pendulum / Effect'
  ),
  (
    'Snapdragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legacy of the Valiant',
    'Monster',
    'EARTH',
    'Plant / Effect'
  ),
  (
    'Face-Off',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Duelist Alliance',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Swordsoul Supreme Sovereign - Chengying',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Burst of Destiny',
    'Monster',
    'WATER',
    'Wyrm / Synchro / Effect'
  ),
  (
    'Orea, the Sylvan High Arbiter',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Primal Origin',
    'Monster',
    'DARK',
    'Plant / Xyz / Effect'
  ),
  (
    'Spell Absorption',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Flaming Eternity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'World Legacy Key',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Extreme Force',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Kozmo Delta Shuttle',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Magikey Fiend - Transfurlmine',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Burst of Destiny',
    'Monster',
    'FIRE',
    'Thunder / Synchro / Effect'
  ),
  (
    'Umbral Soul',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Strike of Neos',
    'Monster',
    'DARK',
    'Reptile / Effect'
  ),
  (
    'Majestic Mech - Goryu',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Enemy of Justice',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Ancient Gear Golem',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'The Lost Millennium',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Overlay Regen',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Wee Witch''s Apprentice',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Cybernetic Horizon',
    'Monster',
    'DARK',
    'Spellcaster / Link / Effect'
  ),
  (
    'Card Rotator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossroads of Chaos',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Alchemic Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Return of the Duelist',
    'Monster',
    'DARK',
    'Spellcaster / Xyz / Effect'
  ),
  (
    'Battleguard King',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Alliance',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Torrential Tribute',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Labyrinth of Nightmare',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Dinomorphia Reversion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Battle of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Giant Beetrooper Invincible Atlas',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Dawn of Majesty',
    'Monster',
    'EARTH',
    'Insect / Link / Effect'
  ),
  (
    'Jar of Greed',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Labyrinth of Nightmare',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Creeping Doom Manta',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rise of Destiny',
    'Monster',
    'WATER',
    'Fish / Effect'
  ),
  (
    'Starry Knight Ciel',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lightning Overdrive',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Mistake',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Shadow Specters',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Lockout Gardna',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Force',
    'Monster',
    'EARTH',
    'Cyberse / Effect'
  ),
  (
    'Medium Piece Golem',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'The Duelist Genesis',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Buster Blader, the Dragon Destroyer Swordsman',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Breakers of Shadow',
    'Monster',
    'LIGHT',
    'Warrior / Fusion / Effect'
  ),
  (
    'Unknown Synchron',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legendary Duelists: Synchro Storm',
    'Monster',
    'DARK',
    'Machine / Tuner / Effect'
  ),
  (
    'Fireyarou',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'FIRE',
    'Pyro'
  ),
  (
    'Parlor Dragonmaid',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Premium Gold Rare',
    'Maximum Gold',
    'Monster',
    'WIND',
    'Dragon / Effect'
  ),
  (
    'Motor Shell',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Gemini Booster',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Stardust Overdrive',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Humanoid Worm Drake',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Labyrinth of Nightmare',
    'Monster',
    'WATER',
    'Aqua / Fusion'
  ),
  (
    'Torque Tune Gear',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Invasion: Vengeance',
    'Monster',
    'LIGHT',
    'Machine / Union / Tuner / Effect'
  ),
  (
    'Libromancer Mystigirl',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dimension Force',
    'Monster',
    'LIGHT',
    'Fairy / Ritual / Effect'
  ),
  (
    'Blue-Eyes Jet Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Battle of Chaos',
    'Monster',
    'LIGHT',
    'Dragon / Effect'
  ),
  (
    'Bicular',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Absolute Powerforce',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Fear from the Dark',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Dark Crisis',
    'Monster',
    'DARK',
    'Zombie / Effect'
  ),
  (
    'Ancient Warriors - Rebellious Lu Feng',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Blazing Vortex',
    'Monster',
    'DARK',
    'Beast-Warrior / Effect'
  ),
  (
    'Lightning Conger',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Monster',
    'WATER',
    'Thunder'
  ),
  (
    'Mekk-Knight Green Horizon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Force',
    'Monster',
    'LIGHT',
    'Psychic / Effect'
  ),
  (
    'Fishborg Launcher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Abyss Rising',
    'Monster',
    'WATER',
    'Fish / Tuner / Effect'
  ),
  (
    'Kozmojo',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Breakers of Shadow',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Amazoness Archer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Hieratic Dragon of Gebeb',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Galactic Overlord',
    'Monster',
    'LIGHT',
    'Dragon / Effect'
  ),
  (
    'Lunalight Panther Dancer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Shining Victories',
    'Monster',
    'DARK',
    'Beast-Warrior / Fusion / Effect'
  ),
  (
    'Broken Blocker',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The Duelist Genesis',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Iron Core Specimen Lab',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Absolute Powerforce',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Crusadia Testament',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dark Neostorm',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Barrier Wave',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Duelist Revolution',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Offering to the Snake Deity',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Phantom Darkness',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Shinobird Crane',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Tempest',
    'Monster',
    'WIND',
    'Winged Beast / Spirit / Effect'
  ),
  (
    'Rare Value',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Force of the Breaker',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Red-Eyes Toon Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Shining Victories',
    'Monster',
    'DARK',
    'Dragon / Toon / Effect'
  ),
  (
    'ZW - Lightning Blade',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Cosmo Blazer',
    'Monster',
    'LIGHT',
    'Beast / Effect'
  ),
  (
    'Aromage Rosemary',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Clash of Rebellions',
    'Monster',
    'WATER',
    'Plant / Effect'
  ),
  (
    'Fengli the Soldrapom',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Burst of Destiny',
    'Monster',
    'FIRE',
    'Plant / Tuner / Effect'
  ),
  (
    'Destruction Ring',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Invasion of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Gravitic Orb',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Tactical Evolution',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Earthbound Immortal Chacu Challhua',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ancient Prophecy',
    'Monster',
    'DARK',
    'Fish / Effect'
  ),
  (
    'Moisture Creature',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaonic Guardian',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Nobleman of Extermination',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Pharaoh''s Servant',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Cloudian - Smoke Ball',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Gladiator''s Assault',
    'Monster',
    'WATER',
    'Fairy'
  ),
  (
    'Infernoid Piaty',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Secrets of Eternity',
    'Monster',
    'FIRE',
    'Fiend / Effect'
  ),
  (
    'Koa''ki Meiru Wall',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Starstrike Blast',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Chthonian Polymer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Amazoness Archers',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Magician''s Force',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Ghostrick Festival',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Battle of Chaos',
    'Monster',
    'DARK',
    'Spellcaster / Link / Effect'
  ),
  (
    'Armed Dragon Lightning',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Blazing Vortex',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Spiritual Beast Tamer Winda',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Tempest',
    'Monster',
    'WIND',
    'Psychic / Effect'
  ),
  (
    'Isolde, Two Tales of the Noble Knights',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Extreme Force',
    'Monster',
    'LIGHT',
    'Warrior / Link / Effect'
  ),
  (
    'Crystal Beast Amethyst Cat',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Force of the Breaker',
    'Monster',
    'EARTH',
    'Beast / Effect'
  ),
  (
    'El Shaddoll Construct',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Duelist Alliance',
    'Monster',
    'LIGHT',
    'Fairy / Fusion / Effect'
  ),
  (
    'Danger! Ogopogo!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Savage Strike',
    'Monster',
    'DARK',
    'Sea Serpent / Effect'
  ),
  (
    'Crusadia Reclusia',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cybernetic Horizon',
    'Monster',
    'FIRE',
    'Spellcaster / Effect'
  ),
  (
    'Stonehenge Methods',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Mecha Phantom Beast Warbluran',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Judgment of the Light',
    'Monster',
    'WIND',
    'Machine / Tuner / Effect'
  ),
  (
    'Mecha Phantom Beast Blackfalcon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Scrap Orthros',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Extreme Victory',
    'Monster',
    'EARTH',
    'Beast / Tuner / Effect'
  ),
  (
    'Amorphage Sloth',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Shining Victories',
    'Monster',
    'EARTH',
    'Dragon / Pendulum / Effect'
  ),
  (
    'Clock Resonator',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Victory',
    'Monster',
    'EARTH',
    'Fiend / Tuner / Effect'
  ),
  (
    'Inzektor Ant',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Order of Chaos',
    'Monster',
    'DARK',
    'Insect / Effect'
  ),
  (
    'Metal Armored Bug',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ancient Sanctuary',
    'Monster',
    'EARTH',
    'Insect / Normal'
  ),
  (
    'Inzektor Sword - Zektkaliber',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Laundry Trap',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Burst of Destiny',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Rampaging Smashtank Rhynosaber',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Rise of the Duelist',
    'Monster',
    'FIRE',
    'Machine / Synchro / Effect'
  ),
  (
    'Phantasmal Martyrs',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Shadow of Infinity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Statue of Anguish Pattern',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossed Souls',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Evoltile Casinerio',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Order of Chaos',
    'Monster',
    'FIRE',
    'Reptile / Effect'
  ),
  (
    'Phantasos, the Dream Mirror Foe',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Chaos Impact',
    'Monster',
    'DARK',
    'Beast-Warrior / Effect'
  ),
  (
    'Gatchiri @Ignister',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Eternity Code',
    'Monster',
    'EARTH',
    'Cyberse / Effect'
  ),
  (
    'Tri-Brigade Kitt',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Blazing Vortex',
    'Monster',
    'FIRE',
    'Beast / Effect'
  ),
  (
    'Watch Cat',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Flames of Destruction',
    'Monster',
    'EARTH',
    'Beast / Effect'
  ),
  (
    'Mythical Bestiamorph',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Extreme Force',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Crusadia Maximus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Cybernetic Horizon',
    'Monster',
    'LIGHT',
    'Psychic / Effect'
  ),
  (
    'Darklord Zerato',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Phantom Darkness',
    'Monster',
    'DARK',
    'Fairy / Effect'
  ),
  (
    'Ghostrick Doll',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Primal Origin',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'The Unfriendly Amazon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Hyozanryu',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Spell Ruler',
    'Monster',
    'LIGHT',
    'Dragon / Normal'
  ),
  (
    'Number 39: Utopia Roots',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Legacy of the Valiant',
    'Monster',
    'LIGHT',
    'Warrior / Xyz / Effect'
  ),
  (
    'Zenmailstrom',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Order of Chaos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'El Shaddoll Anoyatyllis',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Crossed Souls',
    'Monster',
    'WATER',
    'Fiend / Fusion / Effect'
  ),
  (
    'Sunny Pixie',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ancient Prophecy',
    'Monster',
    'LIGHT',
    'Spellcaster / Tuner'
  ),
  (
    'World Legacy Trap Globe',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Circuit Break',
    'Trap',
    NULL,
    NULL
  ),
  (
    'D.D.M. - Different Dimension Master',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Cybernetic Revolution',
    'Monster',
    'LIGHT',
    'Spellcaster / Effect'
  ),
  (
    'Stygian Street Patrol',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Duelist Revolution',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Coach Soldier Wolfbark',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Judgment of the Light',
    'Monster',
    'FIRE',
    'Beast-Warrior / Effect'
  ),
  (
    'Vilepawn Archfiend',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dark Crisis',
    'Monster',
    'EARTH',
    'Fiend / Effect'
  ),
  (
    'The Agent of Entropy - Uranus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'DARK',
    'Fairy / Tuner / Effect'
  ),
  (
    'Amazoness Empress',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Circuit Break',
    'Monster',
    'EARTH',
    'Warrior / Fusion / Effect'
  ),
  (
    'Localized Tornado',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Extreme Victory',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Magician''s Left Hand',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Maximum Crisis ',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Fiendish Portrait',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Ignition Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Scrap Searcher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Starstrike Blast',
    'Monster',
    'EARTH',
    'Winged Beast / Effect'
  ),
  (
    'Rainbow Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Tactical Evolution',
    'Monster',
    'LIGHT',
    'Dragon / Effect'
  ),
  (
    'Tenkabito Shien',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Monster',
    'FIRE',
    'Pyro / Effect'
  ),
  (
    'Imprisoned Queen Archfiend',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Darkness',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'S-Force Specimen',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Blazing Vortex',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Reanimation Wave',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Duelist Revolution',
    'Trap',
    NULL,
    NULL
  ),
  (
    'The Fabled Rubyruda',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Starstrike Blast',
    'Monster',
    'LIGHT',
    'Beast / Tuner'
  ),
  (
    'Twin Photon Lizard',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Order of Chaos',
    'Monster',
    'LIGHT',
    'Dragon / Fusion / Effect'
  ),
  (
    'Fortune Lady Water',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Stardust Overdrive',
    'Monster',
    'WATER',
    'Spellcaster / Effect'
  ),
  (
    'Trickstar Bella Madonna',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Flames of Destruction',
    'Monster',
    'LIGHT',
    'Fairy / Link / Effect'
  ),
  (
    'Link Burst',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Eternity Code',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Alien Stealthbuster',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dawn of Majesty',
    'Monster',
    'LIGHT',
    'Reptile / Effect'
  ),
  (
    'Lava Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Battle',
    'Monster',
    'FIRE',
    'Dragon / Effect'
  ),
  (
    'Dark Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Battle of Chaos',
    'Monster',
    'DARK',
    'Spellcaster / Normal'
  ),
  (
    'Sky Striker Ace - Kagari',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Premium Gold Rare',
    'Maximum Gold',
    'Monster',
    'FIRE',
    'Machine / Link / Effect'
  ),
  (
    'Constellar Sombre',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Madolche Lesson',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Lyrilusc - Cobalt Sparrow',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legendary Duelists: Synchro Storm',
    'Monster',
    'WIND',
    'Winged Beast / Effect'
  ),
  (
    'Vanity''s Ruler',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Cyberdark Impact',
    'Monster',
    'LIGHT',
    'Fairy / Effect'
  ),
  (
    'Impenetrable Formation',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'The Lost Millennium',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Rodenut',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Photon Shockwave',
    'Monster',
    'EARTH',
    'Beast / Effect'
  ),
  (
    'Superheavy Samurai Soulpiercer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Secrets of Eternity',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Wattcastle',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Starstrike Blast',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Black Tyranno',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Invasion of Chaos',
    'Monster',
    'EARTH',
    'Dinosaur / Effect'
  ),
  (
    'Gem-Knight Phantom Quartz',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Extreme Force',
    'Monster',
    'EARTH',
    'Rock / Link / Effect'
  ),
  (
    'Tri-Brigade Airborne Assault',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Phantom Rage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Pendulum Shift',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Secrets of Eternity',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Ghost Belle & Haunted Mansion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Starlight Rare',
    'Dimension Force',
    'Monster',
    'EARTH',
    'Zombie / Tuner / Effect'
  ),
  (
    'Gateway to Dark World',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Elemental Energy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Doom Donuts',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Galactic Overlord',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Telekinetic Shocker',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'The Duelist Genesis',
    'Monster',
    'EARTH',
    'Psychic / Effect'
  ),
  (
    'Unchained Soul of Disaster',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Chaos Impact',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Aegis of Gaia',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Strike of Neos',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Mecha Phantom Beast Stealthray',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'WIND',
    'Machine / Effect'
  ),
  (
    'Majestic Red Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Absolute Powerforce',
    'Monster',
    'DARK',
    'Dragon / Synchro / Effect'
  ),
  (
    'Chaofeng, Phantom of the Yang Zing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Crossed Souls',
    'Monster',
    'LIGHT',
    'Wyrm / Synchro / Effect'
  ),
  (
    'Magical Musket - Crooked Crown',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dark Neostorm',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Branded in White',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Lightning Overdrive',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Altitude Knight',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Lord of the Tachyon Galaxy',
    'Monster',
    'WIND',
    'Warrior / Effect'
  ),
  (
    'Melffy Rabby',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rise of the Duelist',
    'Monster',
    'EARTH',
    'Beast / Normal'
  ),
  (
    'Six Strike - Triple Impact',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Storm of Ragnarok',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Ape Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Abyss Rising',
    'Monster',
    'DARK',
    'Beast / Effect'
  ),
  (
    'Obsessive Uvualoop',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ignition Assault',
    'Monster',
    'EARTH',
    'Fiend / Tuner / Effect'
  ),
  (
    'Icejade Creation Kingfisher',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Battle of Chaos',
    'Monster',
    'WATER',
    'Aqua / Effect'
  ),
  (
    'Ghost Belle & Haunted Mansion',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Premium Gold Rare',
    'Maximum Gold',
    'Monster',
    'EARTH',
    'Zombie / Tuner / Effect'
  ),
  (
    'Vivid Tail',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dimension Force',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Strength of Prophecy',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Monster',
    'FIRE',
    'Spellcaster / Effect'
  ),
  (
    'Scrounging Goblin',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'The New Challengers',
    'Monster',
    'EARTH',
    'Fiend / Effect'
  ),
  (
    'Gravekeeper''s Curse',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Pharaonic Guardian',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'Decode Talker Heatsoul',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'FIRE',
    'Cyberse / Link / Effect'
  ),
  (
    'Armed Dragon Flash',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Blazing Vortex',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Schwarzschild Limit Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Judgment of the Light',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'Tyrant Red Dragon Archfiend',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'The Dark Illusion',
    'Monster',
    'DARK',
    'Dragon / Synchro / Effect'
  ),
  (
    'Ljosalf of the Nordic Alfar',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Storm of Ragnarok',
    'Monster',
    'LIGHT',
    'Spellcaster / Effect'
  ),
  (
    'F.A. Circuit Grand Prix',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Code of the Duelist',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Metal Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'WIND',
    'Machine / Fusion'
  ),
  (
    'Evenly Matched',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Circuit Break',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Machine King Prototype',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Xiangsheng Magician',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Clash of Rebellions',
    'Monster',
    'LIGHT',
    'Spellcaster / Pendulum / Effect'
  ),
  (
    'Evil Thorn',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Battle',
    'Monster',
    'DARK',
    'Plant / Effect'
  ),
  (
    'Dekoichi the Battlechanted Locomotive',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Rise of Destiny',
    'Monster',
    'DARK',
    'Machine / Flip / Effect'
  ),
  (
    'D/D/D Oblivion King Abyss Ragnarok',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Dimension of Chaos',
    'Monster',
    'DARK',
    'Fiend / Pendulum / Effect'
  ),
  (
    'Firewall eXceed Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Dark Neostorm',
    'Monster',
    'DARK',
    'Cyberse / Xyz / Effect'
  ),
  (
    'Chronomaly Golden Jet',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Return of the Duelist',
    'Monster',
    'LIGHT',
    'Machine / Effect'
  ),
  (
    'Reboot',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Extreme Victory',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Calming Magic',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Battle',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Woodland Archer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Stardust Overdrive',
    'Monster',
    'EARTH',
    'Beast-Warrior / Effect'
  ),
  (
    'Heroic Champion - Claivesolish',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dimension Force',
    'Monster',
    'LIGHT',
    'Warrior / Xyz / Effect'
  ),
  (
    'Number 99: Utopic Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'The New Challengers',
    'Monster',
    'LIGHT',
    'Dragon / Xyz / Effect'
  ),
  (
    'Maju Garzett',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Dark Crisis',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Koa''ki Meiru Rooklord',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Stardust Overdrive',
    'Monster',
    'EARTH',
    'Warrior / Effect'
  ),
  (
    'Knight of the Red Lotus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Stardust Overdrive',
    'Monster',
    'FIRE',
    'Warrior / Effect'
  ),
  (
    'Gadget Hauler',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossroads of Chaos',
    'Monster',
    'EARTH',
    'Machine / Effect'
  ),
  (
    'Attack Reflector Unit',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Shadow of Infinity',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Rainbow Path',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Darkness',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Sacred Sword of Seven Stars',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Lord of the Tachyon Galaxy',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Iron Core of Koa''ki Meiru',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Raging Battle',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Berserk Scales',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Galactic Overlord',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Forbidden Apocrypha',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Breakers of Shadow',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Fists of the Unrivaled Tenyi',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Rising Rampage',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Petit Dragon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legend of Blue Eyes White Dragon',
    'Monster',
    'WIND',
    'Dragon'
  ),
  (
    'Super Rush Recklessly',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Duelist Revolution',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Ultimate Insect LV1',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Soul of the Duelist',
    'Monster',
    'WIND',
    'Insect / Effect'
  ),
  (
    'Inzektor Giga-Mantis',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Ghosts From the Past: The 2nd Haunting',
    'Monster',
    'DARK',
    'Insect / Effect'
  ),
  (
    'Rising Air Current',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Short Print',
    'Spell Ruler',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Jinzo - Returner',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Light of Destruction',
    'Monster',
    'DARK',
    'Machine / Effect'
  ),
  (
    'Final Attack Orders',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dark Crisis',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Battle Footballer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dark Crisis',
    'Monster',
    'FIRE',
    'Machine'
  ),
  (
    'Ib the World Chalice Priestess',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Code of the Duelist',
    'Monster',
    'WATER',
    'Spellcaster / Link / Effect'
  ),
  (
    'Variety Comes Out',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Absolute Powerforce',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Condemned Witch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Secret Rare',
    'Soul Fusion',
    'Monster',
    'DARK',
    'Fairy / Effect'
  ),
  (
    'Goyo King',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Breakers of Shadow',
    'Monster',
    'EARTH',
    'Warrior / Synchro / Effect'
  ),
  (
    'Ultimate Insect LV7',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'The Lost Millennium',
    'Monster',
    'WIND',
    'Insect / Effect'
  ),
  (
    'Symphonic Warrior Guitaar',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Raging Tempest',
    'Monster',
    'WIND',
    'Machine / Pendulum / Effect'
  ),
  (
    'Iron Core Armor',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Stardust Overdrive',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Raidraptor - Revolution Falcon',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Crossed Souls',
    'Monster',
    'DARK',
    'Winged Beast / Xyz / Effect'
  ),
  (
    'Kujakujaku',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Judgment of the Light',
    'Monster',
    'WIND',
    'Winged Beast / Effect'
  ),
  (
    'Ghostrick Warwolf',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Primal Origin',
    'Monster',
    'DARK',
    'Zombie / Effect'
  ),
  (
    'Horseytail',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Crossroads of Chaos',
    'Monster',
    'WIND',
    'Plant / Effect'
  ),
  (
    'The Dark Door',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Labyrinth of Nightmare',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Mind Haxorz',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Rise of Destiny',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Lose 1 Turn',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Maximum Gold',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Lancer Dragonute',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Extreme Victory',
    'Monster',
    'DARK',
    'Dragon / Effect'
  ),
  (
    'Star Power!!',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Rising Rampage',
    'Spell',
    NULL,
    NULL
  ),
  (
    'Laval Lancelord',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Photon Shockwave',
    'Monster',
    'FIRE',
    'Warrior / Effect'
  ),
  (
    'D/D Necro Slime',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Dimension of Chaos',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Void Launch',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Secrets of Eternity',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Princess Curran',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Rare',
    'Shadow of Infinity',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'Power Invader',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Absolute Powerforce',
    'Monster',
    'DARK',
    'Fiend / Effect'
  ),
  (
    'Updraft',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Gladiator''s Assault',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Raidraptor - Heel Eagle',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Phantom Rage',
    'Monster',
    'DARK',
    'Winged Beast / Effect'
  ),
  (
    'Chrysalis Mole',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Tactical Evolution',
    'Monster',
    'EARTH',
    'Rock / Effect'
  ),
  (
    'Crimson Sunbird',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Cosmo Blazer',
    'Monster',
    'FIRE',
    'Winged Beast / Fusion'
  ),
  (
    'Koa''ki Meiru Maximus',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Ultra Rare',
    'Stardust Overdrive',
    'Monster',
    'WIND',
    'Dragon / Effect'
  ),
  (
    'Sylvan Blessing',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Legacy of the Valiant',
    'Trap',
    NULL,
    NULL
  ),
  (
    'Phantom Bounzer',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Galactic Overlord',
    'Monster',
    'DARK',
    'Warrior / Effect'
  ),
  (
    'Impcantation Bookstone',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Soul Fusion',
    'Monster',
    'DARK',
    'Spellcaster / Effect'
  ),
  (
    'Cataclysmic Crusted Calcifida',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Common',
    'Ignition Assault',
    'Monster',
    'EARTH',
    'Fairy / Effect'
  ),
  (
    'Scareclaw Sclash',
    'This is one of the most iconic and powerful monsters in the game. It''s a Level 8 Dragon-Type monster with 3000 ATK and 2500 DEF. Its effect allows it to make up to three attacks on monsters during each Battle Phase.',
    'Super Rare',
    'Dimension Force',
    'Trap',
    NULL,
    NULL
  );

UPDATE products
SET
  price = ROUND(CAST(RANDOM() * 1000 + 1 AS NUMERIC), 1) + (ROUND(RANDOM()::NUMERIC) * 0.05)
WHERE
  TRUE;

INSERT INTO
  public.payment (payment_type, payment_amount)
VALUES
  ('Stripe', 20),
  ('Google Pay', 10),
  ('Samsung Pay', 10);

INSERT INTO
  public.addresses (
    id,
    firstname,
    NAME,
    company,
    address,
    zip_code,
    city
  )
VALUES
  (
    1,
    'Hans',
    'Müller',
    'Supercompany',
    'My street 5',
    '4000',
    'Basel'
  ),
  (
    2,
    'Fritz',
    'Kalbermatter',
    'Bettercompany',
    'My street 6',
    '8000',
    'Zürich'
  ),
  (
    3,
    'Erika',
    'Muster',
    NULL,
    'Best street 5',
    '8000',
    'Zürich'
  );

ALTER SEQUENCE addresses_id_seq RESTART
WITH
  4;

INSERT INTO
  public.customer (
    email,
    billing_address_id,
    shipping_address_id,
    user_id
  )
VALUES
  (
    'blabla@mustermann.ch',
    1,
    2,
    (
      SELECT
        u.id
      FROM
        auth.users u
      WHERE
        u.email = 'user1@example.com'
    )
  ),
  ('yugioh@suchti.de', 3, 3, NULL);

INSERT INTO
  public.orders (
    order_state,
    payment_id,
    customer_id,
    notification_sent
  )
VALUES
  ('completed', 1, 1, FALSE),
  ('canceled', 2, 1, FALSE),
  ('in delivery', 1, 2, TRUE);

INSERT INTO
  public.orderitem (order_id, product_id, quantity)
VALUES
  (1, 10, 100),
  (1, 11, 8),
  (2, 43, 5),
  (2, 42, 1);

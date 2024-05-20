
-- Creazione della tabella tbPokemon
CREATE TABLE IF NOT EXISTS tbPokemon (
    ID INTEGER PRIMARY KEY,
    Nome TEXT,
    Tipo1 TEXT,
    Tipo2 TEXT
);

-- Creazione della tabella tbStatsBase
CREATE TABLE IF NOT EXISTS tbStatsBase (
    ID INTEGER PRIMARY KEY,
    Ps, INTEGER,
    Att INTEGER,
    Def INTEGER,
    AttS INTEGER,
    DefS INTEGER,
    Spd INTEGER,
    id_pokemon INTEGER,
    FOREIGN KEY (id_pokemon) REFERENCES tbPokemon(ID)
);

-- Creazione della tabella tbNature
CREATE TABLE IF NOT EXISTS tbNature (
    ID INTEGER PRIMARY KEY,
    Nome VARCHAR(50),
    ModAtt FLOAT,
    ModDef FLOAT,
    ModAttS FLOAT,
    ModDefS FLOAT,
    ModSpd FLOAT
);

-- INSERT FIRST 151 POKEMON - tbPokemon
INSERT INTO tbPokemon (Nome, Tipo1, Tipo2) VALUES
('Bulbasaur', 'Erba', 'Veleno'),
('Ivysaur', 'Erba', 'Veleno'),
('Venusaur', 'Erba', 'Veleno'),
('Charmander', 'Fuoco', NULL),
('Charmeleon', 'Fuoco', NULL),
('Charizard', 'Fuoco', 'Volante'),
('Squirtle', 'Acqua', NULL),
('Wartortle', 'Acqua', NULL),
('Blastoise', 'Acqua', NULL),
('Caterpie', 'Coleottero', NULL),
('Metapod', 'Coleottero', NULL),
('Butterfree', 'Coleottero', 'Volante'),
('Weedle', 'Coleottero', 'Veleno'),
('Kakuna', 'Coleottero', 'Veleno'),
('Beedrill', 'Coleottero', 'Veleno'),
('Pidgey', 'Normale', 'Volante'),
('Pidgeotto', 'Normale', 'Volante'),
('Pidgeot', 'Normale', 'Volante'),
('Rattata', 'Normale', NULL),
('Raticate', 'Normale', NULL),
('Spearow', 'Normale', 'Volante'),
('Fearow', 'Normale', 'Volante'),
('Ekans', 'Veleno', NULL),
('Arbok', 'Veleno', NULL),
('Pikachu', 'Elettro', NULL),
('Raichu', 'Elettro', NULL),
('Sandshrew', 'Terra', NULL),
('Sandslash', 'Terra', NULL),
('NidoranF', 'Veleno', NULL),
('Nidorina', 'Veleno', NULL),
('Nidoqueen', 'Veleno', 'Terra'),
('NidoranM', 'Veleno', NULL),
('Nidorino', 'Veleno', NULL),
('Nidoking', 'Veleno', 'Terra'),
('Clefairy', 'Folletto', NULL),
('Clefable', 'Folletto', NULL),
('Vulpix', 'Fuoco', NULL),
('Ninetales', 'Fuoco', NULL),
('Jigglypuff', 'Normale', 'Folletto'),
('Wigglytuff', 'Normale', 'Folletto'),
('Zubat', 'Veleno', 'Volante'),
('Golbat', 'Veleno', 'Volante'),
('Oddish', 'Erba', 'Veleno'),
('Gloom', 'Erba', 'Veleno'),
('Vileplume', 'Erba', 'Veleno'),
('Paras', 'Coleottero', 'Erba'),
('Parasect', 'Coleottero', 'Erba'),
('Venonat', 'Coleottero', 'Veleno'),
('Venomoth', 'Coleottero', 'Veleno'),
('Diglett', 'Terra', NULL),
('Dugtrio', 'Terra', NULL),
('Meowth', 'Normale', NULL),
('Persian', 'Normale', NULL),
('Psyduck', 'Acqua', NULL),
('Golduck', 'Acqua', NULL),
('Mankey', 'Lotta', NULL),
('Primeape', 'Lotta', NULL),
('Growlithe', 'Fuoco', NULL),
('Arcanine', 'Fuoco', NULL),
('Poliwag', 'Acqua', NULL),
('Poliwhirl', 'Acqua', NULL),
('Poliwrath', 'Acqua', 'Lotta'),
('Abra', 'Psico', NULL),
('Kadabra', 'Psico', NULL),
('Alakazam', 'Psico', NULL),
('Machop', 'Lotta', NULL),
('Machoke', 'Lotta', NULL),
('Machamp', 'Lotta', NULL),
('Bellsprout', 'Erba', 'Veleno'),
('Weepinbell', 'Erba', 'Veleno'),
('Victreebel', 'Erba', 'Veleno'),
('Tentacool', 'Acqua', 'Veleno'),
('Tentacruel', 'Acqua', 'Veleno'),
('Geodude', 'Roccia', 'Terra'),
('Graveler', 'Roccia', 'Terra'),
('Golem', 'Roccia', 'Terra'),
('Ponyta', 'Fuoco', NULL),
('Rapidash', 'Fuoco', NULL),
('Slowpoke', 'Acqua', 'Psico'),
('Slowbro', 'Acqua', 'Psico'),
('Magnemite', 'Elettro', 'Acciaio'),
('Magneton', 'Elettro', 'Acciaio'),
('Farfetchd', 'Normale', 'Volante'),
('Doduo', 'Normale', 'Volante'),
('Dodrio', 'Normale', 'Volante'),
('Seel', 'Acqua', NULL),
('Dewgong', 'Acqua', 'Ghiaccio'),
('Grimer', 'Veleno', NULL),
('Muk', 'Veleno', NULL),
('Shellder', 'Acqua', NULL),
('Cloyster', 'Acqua', 'Ghiaccio'),
('Gastly', 'Spettro', 'Veleno'),
('Haunter', 'Spettro', 'Veleno'),
('Gengar', 'Spettro', 'Veleno'),
('Onix', 'Roccia', 'Terra'),
('Drowzee', 'Psico', NULL),
('Hypno', 'Psico', NULL),
('Krabby', 'Acqua', NULL),
('Kingler', 'Acqua', NULL),
('Voltorb', 'Elettro', NULL),
('Electrode', 'Elettro', NULL),
('Exeggcute', 'Erba', 'Psico'),
('Exeggutor', 'Erba', 'Psico'),
('Cubone', 'Terra', NULL),
('Marowak', 'Terra', NULL),
('Hitmonlee', 'Lotta', NULL),
('Hitmonchan', 'Lotta', NULL),
('Lickitung', 'Normale', NULL),
('Koffing', 'Veleno', NULL),
('Weezing', 'Veleno', NULL),
('Rhyhorn', 'Terra', 'Roccia'),
('Rhydon', 'Terra', 'Roccia'),
('Chansey', 'Normale', NULL),
('Tangela', 'Erba', NULL),
('Kangaskhan', 'Normale', NULL),
('Horsea', 'Acqua', NULL),
('Seadra', 'Acqua', NULL),
('Goldeen', 'Acqua', NULL),
('Seaking', 'Acqua', NULL),
('Staryu', 'Acqua', NULL),
('Starmie', 'Acqua', 'Psico'),
('Mr. Mime', 'Psico', 'Folletto'),
('Scyther', 'Coleottero', 'Volante'),
('Jynx', 'Ghiaccio', 'Psico'),
('Electabuzz', 'Elettro', NULL),
('Magmar', 'Fuoco', NULL),
('Pinsir', 'Coleottero', NULL),
('Tauros', 'Normale', NULL),
('Magikarp', 'Acqua', NULL),
('Gyarados', 'Acqua', 'Volante'),
('Lapras', 'Acqua', 'Ghiaccio'),
('Ditto', 'Normale', NULL),
('Eevee', 'Normale', NULL),
('Vaporeon', 'Acqua', NULL),
('Jolteon', 'Elettro', NULL),
('Flareon', 'Fuoco', NULL),
('Porygon', 'Normale', NULL),
('Omanyte', 'Roccia', 'Acqua'),
('Omastar', 'Roccia', 'Acqua'),
('Kabuto', 'Roccia', 'Acqua'),
('Kabutops', 'Roccia', 'Acqua'),
('Aerodactyl', 'Roccia', 'Volante'),
('Snorlax', 'Normale', NULL),
('Articuno', 'Ghiaccio', 'Volante'),
('Zapdos', 'Elettro', 'Volante'),
('Moltres', 'Fuoco', 'Volante'),
('Dratini', 'Drago', NULL),
('Dragonair', 'Drago', NULL),
('Dragonite', 'Drago', 'Volante'),
('Mewtwo', 'Psico', NULL),
('Mew', 'Psico', NULL),


-- INSERT POKEMON DI JOHTO - tbPokemon
('Chikorita', 'Erba', NULL),
('Bayleef', 'Erba', NULL),
('Meganium', 'Erba', NULL),
('Cyndaquil', 'Fuoco', NULL),
('Quilava', 'Fuoco', NULL),
('Typhlosion', 'Fuoco', NULL),
('Totodile', 'Acqua', NULL),
('Croconaw', 'Acqua', NULL),
('Feraligatr', 'Acqua', NULL),
('Sentret', 'Normale', NULL),
('Furret', 'Normale', NULL),
('Hoothoot', 'Normale', 'Volante'),
('Noctowl', 'Normale', 'Volante'),
('Ledyba', 'Coleottero', 'Volante'),
('Ledian', 'Coleottero', 'Volante'),
('Spinarak', 'Coleottero', 'Veleno'),
('Ariados', 'Coleottero', 'Veleno'),
('Crobat', 'Veleno', 'Volante'),
('Chinchou', 'Acqua', 'Elettro'),
('Lanturn', 'Acqua', 'Elettro'),
('Pichu', 'Elettro', NULL),
('Cleffa', 'Folletto', NULL),
('Igglybuff', 'Normale', 'Folletto'),
('Togepi', 'Folletto', NULL),
('Togetic', 'Folletto', 'Volante'),
('Natu', 'Psico', 'Volante'),
('Xatu', 'Psico', 'Volante'),
('Mareep', 'Elettro', NULL),
('Flaaffy', 'Elettro', NULL),
('Ampharos', 'Elettro', NULL),
('Bellossom', 'Erba', NULL),
('Marill', 'Acqua', 'Folletto'),
('Azumarill', 'Acqua', 'Folletto'),
('Sudowoodo', 'Roccia', NULL),
('Politoed', 'Acqua', NULL),
('Hoppip', 'Erba', 'Volante'),
('Skiploom', 'Erba', 'Volante'),
('Jumpluff', 'Erba', 'Volante'),
('Aipom', 'Normale', NULL),
('Sunkern', 'Erba', NULL),
('Sunflora', 'Erba', NULL),
('Yanma', 'Coleottero', 'Volante'),
('Wooper', 'Acqua', 'Terra'),
('Quagsire', 'Acqua', 'Terra'),
('Espeon', 'Psico', NULL),
('Umbreon', 'Buio', NULL),
('Murkrow', 'Buio', 'Volante'),
('Slowking', 'Acqua', 'Psico'),
('Misdreavus', 'Spettro', NULL),
('Unown', 'Psico', NULL),
('Wobbuffet', 'Psico', NULL),
('Girafarig', 'Normale', 'Psico'),
('Pineco', 'Coleottero', NULL),
('Forretress', 'Coleottero', 'Acciaio'),
('Dunsparce', 'Normale', NULL),
('Gligar', 'Terra', 'Volante'),
('Steelix', 'Acciaio', 'Terra'),
('Snubbull', 'Normale', NULL),
('Granbull', 'Normale', NULL),
('Qwilfish', 'Acqua', 'Veleno'),
('Scizor', 'Coleottero', 'Acciaio'),
('Shuckle', 'Coleottero', 'Roccia'),
('Heracross', 'Coleottero', 'Lotta'),
('Sneasel', 'Buio', 'Ghiaccio'),
('Teddiursa', 'Normale', NULL),
('Ursaring', 'Normale', NULL),
('Slugma', 'Fuoco', NULL),
('Magcargo', 'Fuoco', 'Roccia'),
('Swinub', 'Ghiaccio', 'Terra'),
('Piloswine', 'Ghiaccio', 'Terra'),
('Corsola', 'Acqua', 'Roccia'),
('Remoraid', 'Acqua', NULL),
('Octillery', 'Acqua', NULL),
('Delibird', 'Ghiaccio', 'Volante'),
('Mantine', 'Acqua', 'Volante'),
('Skarmory', 'Acciaio', 'Volante'),
('Houndour', 'Buio', 'Fuoco'),
('Houndoom', 'Buio', 'Fuoco'),
('Kingdra', 'Acqua', 'Drago'),
('Phanpy', 'Terra', NULL),
('Donphan', 'Terra', NULL),
('Porygon2', 'Normale', NULL),
('Stantler', 'Normale', NULL),
('Smeargle', 'Normale', NULL),
('Tyrogue', 'Lotta', NULL),
('Hitmontop', 'Lotta', NULL),
('Smoochum', 'Ghiaccio', 'Psico'),
('Elekid', 'Elettro', NULL),
('Magby', 'Fuoco', NULL),
('Miltank', 'Normale', NULL),
('Blissey', 'Normale', NULL),
('Raikou', 'Elettro', NULL),
('Entei', 'Fuoco', NULL),
('Suicune', 'Acqua', NULL),
('Larvitar', 'Roccia', 'Terra'),
('Pupitar', 'Roccia', 'Terra'),
('Tyranitar', 'Roccia', 'Buio'),
('Lugia', 'Psico', 'Volante'),
('Ho-oh', 'Fuoco', 'Volante'),
('Celebi', 'Psico', 'Erba'),
-- INSERT POKEMON DI HOENN - tbPokemon
('Treecko', 'Erba', NULL),
('Grovyle', 'Erba', NULL),
('Sceptile', 'Erba', NULL),
('Torchic', 'Fuoco', NULL),
('Combusken', 'Fuoco', 'Lotta'),
('Blaziken', 'Fuoco', 'Lotta'),
('Mudkip', 'Acqua', NULL),
('Marshtomp', 'Acqua', 'Terra'),
('Swampert', 'Acqua', 'Terra'),
('Poochyena', 'Buio', NULL),
('Mightyena', 'Buio', NULL),
('Zigzagoon', 'Normale', NULL),
('Linoone', 'Normale', NULL),
('Wurmple', 'Coleottero', NULL),
('Silcoon', 'Coleottero', NULL),
('Beautifly', 'Coleottero', 'Volante'),
('Cascoon', 'Coleottero', NULL),
('Dustox', 'Coleottero', 'Veleno'),
('Lotad', 'Acqua', 'Erba'),
('Lombre', 'Acqua', 'Erba'),
('Ludicolo', 'Acqua', 'Erba'),
('Seedot', 'Erba', NULL),
('Nuzleaf', 'Erba', 'Buio'),
('Shiftry', 'Erba', 'Buio'),
('Taillow', 'Normale', 'Volante'),
('Swellow', 'Normale', 'Volante'),
('Wingull', 'Acqua', 'Volante'),
('Pelipper', 'Acqua', 'Volante'),
('Ralts', 'Psico', 'Folletto'),
('Kirlia', 'Psico', 'Folletto'),
('Gardevoir', 'Psico', 'Folletto'),
('Surskit', 'Coleottero', 'Acqua'),
('Masquerain', 'Coleottero', 'Volante'),
('Shroomish', 'Erba', NULL),
('Breloom', 'Erba', 'Lotta'),
('Slakoth', 'Normale', NULL),
('Vigoroth', 'Normale', NULL),
('Slaking', 'Normale', NULL),
('Nincada', 'Coleottero', 'Terra'),
('Ninjask', 'Coleottero', 'Volante'),
('Shedinja', 'Coleottero', 'Spettro'),
('Whismur', 'Normale', NULL),
('Loudred', 'Normale', NULL),
('Exploud', 'Normale', NULL),
('Makuhita', 'Lotta', NULL),
('Hariyama', 'Lotta', NULL),
('Azurill', 'Normale', 'Folletto'),
('Nosepass', 'Roccia', NULL),
('Skitty', 'Normale', NULL),
('Delcatty', 'Normale', NULL),
('Sableye', 'Buio', 'Spettro'),
('Mawile', 'Acciaio', 'Folletto'),
('Aron', 'Acciaio', 'Roccia'),
('Lairon', 'Acciaio', 'Roccia'),
('Aggron', 'Acciaio', 'Roccia'),
('Meditite', 'Lotta', 'Psico'),
('Medicham', 'Lotta', 'Psico'),
('Electrike', 'Elettro', NULL),
('Manectric', 'Elettro', NULL),
('Plusle', 'Elettro', NULL),
('Minun', 'Elettro', NULL),
('Volbeat', 'Coleottero', NULL),
('Illumise', 'Coleottero', NULL),
('Roselia', 'Erba', 'Veleno'),
('Gulpin', 'Veleno', NULL),
('Swalot', 'Veleno', NULL),
('Carvanha', 'Acqua', 'Buio'),
('Sharpedo', 'Acqua', 'Buio'),
('Wailmer', 'Acqua', NULL),
('Wailord', 'Acqua', NULL),
('Numel', 'Fuoco', 'Terra'),
('Camerupt', 'Fuoco', 'Terra'),
('Torkoal', 'Fuoco', NULL),
('Spoink', 'Psico', NULL),
('Grumpig', 'Psico', NULL),
('Spinda', 'Normale', NULL),
('Trapinch', 'Terra', NULL),
('Vibrava', 'Terra', 'Drago'),
('Flygon', 'Terra', 'Drago'),
('Cacnea', 'Erba', NULL),
('Cacturne', 'Erba', 'Buio'),
('Swablu', 'Normale', 'Volante'),
('Altaria', 'Drago', 'Volante'),
('Zangoose', 'Normale', NULL),
('Seviper', 'Veleno', NULL),
('Lunatone', 'Roccia', 'Psico'),
('Solrock', 'Roccia', 'Psico'),
('Barboach', 'Acqua', 'Terra'),
('Whiscash', 'Acqua', 'Terra'),
('Corphish', 'Acqua', NULL),
('Crawdaunt', 'Acqua', 'Buio'),
('Baltoy', 'Terra', 'Psico'),
('Claydol', 'Terra', 'Psico'),
('Lileep', 'Roccia', 'Erba'),
('Cradily', 'Roccia', 'Erba'),
('Anorith', 'Roccia', 'Coleottero'),
('Armaldo', 'Roccia', 'Coleottero'),
('Feebas', 'Acqua', NULL),
('Milotic', 'Acqua', NULL),
('Castform', 'Normale', NULL),
('Kecleon', 'Normale', NULL),
('Shuppet', 'Spettro', NULL),
('Banette', 'Spettro', NULL),
('Duskull', 'Spettro', NULL),
('Dusclops', 'Spettro', NULL),
('Tropius', 'Erba', 'Volante'),
('Chimecho', 'Psico', NULL),
('Absol', 'Buio', NULL),
('Wynaut', 'Psico', NULL),
('Snorunt', 'Ghiaccio', NULL),
('Glalie', 'Ghiaccio', NULL),
('Spheal', 'Ghiaccio', 'Acqua'),
('Sealeo', 'Ghiaccio', 'Acqua'),
('Walrein', 'Ghiaccio', 'Acqua'),
('Clamperl', 'Acqua', NULL),
('Huntail', 'Acqua', NULL),
('Gorebyss', 'Acqua', NULL),
('Relicanth', 'Acqua', 'Roccia'),
('Luvdisc', 'Acqua', NULL),
('Bagon', 'Drago', NULL),
('Shelgon', 'Drago', NULL),
('Salamence', 'Drago', 'Volante'),
('Beldum', 'Acciaio', 'Psico'),
('Metang', 'Acciaio', 'Psico'),
('Metagross', 'Acciaio', 'Psico'),
('Regirock', 'Roccia', NULL),
('Regice', 'Ghiaccio', NULL),
('Registeel', 'Acciaio', NULL),
('Latias', 'Drago', 'Psico'),
('Latios', 'Drago', 'Psico'),
('Kyogre', 'Acqua', NULL),
('Groudon', 'Terra', NULL),
('Rayquaza', 'Drago', 'Volante'),
('Jirachi', 'Acciaio', 'Psico'),
('Deoxys', 'Psico', NULL),


-- INSERT POKEMON DI SINNOH - tbPokemon
('Turtwig', 'Erba', NULL),
('Grotle', 'Erba', NULL),
('Torterra', 'Erba', 'Terra'),
('Chimchar', 'Fuoco', NULL),
('Monferno', 'Fuoco', 'Lotta'),
('Infernape', 'Fuoco', 'Lotta'),
('Piplup', 'Acqua', NULL),
('Prinplup', 'Acqua', NULL),
('Empoleon', 'Acqua', 'Acciaio'),
('Starly', 'Normale', 'Volante'),
('Staravia', 'Normale', 'Volante'),
('Staraptor', 'Normale', 'Volante'),
('Bidoof', 'Normale', NULL),
('Bibarel', 'Normale', 'Acqua'),
('Kricketot', 'Coleottero', NULL),
('Kricketune', 'Coleottero', NULL),
('Shinx', 'Elettro', NULL),
('Luxio', 'Elettro', NULL),
('Luxray', 'Elettro', NULL),
('Budew', 'Erba', 'Veleno'),
('Roserade', 'Erba', 'Veleno'),
('Cranidos', 'Roccia', NULL),
('Rampardos', 'Roccia', NULL),
('Shieldon', 'Roccia', 'Acciaio'),
('Bastiodon', 'Roccia', 'Acciaio'),
('Burmy', 'Coleottero', NULL),
('Wormadam', 'Coleottero', 'Erba'),
('Mothim', 'Coleottero', 'Volante'),
('Combee', 'Coleottero', 'Volante'),
('Vespiquen', 'Coleottero', 'Volante'),
('Pachirisu', 'Elettro', NULL),
('Buizel', 'Acqua', NULL),
('Floatzel', 'Acqua', NULL),
('Cherubi', 'Erba', NULL),
('Cherrim', 'Erba', NULL),
('Shellos', 'Acqua', NULL),
('Gastrodon', 'Acqua', 'Terra'),
('Ambipom', 'Normale', NULL),
('Drifloon', 'Spettro', 'Volante'),
('Drifblim', 'Spettro', 'Volante'),
('Buneary', 'Normale', NULL),
('Lopunny', 'Normale', NULL),
('Mismagius', 'Spettro', NULL),
('Honchkrow', 'Buio', 'Volante'),
('Glameow', 'Normale', NULL),
('Purugly', 'Normale', NULL),
('Chingling', 'Psico', NULL),
('Stunky', 'Veleno', 'Buio'),
('Skuntank', 'Veleno', 'Buio'),
('Bronzor', 'Acciaio', 'Psico'),
('Bronzong', 'Acciaio', 'Psico'),
('Bonsly', 'Roccia', NULL),
('Mime Jr.', 'Psico', 'Folletto'),
('Happiny', 'Normale', NULL),
('Chatot', 'Normale', 'Volante'),
('Spiritomb', 'Spettro', 'Buio'),
('Gible', 'Drago', 'Terra'),
('Gabite', 'Drago', 'Terra'),
('Garchomp', 'Drago', 'Terra'),
('Munchlax', 'Normale', NULL),
('Riolu', 'Lotta', NULL),
('Lucario', 'Lotta', 'Acciaio'),
('Hippopotas', 'Terra', NULL),
('Hippowdon', 'Terra', NULL),
('Skorupi', 'Veleno', 'Coleottero'),
('Drapion', 'Veleno', 'Buio'),
('Croagunk', 'Veleno', 'Lotta'),
('Toxicroak', 'Veleno', 'Lotta'),
('Carnivine', 'Erba', NULL),
('Finneon', 'Acqua', NULL),
('Lumineon', 'Acqua', NULL),
('Mantyke', 'Acqua', 'Volante'),
('Snover', 'Erba', 'Ghiaccio'),
('Abomasnow', 'Erba', 'Ghiaccio'),
('Weavile', 'Buio', 'Ghiaccio'),
('Magnezone', 'Elettro', 'Acciaio'),
('Lickilicky', 'Normale', NULL),
('Rhyperior', 'Terra', 'Roccia'),
('Tangrowth', 'Erba', NULL),
('Electivire', 'Elettro', NULL),
('Magmortar', 'Fuoco', NULL),
('Togekiss', 'Normale', 'Volante'),
('Yanmega', 'Coleottero', 'Volante'),
('Leafeon', 'Erba', NULL),
('Glaceon', 'Ghiaccio', NULL),
('Gliscor', 'Terra', 'Volante'),
('Mamoswine', 'Ghiaccio', 'Terra'),
('Porygon-Z', 'Normale', NULL),
('Gallade', 'Psico', 'Lotta'),
('Probopass', 'Roccia', 'Acciaio'),
('Dusknoir', 'Spettro', NULL),
('Froslass', 'Ghiaccio', 'Spettro'),
('Rotom', 'Elettro', 'Spettro'),
('Uxie', 'Psico', NULL),
('Mesprit', 'Psico', NULL),
('Azelf', 'Psico', NULL),
('Dialga', 'Acciaio', 'Drago'),
('Palkia', 'Acqua', 'Drago'),
('Heatran', 'Fuoco', 'Acciaio'),
('Regigigas', 'Normale', NULL),
('Giratina', 'Spettro', 'Drago'),
('Cresselia', 'Psico', NULL),
('Phione', 'Acqua', NULL),
('Manaphy', 'Acqua', NULL),
('Darkrai', 'Buio', NULL),
('Shaymin', 'Erba', NULL),
('Arceus', 'Normale', NULL),


-- INSERT POKEMON DI UNIMA - tbPokemon
('Victini', 'Psico', 'Fuoco'),
('Snivy', 'Erba', NULL),
('Servine', 'Erba', NULL),
('Serperior', 'Erba', NULL),
('Tepig', 'Fuoco', NULL),
('Pignite', 'Fuoco', 'Lotta'),
('Emboar', 'Fuoco', 'Lotta'),
('Oshawott', 'Acqua', NULL),
('Dewott', 'Acqua', NULL),
('Samurott', 'Acqua', NULL),
('Patrat', 'Normale', NULL),
('Watchog', 'Normale', NULL),
('Lillipup', 'Normale', NULL),
('Herdier', 'Normale', NULL),
('Stoutland', 'Normale', NULL),
('Purrloin', 'Buio', NULL),
('Liepard', 'Buio', NULL),
('Pansage', 'Erba', NULL),
('Simisage', 'Erba', NULL),
('Pansear', 'Fuoco', NULL),
('Simisear', 'Fuoco', NULL),
('Panpour', 'Acqua', NULL),
('Simipour', 'Acqua', NULL),
('Munna', 'Psico', NULL),
('Musharna', 'Psico', NULL),
('Pidove', 'Normale', 'Volante'),
('Tranquill', 'Normale', 'Volante'),
('Unfezant', 'Normale', 'Volante'),
('Blitzle', 'Elettro', NULL),
('Zebstrika', 'Elettro', NULL),
('Roggenrola', 'Roccia', NULL),
('Boldore', 'Roccia', NULL),
('Gigalith', 'Roccia', NULL),
('Woobat', 'Psico', 'Volante'),
('Swoobat', 'Psico', 'Volante'),
('Drilbur', 'Terra', NULL),
('Excadrill', 'Terra', 'Acciaio'),
('Audino', 'Normale', NULL),
('Timburr', 'Lotta', NULL),
('Gurdurr', 'Lotta', NULL),
('Conkeldurr', 'Lotta', NULL),
('Tympole', 'Acqua', NULL),
('Palpitoad', 'Acqua', 'Terra'),
('Seismitoad', 'Acqua', 'Terra'),
('Throh', 'Lotta', NULL),
('Sawk', 'Lotta', NULL),
('Sewaddle', 'Coleottero', 'Erba'),
('Swadloon', 'Coleottero', 'Erba'),
('Leavanny', 'Coleottero', 'Erba'),
('Venipede', 'Coleottero', 'Veleno'),
('Whirlipede', 'Coleottero', 'Veleno'),
('Scolipede', 'Coleottero', 'Veleno'),
('Cottonee', 'Erba', 'Folletto'),
('Whimsicott', 'Erba', 'Folletto'),
('Petilil', 'Erba', NULL),
('Lilligant', 'Erba', NULL),
('Basculin', 'Acqua', NULL),
('Sandile', 'Terra', 'Buio'),
('Krokorok', 'Terra', 'Buio'),
('Krookodile', 'Terra', 'Buio'),
('Darumaka', 'Fuoco', NULL),
('Darmanitan', 'Fuoco', NULL),
('Maractus', 'Erba', NULL),
('Dwebble', 'Roccia', 'Coleottero'),
('Crustle', 'Roccia', 'Coleottero'),
('Scraggy', 'Buio', 'Lotta'),
('Scrafty', 'Buio', 'Lotta'),
('Sigilyph', 'Psico', 'Volante'),
('Yamask', 'Spettro', NULL),
('Cofagrigus', 'Spettro', NULL),
('Tirtouga', 'Acqua', 'Roccia'),
('Carracosta', 'Acqua', 'Roccia'),
('Archen', 'Roccia', 'Volante'),
('Archeops', 'Roccia', 'Volante'),
('Trubbish', 'Veleno', NULL),
('Garbodor', 'Veleno', NULL),
('Zorua', 'Buio', NULL),
('Zoroark', 'Buio', NULL),
('Minccino', 'Normale', NULL),
('Cinccino', 'Normale', NULL),
('Gothita', 'Psico', NULL),
('Gothorita', 'Psico', NULL),
('Gothitelle', 'Psico', NULL),
('Solosis', 'Psico', NULL),
('Duosion', 'Psico', NULL),
('Reuniclus', 'Psico', NULL),
('Ducklett', 'Acqua', 'Volante'),
('Swanna', 'Acqua', 'Volante'),
('Vanillite', 'Ghiaccio', NULL),
('Vanillish', 'Ghiaccio', NULL),
('Vanilluxe', 'Ghiaccio', NULL),
('Deerling', 'Normale', 'Erba'),
('Sawsbuck', 'Normale', 'Erba'),
('Emolga', 'Elettro', 'Volante'),
('Karrablast', 'Coleottero', NULL),
('Escavalier', 'Coleottero', 'Acciaio'),
('Foongus', 'Erba', 'Veleno'),
('Amoonguss', 'Erba', 'Veleno'),
('Frillish', 'Acqua', 'Spettro'),
('Jellicent', 'Acqua', 'Spettro'),
('Alomomola', 'Acqua', NULL),
('Joltik', 'Coleottero', 'Elettro'),
('Galvantula', 'Coleottero', 'Elettro'),
('Ferroseed', 'Erba', 'Acciaio'),
('Ferrothorn', 'Erba', 'Acciaio'),
('Klink', 'Acciaio', NULL),
('Klang', 'Acciaio', NULL),
('Klinklang', 'Acciaio', NULL),
('Tynamo', 'Elettro', NULL),
('Eelektrik', 'Elettro', NULL),
('Eelektross', 'Elettro', NULL),
('Elgyem', 'Psico', NULL),
('Beheeyem', 'Psico', NULL),
('Litwick', 'Spettro', 'Fuoco'),
('Lampent', 'Spettro', 'Fuoco'),
('Chandelure', 'Spettro', 'Fuoco'),
('Axew', 'Drago', NULL),
('Fraxure', 'Drago', NULL),
('Haxorus', 'Drago', NULL),
('Cubchoo', 'Ghiaccio', NULL),
('Beartic', 'Ghiaccio', NULL),
('Cryogonal', 'Ghiaccio', NULL),
('Shelmet', 'Coleottero', NULL),
('Accelgor', 'Coleottero', NULL),
('Stunfisk', 'Terra', 'Elettro'),
('Mienfoo', 'Lotta', NULL),
('Mienshao', 'Lotta', NULL),
('Druddigon', 'Drago', NULL),
('Golett', 'Terra', 'Spettro'),
('Golurk', 'Terra', 'Spettro'),
('Pawniard', 'Buio', 'Acciaio'),
('Bisharp', 'Buio', 'Acciaio'),
('Bouffalant', 'Normale', NULL),
('Rufflet', 'Normale', 'Volante'),
('Braviary', 'Normale', 'Volante'),
('Vullaby', 'Buio', 'Volante'),
('Mandibuzz', 'Buio', 'Volante'),
('Heatmor', 'Fuoco', NULL),
('Durant', 'Coleottero', 'Acciaio'),
('Deino', 'Buio', 'Drago'),
('Zweilous', 'Buio', 'Drago'),
('Hydreigon', 'Buio', 'Drago'),
('Larvesta', 'Coleottero', 'Fuoco'),
('Volcarona', 'Coleottero', 'Fuoco'),
('Cobalion', 'Acciaio', 'Lotta'),
('Terrakion', 'Roccia', 'Lotta'),
('Virizion', 'Erba', 'Lotta'),
('Tornadus', 'Volante', NULL),
('Thundurus', 'Elettro', 'Volante'),
('Reshiram', 'Drago', 'Fuoco'),
('Zekrom', 'Drago', 'Elettro'),
('Landorus', 'Terra', 'Volante'),
('Kyurem', 'Drago', 'Ghiaccio'),
('Keldeo', 'Acqua', 'Lotta'),
('Meloetta', 'Normale', 'Psico'),
('Genesect', 'Coleottero', 'Acciaio'),


-- INSERT POKEMON DI KALOS - tbPokemon
('Chespin', 'Erba', NULL),
('Quilladin', 'Erba', NULL),
('Chesnaught', 'Erba', 'Lotta'),
('Fennekin', 'Fuoco', NULL),
('Braixen', 'Fuoco', NULL),
('Delphox', 'Fuoco', 'Psico'),
('Froakie', 'Acqua', NULL),
('Frogadier', 'Acqua', NULL),
('Greninja', 'Acqua', 'Buio'),
('Bunnelby', 'Normale', NULL),
('Diggersby', 'Normale', 'Terra'),
('Fletchling', 'Normale', 'Volante'),
('Fletchinder', 'Fuoco', 'Volante'),
('Talonflame', 'Fuoco', 'Volante'),
('Scatterbug', 'Coleottero', NULL),
('Spewpa', 'Coleottero', NULL),
('Vivillon', 'Coleottero', 'Volante'),
('Litleo', 'Fuoco', 'Normale'),
('Pyroar', 'Fuoco', 'Normale'),
('Flabebe', 'Folletto', NULL), -- Flabébé è errato nel DB
('Floette', 'Folletto', NULL),
('Florges', 'Folletto', NULL),
('Skiddo', 'Erba', NULL),
('Gogoat', 'Erba', NULL),
('Pancham', 'Lotta', NULL),
('Pangoro', 'Lotta', 'Buio'),
('Furfrou', 'Normale', NULL),
('Espurr', 'Psico', NULL),
('Meowstic', 'Psico', NULL),
('Honedge', 'Acciaio', 'Spettro'),
('Doublade', 'Acciaio', 'Spettro'),
('Aegislash', 'Acciaio', 'Spettro'),
('Spritzee', 'Folletto', NULL),
('Aromatisse', 'Folletto', NULL),
('Swirlix', 'Folletto', NULL),
('Slurpuff', 'Folletto', NULL),
('Inkay', 'Buio', 'Psico'),
('Malamar', 'Buio', 'Psico'),
('Binacle', 'Roccia', 'Acqua'),
('Barbaracle', 'Roccia', 'Acqua'),
('Skrelp', 'Veleno', 'Acqua'),
('Dragalge', 'Veleno', 'Drago'),
('Clauncher', 'Acqua', NULL),
('Clawitzer', 'Acqua', NULL),
('Helioptile', 'Elettro', 'Normale'),
('Heliolisk', 'Elettro', 'Normale'),
('Tyrunt', 'Roccia', 'Drago'),
('Tyrantrum', 'Roccia', 'Drago'),
('Amaura', 'Roccia', 'Ghiaccio'),
('Aurorus', 'Roccia', 'Ghiaccio'),
('Sylveon', 'Folletto', NULL),
('Hawlucha', 'Lotta', 'Volante'),
('Dedenne', 'Elettro', 'Folletto'),
('Carbink', 'Roccia', 'Folletto'),
('Goomy', 'Drago', NULL),
('Sliggoo', 'Drago', NULL),
('Goodra', 'Drago', NULL),
('Klefki', 'Acciaio', 'Folletto'),
('Phantump', 'Spettro', 'Erba'),
('Trevenant', 'Spettro', 'Erba'),
('Pumpkaboo', 'Spettro', 'Erba'),
('Gourgeist', 'Spettro', 'Erba'),
('Bergmite', 'Ghiaccio', NULL),
('Avalugg', 'Ghiaccio', NULL),
('Noibat', 'Volante', 'Drago'),
('Noivern', 'Volante', 'Drago'),
('Xerneas', 'Folletto', NULL),
('Yveltal', 'Buio', 'Volante'),
('Zygarde', 'Drago', 'Terra'),
('Diancie', 'Roccia', 'Folletto'),
('Hoopa', 'Psico', 'Spettro'),
('Volcanion', 'Fuoco', 'Acqua'),
-- INSERT POKEMON DI ALOLA - tbPokemon
('Rowlet', 'Erba', 'Volante'),
('Dartrix', 'Erba', 'Volante'),
('Decidueye', 'Erba', 'Spettro'),
('Litten', 'Fuoco', NULL),
('Torracat', 'Fuoco', NULL),
('Incineroar', 'Fuoco', 'Buio'),
('Popplio', 'Acqua', NULL),
('Brionne', 'Acqua', NULL),
('Primarina', 'Acqua', 'Folletto'),
('Pikipek', 'Normale', 'Volante'),
('Trumbeak', 'Normale', 'Volante'),
('Toucannon', 'Normale', 'Volante'),
('Yungoos', 'Normale', NULL),
('Gumshoos', 'Normale', NULL),
('Grubbin', 'Coleottero', NULL),
('Charjabug', 'Coleottero', 'Elettro'),
('Vikavolt', 'Coleottero', 'Elettro'),
('Crabrawler', 'Lotta', NULL),
('Crabominable', 'Lotta', 'Ghiaccio'),
('Oricorio', 'Volante', 'Fuoco'), -- Pa'u Style
/* ('Oricorio', 'Volante', 'Elettro'), -- Pom-Pom Style
('Oricorio', 'Volante', 'Spettro'), -- Sensu Style
('Oricorio', 'Volante', 'Psico'), -- Baile Style */
('Cutiefly', 'Coleottero', 'Folletto'),
('Ribombee', 'Coleottero', 'Folletto'),
('Rockruff', 'Roccia', NULL),
('Lycanroc', 'Roccia', NULL), -- Midday Form
/* ('Lycanroc', 'Roccia', NULL), -- Midnight Form
('Lycanroc', 'Roccia', NULL), -- Dusk Form */
('Wishiwashi', 'Acqua', NULL),
('Mareanie', 'Acqua', 'Veleno'),
('Toxapex', 'Acqua', 'Veleno'),
('Mudbray', 'Terra', NULL),
('Mudsdale', 'Terra', NULL),
('Dewpider', 'Acqua', 'Coleottero'),
('Araquanid', 'Acqua', 'Coleottero'),
('Fomantis', 'Erba', NULL),
('Lurantis', 'Erba', NULL),
('Morelull', 'Erba', 'Folletto'),
('Shiinotic', 'Erba', 'Folletto'),
('Salandit', 'Veleno', 'Fuoco'),
('Salazzle', 'Veleno', 'Fuoco'),
('Stufful', 'Normale', 'Lotta'),
('Bewear', 'Normale', 'Lotta'),
('Bounsweet', 'Erba', NULL),
('Steenee', 'Erba', NULL),
('Tsareena', 'Erba', NULL),
('Comfey', 'Folletto', NULL),
('Oranguru', 'Normale', 'Psico'),
('Passimian', 'Lotta', NULL),
('Wimpod', 'Coleottero', 'Acqua'),
('Golisopod', 'Coleottero', 'Acqua'),
('Sandygast', 'Spettro', 'Terra'),
('Palossand', 'Spettro', 'Terra'),
('Pyukumuku', 'Acqua', NULL),
('Type: Null', 'Normale', NULL),
('Silvally', 'Normale', NULL),
('Minior', 'Roccia', 'Volante'),
('Komala', 'Normale', NULL),
('Turtonator', 'Fuoco', 'Drago'),
('Togedemaru', 'Elettro', 'Acciaio'),
('Mimikyu', 'Spettro', 'Folletto'),
('Bruxish', 'Acqua', 'Psico'),
('Drampa', 'Normale', 'Drago'),
('Dhelmise', 'Spettro', 'Erba'),
('Jangmo-o', 'Drago', NULL),
('Hakamo-o', 'Drago', 'Lotta'),
('Kommo-o', 'Drago', 'Lotta'),
('Tapu Koko', 'Elettro', 'Folletto'),
('Tapu Lele', 'Psico', 'Folletto'),
('Tapu Bulu', 'Erba', 'Folletto'),
('Tapu Fini', 'Acqua', 'Folletto'),
('Cosmog', 'Psico', NULL),
('Cosmoem', 'Psico', NULL),
('Solgaleo', 'Psico', 'Acciaio'),
('Lunala', 'Psico', 'Spettro'),
('Nihilego', 'Roccia', 'Veleno'),
('Buzzwole', 'Coleottero', 'Lotta'),
('Pheromosa', 'Coleottero', 'Lotta'),
('Xurkitree', 'Elettro', NULL),
('Celesteela', 'Acciaio', 'Volante'),
('Kartana', 'Erba', 'Acciaio'),
('Guzzlord', 'Buio', 'Drago'),
('Necrozma', 'Psico', NULL),
('Magearna', 'Acciaio', 'Folletto'),
('Marshadow', 'Lotta', 'Spettro'),
('Poipole', 'Veleno', NULL),
('Naganadel', 'Veleno', 'Drago'),
('Stakataka', 'Roccia', 'Acciaio'),
('Blacephalon', 'Fuoco', 'Spettro'),
('Zeraora', 'Elettro', NULL),
('Meltan', 'Acciaio', NULL),
('Melmetal', 'Acciaio', NULL),
-- INSERT POKEMON DI GALAR - tbPokemon
('Grookey', 'Erba', NULL),
('Thwackey', 'Erba', NULL),
('Rillaboom', 'Erba', NULL),
('Scorbunny', 'Fuoco', NULL),
('Raboot', 'Fuoco', NULL),
('Cinderace', 'Fuoco', NULL),
('Sobble', 'Acqua', NULL),
('Drizzile', 'Acqua', NULL),
('Inteleon', 'Acqua', NULL),
('Skwovet', 'Normale', NULL),
('Greedent', 'Normale', NULL),
('Rookidee', 'Volante', NULL),
('Corvisquire', 'Volante', NULL),
('Corviknight', 'Volante', 'Acciaio'),
('Blipbug', 'Coleottero', NULL),
('Dottler', 'Coleottero', 'Psico'),
('Orbeetle', 'Coleottero', 'Psico'),
('Nickit', 'Buio', NULL),
('Thievul', 'Buio', NULL),
('Gossifleur', 'Erba', NULL),
('Eldegoss', 'Erba', NULL),
('Wooloo', 'Normale', NULL),
('Dubwool', 'Normale', NULL),
('Chewtle', 'Acqua', NULL),
('Drednaw', 'Acqua', 'Roccia'),
('Yamper', 'Elettro', NULL),
('Boltund', 'Elettro', NULL),
('Rolycoly', 'Roccia', NULL),
('Carkol', 'Roccia', 'Fuoco'),
('Coalossal', 'Roccia', 'Fuoco'),
('Applin', 'Erba', 'Drago'),
('Flapple', 'Erba', 'Drago'),
('Appletun', 'Erba', 'Drago'),
('Silicobra', 'Terra', NULL),
('Sandaconda', 'Terra', NULL),
('Cramorant', 'Volante', 'Acqua'),
('Arrokuda', 'Acqua', NULL),
('Barraskewda', 'Acqua', NULL),
('Toxel', 'Elettro', 'Veleno'),
('Toxtricity', 'Elettro', 'Veleno'),
('Sizzlipede', 'Fuoco', 'Coleottero'),
('Centiskorch', 'Fuoco', 'Coleottero'),
('Clobbopus', 'Lotta', NULL),
('Grapploct', 'Lotta', NULL),
('Sinistea', 'Spettro', NULL),
('Polteageist', 'Spettro', NULL),
('Hatenna', 'Psico', NULL),
('Hattrem', 'Psico', NULL),
('Hatterene', 'Psico', 'Folletto'),
('Impidimp', 'Buio', 'Folletto'),
('Morgrem', 'Buio', 'Folletto'),
('Grimmsnarl', 'Buio', 'Folletto'),
('Obstagoon', 'Buio', 'Normale'),
('Perrserker', 'Acciaio', NULL),
('Cursola', 'Spettro', NULL),
('Sirfetch\d', 'Lotta', NULL),
('Mr. Rime', 'Ghiaccio', 'Psico'),
('Runerigus', 'Terra', 'Spettro'),
('Milcery', 'Folletto', NULL),
('Alcremie', 'Folletto', NULL),
('Falinks', 'Lotta', NULL),
('Pincurchin', 'Elettro', NULL),
('Snom', 'Ghiaccio', 'Coleottero'),
('Frosmoth', 'Ghiaccio', 'Coleottero'),
('Stonjourner', 'Roccia', NULL),
('Eiscue', 'Ghiaccio', NULL),
('Indeedee', 'Psico', 'Normale'),
('Morpeko', 'Elettro', 'Buio'),
('Cufant', 'Acciaio', NULL),
('Copperajah', 'Acciaio', NULL),
('Dracozolt', 'Elettro', 'Drago'),
('Arctozolt', 'Elettro', 'Ghiaccio'),
('Dracovish', 'Acqua', 'Drago'),
('Arctovish', 'Acqua', 'Ghiaccio'),
('Duraludon', 'Acciaio', 'Drago'),
('Dreepy', 'Drago', 'Spettro'),
('Drakloak', 'Drago', 'Spettro'),
('Dragapult', 'Drago', 'Spettro'),
('Zacian', 'Folletto', NULL),
('Zamazenta', 'Lotta', NULL),
('Eternatus', 'Veleno', 'Drago'),
('Kubfu', 'Lotta', NULL),
('Urshifu', 'Lotta', 'Buio'), -- Single Strike Style
--('Urshifu', 'Lotta', 'Acqua'), -- Rapid Strike Style
('Zarude', 'Erba', 'Buio'),
('Regieleki', 'Elettro', NULL),
('Regidrago', 'Drago', NULL),
('Glastrier', 'Ghiaccio', NULL),
('Spectrier', 'Spettro', NULL),
('Calyrex', 'Psico', 'Erba'),


-- INSERT HISUI REGION POKEMON - tbPokemon
('Wyrdeer', 'Normale', 'Psico'),
('Kleavor', 'Coleottero', 'Roccia'),
('Ursaluna', 'Terra', 'Normale'),
('Basculegion', 'Acqua', 'Spettro'),
('Sneasler', 'Lotta', 'Veleno'),
('Overqwil', 'Buio', 'Veleno'),
('Enamorus', 'Folletto', 'Volante'),


-- INSERT PALDEA REGION POKEMON - tbPokemon
('Sprigatito','Erba',Null),
('Floragato','Erba',Null),
('Meowscarada','Erba','Buio'),
('Fuecoco','Fuoco',Null),
('Crocalor','Fuoco',Null),
('Skeledirge','Fuoco','Spettro'),
('Quaxly','Acqua',Null),
('Quaxwell','Acqua',Null),
('Quaquaval','Acqua','Lotta'),
('Lechonk','Normale',Null),
('Oinkologne','Normale',Null),
('Tarountula','Coleottero',Null),
('Spidops','Coleottero',Null),
('Nymble','Coleottero',Null),
('Lokix','Coleottero','Buio'),
('Pawmi','Elettro',Null),
('Pawmo','Elettro','Lotta'),
('Pawmot','Elettro','Lotta'),
('Tandemaus','Normale',Null),
('Maushold','Normale',Null),
('Fidough','Folletto',Null),
('Dachsbun','Folletto',Null),
('Smoliv','Erba','Normale'),
('Doliv','Erba','Normale'),
('Arboliva','Erba','Normale'),
('Squawkabilly','Normale','Volante'),
('Nacli','Roccia',Null),
('Naclstack','Roccia',Null),
('Garganacl','Roccia',Null),
('Charcadet','Fuoco',Null),
('Armarouge','Fuoco',Null),
('Ceruledge','Fuoco','Spettro'),
('Tadbulb','Elettro',Null),
('Bellibolt','Elettro',Null),
('Wattrel','Elettro','Volante'),
('Kilowattrel','Elettro','Volante'),
('Maschiff','Buio',Null),
('Mabosstiff','Buio',Null),
('Shroodle','Veleno','Normale'),
('Grafaiai','Veleno','Normale'),
('Bramblin','Erba','Spettro'),
('Brambleghast','Erba','Spettro'),
('Toedscool','Terra','Erba'),
('Toedscruel','Terra','Erba'),
('Klawf','Roccia',Null),
('Capsakid','Erba',Null),
('Scovillain','Erba','Fuoco'),
('Rellor','Coleottero',Null),
('Rabsca','Coleottero','Psico'),
('Flittle','Psico',Null),
('Espathra','Psico',Null),
('Tinkatink','Psico','Acciaio'),
('Tinkatuff','Psico','Acciaio'),
('Tinkaton','Psico','Acciaio'),
('Wiglett','Acqua',Null),
('Wugtrio','Acqua',Null),
('Bombirdier','Volante','Buio'),
('Finizen','Acqua',Null),
('Palafin','Acqua',Null),
('Varoom','Acciaio','Veleno'),
('Revavroom','Acciaio','Veleno'),
('Cyclizar','Drago','Normale'),
('Orthworm','Acciaio',Null),
('Glimmet','Roccia','Veleno'),
('Glimmora','Roccia','Veleno'),
('Greavard','Spettro',Null),
('Houndstone','Spettro',Null),
('Flamigo','Volante','Lotta'),
('Cetoddle','Ghiaccio',Null),
('Cetitan','Ghiaccio',Null),
('Veluza','Acqua','Psico'),
('Dondozo','Acqua',Null),
('Tatsugiri','Drago','Acqua'),
('Annihilape','Lotta','Spettro'),
('Clodsire','Veleno','Terra'),
('Farigiraf','Normale','Psico'),
('Dudunsparce','Normale',Null),
('Kingambit','Buio','Acciaio'),
('Grandizanne', 'Terra', 'Lotta'),
('Codaurlante', 'Folletto', 'Psico'),
('Fungofurioso', 'Erba', 'Buio'),
('Crinealato', 'Spettro', 'Folletto'),
('Alirasenti', 'Coleottero', 'Lotta'),
('Peldisabbia', 'Elettro', 'Terra'),
('Solcoferreo', 'Terra', 'Acciaio'),
('Saccoferreo', 'Ghiaccio', 'Acqua'),
('Manoferrea', 'Lotta', 'Elettro'),
('Colloferreo', 'Buio', 'Volante'),
('Falenaferrea', 'Fuoco', 'Veleno'),
('Spineferree', 'Roccia', 'Elettro'),
('Frigibax', 'Drago', 'Ghiaccio'),
('Arctibax', 'Drago', 'Ghiaccio'),
('Baxcalibur', 'Drago', 'Ghiaccio'),
('Gimmighoul', 'Spettro', Null),
('Gholdengo', 'Acciaio', 'Spettro'),
('Wo-Chien', 'Buio', 'Erba'),
('Chien-Pao', 'Buio', 'Ghiaccio'),
('Ting-Lu', 'Buio', 'Terra'),
('Chi-Yu', 'Buio', 'Fuoco'),
('Lunaruggente', 'Drago', 'Buio'),
('Eroeferreo', 'Folletto', 'Lotta'),
('Koraidon', 'Lotta', 'Drago'),
('Miraidon', 'Elettro', 'Drago'),
('Acquecrespe', 'Acqua', 'Drago'),
('Fogliaferrea', 'Erba', 'Psico'),
('Dipplin', 'Erba', 'Drago'),
('Poltchageist', 'Erba', 'Spettro'),
('Sinistcha', 'Elettro', 'Spettro'),
('Okidogi', 'Veleno', 'Lotta'),
('Munkidori', 'Veleno', 'Folletto'),
('Fezandipiti', 'Veleno', 'Folletto'),
('Ogerpon', 'Erba', Null),
('Archaludon', 'Acciaio', 'Drago'),
('Hydrapple', 'Erba', 'Drago'),
('Vampeaguzze', 'Fire', 'Drago'),
('Furiatonante', 'Elettro', 'Drago'),
('Massoferreo', 'Roccia', 'Psico'),
('Capoferreo', 'Acciaio', 'Psico'),
('Terapagos', 'Normal', Null),
('Pecharunt', 'Veleno', 'Spettro');

-- Base Stat Megaevoluzioni

-- kanto mega
/* (80,100,123,122,120,80,3) --Mega Venusaur
(78,130,111,130,85,100,6) -- Mega Charizard X
(78,104,78,159,115,100,6) -- Mega Charizard Y
(79,103,120,135,115,78,9) --Mega Blastoise
(65,150,40,15,80,145,15) -- Mega Beedril
(83,80,80,135,80,121,18) -- Mega Pidgeot
(55,50,65,175,105,150,65) --Mega Alakazam
(95,75,180,130,80,30,80) -- Mega Slowbro
(60,65,80,170,95,130,94) -- Mega Gengar
(105,125,100,60,100,100,115) --Mega Kangaskhan
(65,155,120,65,90,105,127) -- Mega Pinsir
(95,155,109,70,130,81,130) -- Mega Gyarados
(80,135,85,70,95,150,142) -- Mega Aerodactyl
(106,190,100,154,100,130,150) -- Mega Mewtwo X
(106,150,70,194,120,140,150) -- Mega Mewtwo Y

-- johto mega
(90,95,105,165,110,45,181) -- Mega Ampharos
(75,125,230,55,95,30,208) -- Mega Steelix
(70,150,140,65,100,75,212) -- Mega Scizor
(80,185,115,40,105,75,214) -- Mega Heracross
(75,90,90,140,90,115,229) -- Mega Houndoom
(100,164,150,95,120,71,248) -- Mega Scizor */

-- insert Base Stat primi 151 Pokemon
INSERT INTO tbStatsBase (Ps, Att, Def, AttS, DefS, Spd, id_pokemon) VALUES
(45, 49, 49, 65, 65, 45, 1), -- Bulbasaur
(60, 62, 63, 80, 80, 60, 2), -- Ivysaur
(80, 82, 83, 100, 100, 80, 3), -- Venusaur
(39, 52, 43, 60, 50, 65, 4), -- Charmander
(58, 64, 58, 80, 65, 80, 5), -- Charmeleon
(78, 84, 78, 109, 85, 100, 6), -- Charizard
(44, 48, 65, 50, 64, 43, 7), -- Squirtle
(59, 63, 80, 65, 80, 58, 8), -- Wartortle
(79, 83, 100, 85, 105, 78, 9), -- Blastoise
(45, 49, 49, 65, 65, 45, 10), -- Caterpie
(50, 20, 55, 25, 25, 30, 11), -- Metapod
(60, 45, 50, 90, 80, 70, 12), -- Butterfree
(40, 35, 30, 20, 20, 50, 13), -- Weedle
(45, 25, 50, 25, 25, 35, 14), -- Kakuna
(65, 90, 40, 45, 80, 75, 15), -- Beedrill
(40, 45, 40, 35, 35, 56, 16), -- Pidgey
(63, 60, 55, 50, 50, 71, 17), -- Pidgeotto
(83, 80, 75, 70, 70, 101, 18), -- Pidgeot
(30, 56, 35, 25, 35, 72, 19), -- Rattata
(55, 81, 60, 50, 70, 97, 20), -- Raticate
(40, 60, 30, 31, 31, 70, 21), -- Spearow
(65, 90, 65, 61, 61, 100, 22), -- Fearow
(35, 60, 44, 40, 54, 55, 23), -- Ekans
(60, 95, 69, 65, 79, 80, 24), -- Arbok
(35, 55, 30, 50, 40, 90, 25), -- Pikachu
(60, 90, 55, 90, 80, 110, 26), -- Raichu
(35, 40, 100, 90, 55, 35, 27), -- Sandshrew
(50, 75, 85, 20, 30, 40, 28), -- Sandslash
(30, 56, 35, 25, 35, 72, 29), -- Nidoran♀
(55, 81, 60, 50, 70, 97, 30), -- Nidorina
(70, 92, 87, 75, 85, 76, 31), -- Nidoqueen
(30, 55, 30, 40, 40, 60, 32), -- Nidoran♂
(50, 75, 70, 40, 40, 95, 33), -- Nidorino
(75, 100, 95, 60, 70, 110, 34), -- Nidoking
(40, 45, 40, 35, 35, 56, 35), -- Clefairy
(95, 70, 73, 95, 90, 60, 36), -- Clefable
(45, 50, 55, 75, 65, 30, 37), -- Vulpix
(73, 76, 75, 81, 100, 100, 38), -- Ninetales
(38, 41, 40, 50, 65, 65, 39), -- Jigglypuff
(68, 64, 65, 80, 80, 105, 40), -- Wigglytuff
(40, 80, 35, 35, 45, 70, 41), -- Zubat
(75, 105, 60, 60, 70, 95, 42), -- Golbat
(45, 50, 55, 75, 65, 30, 43), -- Oddish
(60, 65, 70, 85, 75, 40, 44), -- Gloom
(75, 80, 85, 110, 90, 50, 45), -- Vileplume
(35, 70, 55, 45, 55, 25, 46), -- Paras
(60, 95, 80, 60, 80, 30, 47), -- Parasect
(60, 55, 50, 40, 55, 45, 48), -- Venonat
(70, 65, 60, 90, 75, 90, 49), -- Venomoth
(10, 55, 25, 35, 45, 95, 50), -- Diglett
(35, 80, 50, 50, 70, 120, 51), -- Dugtrio
(60, 45, 50, 90, 80, 70, 52), -- Meowth
(35, 60, 44, 40, 54, 55, 53), -- Persian
(60, 85, 69, 65, 79, 80, 54), -- Psyduck
(65, 110, 80, 95, 80, 85, 55), -- Golduck
(50, 75, 85, 20, 30, 40, 56), -- Mankey
(80, 120, 90, 45, 45, 55, 57), -- Primeape
(40, 45, 65, 100, 120, 90, 58), -- Growlithe
(55, 70, 45, 70, 50, 60, 59), -- Arcanine
(70, 80, 50, 35, 35, 35, 60), -- Poliwag
(90, 95, 95, 70, 90, 70, 61), -- Poliwhirl
(90, 95, 95, 70, 90, 70, 62), -- Poliwrath
(25, 20, 15, 105, 55, 90, 63), -- Abra
(40, 35, 30, 120, 70, 105, 64), -- Kadabra
(55, 50, 45, 135, 95, 120, 65), -- Alakazam
(70, 80, 50, 35, 35, 35, 66), -- Machop
(80, 100, 70, 50, 60, 45, 67), -- Machoke
(90, 130, 80, 65, 85, 55, 68), -- Machamp
(50, 120, 53, 35, 110, 87, 69), -- Bellsprout
(65, 90, 63, 45, 85, 55, 70), -- Weepinbell
(80, 105, 65, 70, 100, 70, 71), -- Victreebel
(40, 40, 35, 50, 100, 70, 72), -- Tentacool
(80, 70, 65, 80, 120, 100, 73), -- Tentacruel
(40, 80, 100, 30, 30, 20, 74), -- Geodude
(55, 95, 115, 45, 45, 35, 75), -- Graveler
(80, 120, 130, 55, 65, 45, 76), -- Golem
(50, 85, 55, 65, 65, 90, 77), -- Ponyta
(65, 100, 70, 80, 80, 105, 78), -- Rapidash
(90, 65, 65, 40, 40, 15, 79), -- Slowpoke
(95, 75, 110, 100, 80, 30, 80), -- Slowbro
(25, 35, 70, 95, 55, 45, 81), -- Magnemite
(50, 60, 95, 120, 70, 70, 82), -- Magneton
(52, 65, 55, 58, 62, 60, 83), -- Farfetch'd
(35, 85, 45, 35, 35, 75, 84), -- Doduo
(60, 110, 70, 60, 60, 100, 85), -- Dodrio
(65, 45, 55, 45, 70, 45, 86), -- Seel
(90, 70, 80, 70, 95, 70, 87), -- Dewgong
(80, 80, 50, 40, 50, 25, 88), -- Grimer
(105, 105, 75, 65, 100, 50, 89), -- Muk
(30, 65, 100, 45, 25, 40, 90), -- Shellder
(50, 95, 180, 85, 45, 70, 91), -- Cloyster
(30, 35, 30, 100, 35, 80, 92), -- Gastly
(45, 50, 45, 115, 55, 95, 93), -- Haunter
(60, 65, 60, 130, 75, 110, 94), -- Gengar
(35, 45, 160, 30, 45, 70, 95), -- Onix
(60, 48, 45, 43, 90, 42, 96), -- Drowzee
(85, 73, 70, 73, 115, 67, 97), -- Hypno
(30, 105, 90, 25, 25, 50, 98), -- Krabby
(55, 130, 115, 50, 50, 75, 99), -- Kingler
(40, 30, 50, 55, 55, 100, 100), -- Voltorb
(60, 50, 70, 80, 80, 140, 101), -- Electrode
(60, 40, 80, 60, 45, 40, 102), -- Exeggcute
(95, 95, 85, 125, 65, 55, 103), -- Exeggutor
(50, 50, 95, 40, 50, 35, 104), -- Cubone
(60, 80, 110, 50, 80, 45, 105), -- Marowak
(50, 120, 53, 35, 110, 87, 106), -- Hitmonlee
(50, 105, 79, 35, 110, 76, 107), -- Hitmonchan
(90, 55, 75, 60, 75, 30, 108), -- Lickitung
(40, 65, 95, 60, 45, 35, 109), -- Koffing
(65, 90, 120, 85, 70, 60, 110), -- Weezing
(80, 85, 95, 30, 30, 25, 111), -- Rhyhorn
(105, 130, 120, 45, 45, 40, 112), -- Rhydon
(250, 5, 5, 35, 105, 50, 113), -- Chansey
(65, 55, 115, 100, 40, 60, 114), -- Tangela
(105, 95, 80, 40, 80, 90, 115), -- Kangaskhan
(30, 40, 70, 70, 25, 60, 116), -- Horsea
(55, 65, 95, 95, 45, 85, 117), -- Seadra
(45, 67, 60, 35, 50, 63, 118), -- Goldeen
(80, 92, 65, 65, 80, 68, 119), -- Seaking
(30, 45, 55, 70, 55, 85, 120), -- Staryu
(60, 75, 85, 100, 85, 115, 121), -- Starmie
(40, 45, 65, 100, 120, 90, 122), -- Mr. Mime
(70, 110, 80, 55, 80, 105, 123), -- Scyther
(65, 50, 35, 115, 95, 95, 124), -- Jynx
(65, 83, 57, 95, 85, 105, 125), -- Electabuzz
(65, 95, 57, 100, 85, 93, 126), -- Magmar
(65, 125, 100, 55, 70, 85, 127), -- Pinsir
(75, 100, 95, 40, 70, 110, 128), -- Tauros
(20, 10, 55, 15, 20, 80, 129), -- Magikarp
(95, 125, 79, 60, 100, 81, 130), -- Gyarados
(130, 85, 80, 85, 95, 60, 131), -- Lapras
(48, 48, 48, 48, 48, 48, 132), -- Ditto
(55, 55, 50, 45, 65, 55, 133), -- Eevee
(130, 65, 60, 110, 95, 65, 134), -- Vaporeon
(65, 65, 60, 110, 95, 65, 135), -- Jolteon
(65, 130, 60, 95, 110, 65, 136), -- Flareon
(65, 60, 70, 85, 75, 40, 137), -- Porygon
(35, 40, 100, 90, 55, 35, 138), -- Omanyte
(70, 60, 125, 115, 70, 55, 139), -- Omastar
(30, 80, 90, 55, 45, 55, 140), -- Kabuto
(60, 115, 105, 65, 70, 80, 141), -- Kabutops
(80, 105, 65, 60, 75, 130, 142), -- Aerodactyl
(160, 110, 65, 65, 110, 30, 143), -- Snorlax
(90, 85, 100, 95, 125, 85, 144), -- Articuno
(90, 90, 85, 125, 90, 100, 145), -- Zapdos
(90, 100, 90, 125, 85, 90, 146), -- Moltres
(41, 64, 45, 50, 50, 50, 147), -- Dratini
(61, 84, 65, 70, 70, 70, 148), -- Dragonair
(91, 134, 95, 100, 100, 80, 149), -- Dragonite
(106, 110, 90, 154, 90, 130, 150), -- Mewtwo
(100, 100, 100, 100, 100, 100, 151), -- Mew


-- insert Base Stat 100 Pokemon johto
(45, 49, 65, 49, 65, 45, 152), -- Chikorita
(60, 62, 80, 63, 80, 60, 153), -- Bayleef
(80, 82, 100, 83, 100, 80, 154), -- Meganium
(39, 52, 43, 60, 50, 65, 155), -- Cyndaquil
(58, 64, 58, 80, 65, 80, 156), -- Quilava
(78, 84, 78, 109, 85, 100, 157), -- Typhlosion
(50, 65, 64, 44, 48, 43, 158), -- Totodile
(65, 80, 80, 59, 63, 58, 159), -- Croconaw
(85, 105, 100, 78, 83, 78, 160), -- Feraligatr
(35, 46, 34, 35, 35, 20, 161), -- Sentret
(85, 76, 64, 45, 55, 90, 162), -- Furret
(60, 30, 30, 36, 56, 50, 163), -- Hoothoot
(100, 50, 50, 76, 96, 70, 164), -- Noctowl
(40, 60, 40, 40, 40, 30, 165), -- Ledyba
(55, 80, 55, 50, 55, 85, 166), -- Ledian
(40, 60, 40, 40, 40, 30, 167), -- Spinarak
(70, 90, 70, 60, 70, 40, 168), -- Ariados
(85, 90, 80, 70, 80, 130, 169), -- Crobat
(55, 55, 55, 70, 55, 85, 170), -- Chinchou
(85, 65, 85, 75, 85, 90, 171), -- Lanturn
(20, 40, 15, 35, 35, 60, 172), -- Pichu
(50, 25, 28, 45, 55, 15, 173), -- Cleffa
(90, 30, 15, 40, 20, 15, 174), -- Igglybuff
(35, 20, 65, 40, 65, 20, 175), -- Togepi
(55, 40, 85, 80, 105, 40, 176), -- Togetic
(40, 50, 45, 70, 45, 70, 177), -- Natu
(65, 75, 70, 95, 70, 95, 178), -- Xatu
(55, 40, 40, 65, 45, 35, 179), -- Mareep
(70, 55, 55, 80, 60, 45, 180), -- Flaaffy
(90, 75, 85, 115, 90, 55, 181), -- Ampharos
(75, 80, 95, 90, 100, 50, 182), -- Bellossom
(70, 20, 50, 20, 50, 40, 183), -- Marill
(100, 50, 80, 60, 80, 50, 184), -- Azumarill
(60, 95, 95, 60, 95, 30, 185), -- Sudowoodo
(90, 75, 75, 90, 100, 70, 186), -- Politoed
(60, 55, 40, 30, 40, 60, 187), -- Hoppip
(75, 80, 55, 50, 65, 30, 188), -- Skiploom
(85, 100, 70, 80, 105, 50, 189), -- Jumpluff
(65, 46, 34, 35, 35, 28, 190), -- Aipom
(30, 30, 30, 30, 30, 30, 191), -- Sunkern
(75, 75, 55, 105, 85, 30, 192), -- Sunflora
(65, 90, 45, 75, 45, 95, 193), -- Yanma
(55, 45, 45, 25, 25, 15, 194), -- Wooper
(95, 85, 85, 65, 65, 35, 195), -- Quagsire
(65, 65, 60, 130, 95, 110, 196), -- Espeon
(95, 65, 110, 60, 130, 65, 197), -- Umbreon
(60, 85, 42, 85, 42, 91, 198), -- Murkrow
(95, 75, 80, 100, 110, 30, 199), -- Slowking
(60, 60, 60, 85, 85, 85, 200), -- Misdreavus
(48, 72, 48, 72, 48, 48, 201), -- Unown
(190, 33, 58, 33, 58, 33, 202), -- Wobbuffet
(70, 80, 65, 90, 65, 85, 203), -- Girafarig
(50, 65, 90, 35, 35, 15, 204), -- Pineco
(75, 90, 140, 60, 60, 40, 205), -- Forretress
(100, 70, 70, 65, 75, 40, 206), -- Dunsparce
(65, 75, 105, 35, 65, 85, 207), -- Gligar
(75, 85, 200, 55, 65, 30, 208), -- Steelix
(60, 80, 50, 40, 50, 25, 209), -- Snubbull
(90, 120, 75, 60, 60, 45, 210), -- Granbull
(65, 95, 75, 55, 55, 85, 211), -- Qwilfish
(70, 130, 100, 55, 80, 65, 212), -- Scizor
(20, 10, 230, 10, 230, 5, 213), -- Shuckle
(80, 125, 75, 40, 95, 85, 214), -- Heracross
(55, 95, 55, 35, 75, 115, 215), -- Sneasel
(60, 80, 50, 50, 50, 40, 216), -- Teddiursa
(90, 130, 75, 75, 75, 55, 217), -- Ursaring
(40, 40, 40, 70, 40, 20, 218), -- Slugma
(50, 50, 120, 80, 80, 30, 219), -- Magcargo
(50, 50, 40, 30, 30, 30, 220), -- Swinub
(100, 100, 80, 60, 60, 50, 221), -- Piloswine
(55, 55, 85, 65, 85, 35, 222), -- Corsola
(35, 65, 35, 65, 35, 65, 223), -- Remoraid
(75, 105, 75, 105, 75, 45, 224), -- Octillery
(45, 55, 45, 65, 45, 75, 225), -- Delibird
(65, 40, 70, 80, 140, 70, 226), -- Mantine
(65, 80, 140, 40, 70, 70, 227), -- Skarmory
(45, 60, 30, 80, 50, 65, 228), -- Houndour
(75, 90, 50, 110, 80, 95, 229), -- Houndoom
(75, 95, 95, 95, 95, 85, 230), -- Kingdra
(90, 60, 60, 40, 40, 40, 231), -- Phanpy
(90, 120, 120, 60, 60, 50, 232), -- Donphan
(85, 80, 90, 105, 95, 60, 233), -- Porygon2
(73, 95, 62, 85, 65, 85, 234), -- Stantler
(55, 20, 35, 20, 45, 75, 235), -- Smeargle
(35, 35, 35, 35, 35, 35, 236), -- Tyrogue
(50, 95, 95, 35, 110, 70, 237), -- Hitmontop
(45, 30, 15, 85, 65, 65, 238), -- Smoochum
(45, 75, 37, 70, 55, 83, 239), -- Elekid
(45, 75, 37, 70, 55, 83, 240), -- Magby
(95, 80, 105, 40, 70, 100, 241), -- Miltank
(255, 10, 10, 75, 135, 55, 242), -- Blissey
(90, 85, 75, 115, 100, 115, 243), -- Raikou
(115, 115, 85, 90, 75, 100, 244), -- Entei
(100, 75, 115, 90, 115, 85, 245), -- Suicune
(50, 64, 50, 45, 50, 41, 246), -- Larvitar
(70, 84, 70, 65, 70, 51, 247), -- Pupitar
(100, 134, 110, 95, 100, 61, 248), -- Tyranitar
(106, 90, 130, 90, 154, 110, 249), -- Lugia
(106, 130, 90, 110, 154, 90, 250), -- Ho-oh
(100, 100, 100, 100, 100, 100, 251), -- Celebi


-- insert Base Stat Pokemon di Hoenn
(40, 45, 35, 65, 55, 70, 252), -- Treecko
(50, 65, 45, 85, 65, 95, 253), -- Grovyle
(70, 85, 65, 105, 85, 120, 254), -- Sceptile
(45, 60, 40, 70, 50, 45, 255), -- Torchic
(60, 85, 60, 85, 60, 55, 256), -- Combusken
(80, 120, 70, 110, 70, 80, 257), -- Blaziken
(50, 70, 50, 50, 50, 40, 258), -- Mudkip
(70, 85, 70, 60, 70, 50, 259), -- Marshtomp
(100, 110, 90, 85, 90, 60, 260), -- Swampert
(35, 55, 35, 30, 30, 35, 261), -- Poochyena
(70, 90, 70, 60, 60, 70, 262), -- Mightyena
(38, 30, 41, 30, 41, 60, 263), -- Zigzagoon
(78, 70, 61, 50, 61, 100, 264), -- Linoone
(40, 45, 40, 35, 35, 56, 265), -- Wurmple
(45, 35, 34, 40, 34, 45, 266), -- Silcoon
(50, 70, 50, 50, 50, 65, 267), -- Beautifly
(60, 50, 70, 50, 90, 65, 268), -- Cascoon
(50, 35, 55, 25, 25, 15, 269), -- Dustox
(40, 30, 30, 40, 50, 30, 270), -- Lotad
(60, 50, 50, 60, 70, 50, 271), -- Lombre
(80, 70, 70, 90, 100, 70, 272), -- Ludicolo
(40, 40, 50, 30, 30, 30, 273), -- Seedot
(70, 70, 40, 60, 40, 60, 274), -- Nuzleaf
(90, 100, 60, 90, 60, 80, 275), -- Shiftry
(40, 55, 30, 30, 30, 85, 276), -- Taillow
(60, 85, 60, 50, 50, 125, 277), -- Swellow
(40, 30, 30, 55, 30, 85, 278), -- Wingull
(60, 50, 100, 85, 70, 65, 279), -- Pelipper
(68, 45, 43, 55, 43, 72, 280), -- Ralts
(98, 65, 65, 50, 55, 80, 281), -- Kirlia
(68, 85, 65, 165, 135, 100, 282), -- Gardevoir
(40, 30, 32, 50, 52, 65, 283), -- Surskit
(70, 60, 62, 80, 82, 60, 284), -- Masquerain
(60, 40, 60, 40, 60, 35, 285), -- Shroomish
(60, 130, 80, 60, 60, 70, 286), -- Breloom
(40, 60, 60, 40, 40, 35, 287), -- Slakoth
(70, 100, 70, 60, 70, 45, 288), -- Vigoroth
(100, 160, 100, 95, 110, 65, 289), -- Slaking
(35, 55, 35, 30, 30, 35, 290), -- Nincada
(45, 90, 45, 30, 30, 40, 291), -- Ninjask
(1, 40, 90, 30, 90, 40, 292), -- Shedinja
(99, 58, 58, 76, 76, 67, 293), -- Whismur
(99, 68, 83, 72, 87, 51, 294), -- Loudred
(99, 98, 63, 98, 63, 45, 295), -- Exploud
(50, 85, 125, 85, 115, 20, 296), -- Makuhita
(70, 120, 75, 60, 75, 45, 297), -- Hariyama
(50, 20, 40, 20, 40, 20, 298), -- Azurill
(30, 45, 135, 45, 90, 30, 299), -- Nosepass
(50, 45, 45, 35, 35, 50, 300), -- Skitty
(70, 65, 65, 55, 55, 70, 301), -- Delcatty
(50, 75, 75, 65, 65, 50, 302), -- Sableye
(50, 85, 85, 55, 55, 50, 303), -- Mawile
(30, 40, 90, 55, 90, 30, 304), -- Aron
(60, 80, 110, 50, 80, 45, 305), -- Lairon
(70, 130, 180, 60, 90, 40, 306), -- Aggron
(30, 40, 55, 40, 55, 60, 307), -- Meditite
(60, 60, 75, 60, 75, 80, 308), -- Medicham
(40, 45, 40, 65, 40, 65, 309), -- Electrike
(70, 75, 60, 105, 60, 105, 310), -- Manectric
(60, 45, 70, 75, 85, 95, 311), -- Plusle
(60, 85, 50, 75, 50, 95, 312), -- Minun
(65, 47, 55, 73, 75, 85, 313), -- Volbeat
(65, 73, 75, 47, 55, 85, 314), -- Illumise
(50, 60, 45, 100, 80, 65, 315), -- Roselia
(70, 43, 53, 43, 53, 40, 316), -- Gulpin
(100, 73, 83, 73, 83, 55, 317), -- Swalot
(45, 90, 20, 65, 20, 65, 318), -- Carvanha
(70, 120, 40, 95, 40, 95, 319), -- Sharpedo
(130, 70, 35, 70, 35, 60, 320), -- Wailmer
(170, 90, 45, 90, 45, 60, 321), -- Wailord
(50, 85, 85, 35, 35, 35, 322), -- Numel
(70, 100, 70, 105, 75, 40, 323), -- Camerupt
(70, 85, 140, 85, 70, 20, 324), -- Torkoal
(60, 60, 40, 65, 45, 35, 325), -- Spoink
(80, 80, 65, 90, 65, 55, 326), -- Grumpig
(45, 60, 40, 70, 50, 25, 327), -- Spinda
(45, 100, 45, 45, 45, 10, 328), -- Trapinch
(50, 70, 50, 50, 50, 70, 329), -- Vibrava
(80, 100, 80, 80, 80, 100, 330), -- Flygon
(70, 85, 140, 85, 70, 20, 331), -- Cacnea
(90, 140, 70, 110, 70, 60, 332), -- Cacturne
(35, 40, 15, 20, 20, 15, 333), -- Swablu
(45, 50, 35, 55, 75, 40, 334), -- Altaria
(73, 115, 60, 60, 60, 90, 335), -- Zangoose
(73, 100, 60, 100, 60, 65, 336), -- Seviper
(70, 55, 65, 95, 85, 70, 337), -- Lunatone
(70, 95, 85, 55, 65, 70, 338), -- Solrock
(50, 48, 43, 46, 41, 60, 339), -- Barboach
(110, 78, 73, 76, 71, 60, 340), -- Whiscash
(43, 80, 65, 50, 35, 35, 341), -- Corphish
(63, 120, 85, 90, 55, 55, 342), -- Crawdaunt
(30, 40, 55, 40, 55, 100, 343), -- Baltoy
(60, 70, 105, 70, 120, 75, 344), -- Claydol
(66, 41, 77, 61, 87, 23, 345), -- Lileep
(86, 81, 97, 81, 107, 43, 346), -- Cradily
(45, 95, 50, 40, 50, 75, 347), -- Anorith
(75, 125, 100, 70, 80, 45, 348), -- Armaldo
(20, 15, 20, 10, 55, 80, 349), -- Feebas
(95, 60, 79, 100, 125, 81, 350), -- Milotic
(70, 70, 70, 70, 70, 70, 351), -- Castform
(60, 90, 70, 60, 120, 40, 352), -- Kecleon
(44, 75, 35, 63, 33, 45, 353), -- Shuppet
(64, 115, 65, 83, 63, 65, 354), -- Banette
(20, 40, 90, 30, 90, 25, 355), -- Duskull
(40, 70, 130, 60, 130, 25, 356), -- Dusclops
(99, 68, 83, 72, 87, 51, 357), -- Tropius
(65, 50, 70, 95, 80, 65, 358), -- Chimecho
(65, 130, 60, 75, 60, 75, 359), -- Absol
(95, 23, 48, 23, 48, 23, 360), -- Wynaut
(50, 50, 50, 50, 50, 50, 361), -- Snorunt
(80, 80, 80, 80, 80, 80, 362), -- Glalie
(70, 40, 50, 55, 50, 25, 363), -- Spheal
(90, 60, 70, 75, 70, 45, 364), -- Sealeo
(110, 80, 90, 95, 90, 65, 365), -- Walrein
(35, 64, 85, 74, 55, 32, 366), -- Clamperl
(55, 104, 105, 94, 75, 52, 367), -- Huntail
(55, 84, 105, 114, 75, 52, 368), -- Gorebyss
(100, 90, 130, 45, 65, 55, 369), -- Relicanth
(43, 30, 55, 40, 65, 97, 370), -- Luvdisc
(45, 75, 60, 40, 30, 50, 371), -- Bagon
(65, 95, 100, 60, 50, 50, 372), -- Shelgon
(95, 135, 80, 110, 80, 100, 373), -- Salamence
(80, 100, 100, 45, 45, 10, 374), -- Beldum
(60, 90, 90, 140, 90, 60, 375), -- Metang
(80, 135, 130, 95, 90, 70, 376), -- Metagross
(80, 100, 200, 50, 100, 50, 377), -- Regirock
(80, 50, 100, 100, 200, 50, 378), -- Regice
(80, 75, 150, 75, 150, 50, 379), -- Registeel
(80, 90, 130, 110, 130, 110, 380), -- Latias
(80, 130, 100, 160, 120, 110, 381), -- Latios
(100, 100, 90, 150, 140, 90, 382), -- Kyogre
(100, 150, 140, 100, 90, 90, 383), -- Groudon
(105, 150, 90, 150, 90, 95, 384), -- Rayquaza
(100, 100, 100, 100, 100, 100, 385), -- Jirachi
(50, 150, 50, 150, 50, 150, 386), -- Deoxys


-- insert Base Stat Pokemon di Sinnoh
(55, 68, 64, 45, 55, 31, 387), -- Turtwig
(75, 89, 85, 55, 65, 36, 388), -- Grotle
(95, 109, 105, 75, 85, 56, 389), -- Torterra
(44, 58, 44, 58, 44, 61, 390), -- Chimchar
(64, 78, 52, 78, 52, 81, 391), -- Monferno
(76, 104, 71, 104, 71, 108, 392), -- Infernape
(53, 51, 53, 61, 56, 40, 393), -- Piplup
(64, 66, 68, 81, 76, 50, 394), -- Prinplup
(84, 86, 88, 111, 101, 60, 395), -- Empoleon
(40, 55, 30, 30, 30, 60, 396), -- Starly
(55, 75, 50, 40, 40, 80, 397), -- Staravia
(85, 120, 70, 50, 60, 100, 398), -- Staraptor
(59, 45, 40, 35, 40, 31, 399), -- Bidoof
(79, 85, 60, 55, 60, 71, 400), -- Bibarel
(37, 25, 41, 25, 41, 25, 401), -- Kricketot
(77, 85, 51, 55, 51, 65, 402), -- Kricketune
(45, 65, 34, 40, 34, 45, 403), -- Shinx
(60, 85, 49, 60, 49, 60, 404), -- Luxio
(80, 120, 79, 95, 79, 70, 405), -- Luxray
(40, 30, 35, 50, 70, 55, 406), -- Budew
(60, 70, 65, 125, 105, 90, 407), -- Roserade
(67, 125, 40, 30, 30, 58, 408), -- Cranidos
(97, 165, 60, 65, 50, 58, 409), -- Rampardos
(30, 42, 118, 42, 88, 30, 410), -- Shieldon
(60, 52, 168, 47, 138, 30, 411), -- Bastiodon
(40, 29, 45, 29, 45, 36, 412), -- Burmy
(60, 59, 85, 79, 105, 36, 413), -- Wormadam
(70, 94, 50, 94, 50, 66, 414), -- Mothim
(30, 30, 42, 30, 42, 70, 415), -- Combee
(70, 80, 102, 80, 102, 40, 416), -- Vespiquen
(60, 45, 70, 45, 90, 95, 417), -- Pachirisu
(55, 65, 35, 60, 30, 85, 418), -- Buizel
(85, 105, 55, 85, 50, 115, 419), -- Floatzel
(45, 35, 45, 62, 53, 35, 420), -- Cherubi
(70, 60, 70, 87, 78, 85, 421), -- Cherrim
(76, 48, 48, 57, 62, 34, 422), -- Shellos
(111, 83, 68, 92, 82, 39, 423), -- Gastrodon
(75, 100, 66, 60, 66, 115, 424), -- Ambipom
(90, 50, 34, 60, 44, 70, 425), -- Drifloon
(150, 80, 44, 90, 54, 80, 426), -- Drifblim
(55, 66, 44, 44, 56, 85, 427), -- Buneary
(65, 76, 84, 54, 96, 105, 428), -- Lopunny
(60, 60, 60, 105, 105, 105, 429), -- Mismagius
(100, 125, 52, 105, 52, 71, 430), -- Honchkrow
(49, 55, 42, 42, 37, 85, 431), -- Glameow
(71, 82, 64, 64, 59, 112, 432), -- Purugly
(45, 30, 50, 65, 50, 45, 433), -- Chingling
(63, 63, 47, 41, 41, 74, 434), -- Stunky
(103, 93, 67, 71, 61, 84, 435), -- Skuntank
(57, 24, 86, 24, 86, 23, 436), -- Bronzor
(67, 89, 116, 79, 116, 33, 437), -- Bronzong
(50, 80, 95, 10, 45, 10, 438), -- Bonsly
(20, 25, 45, 70, 90, 60, 439), -- Mime Jr.
(100, 5, 5, 15, 65, 30, 440), -- Happiny
(76, 65, 45, 92, 42, 91, 441), -- Chatot
(50, 92, 108, 92, 108, 35, 442), -- Spiritomb
(68, 90, 65, 50, 55, 82, 443), -- Gible
(108, 130, 95, 80, 85, 102, 444), -- Gabite
(108, 170, 115, 120, 95, 92, 445), -- Garchomp
(135, 85, 40, 40, 85, 5, 446), -- Munchlax
(40, 70, 40, 35, 40, 60, 447), -- Riolu
(70, 110, 70, 115, 70, 90, 448), -- Lucario
(68, 72, 78, 38, 42, 32, 449), -- Hippopotas
(108, 112, 118, 68, 72, 47, 450), -- Hippowdon
(51, 82, 53, 62, 54, 71, 451), -- Skorupi
(91, 132, 95, 62, 105, 61, 452), -- Drapion
(48, 61, 40, 61, 40, 50, 453), -- Croagunk
(83, 106, 65, 86, 65, 85, 454), -- Toxicroak
(74, 100, 72, 90, 72, 46, 455), -- Carnivine
(49, 49, 56, 49, 61, 66, 456), -- Finneon
(69, 69, 76, 69, 86, 91, 457), -- Lumineon
(45, 20, 50, 60, 50, 50, 458), -- Mantyke
(60, 62, 50, 62, 60, 40, 459), -- Snover
(90, 92, 75, 92, 85, 60, 460), -- Abomasnow
(70, 120, 65, 45, 85, 125, 461), -- Weavile
(70, 70, 115, 130, 90, 60, 462), -- Magnezone
(110, 85, 95, 80, 95, 50, 463), -- Lickilicky
(115, 140, 130, 55, 55, 40, 464), -- Rhyperior
(100, 100, 125, 110, 50, 50, 465), -- Tangrowth
(75, 123, 67, 95, 85, 95, 466), -- Electivire
(75, 95, 67, 125, 95, 83, 467), -- Magmortar
(85, 50, 95, 120, 115, 80, 468), -- Togekiss
(86, 76, 86, 116, 56, 95, 469), -- Yanmega
(65, 110, 130, 60, 65, 95, 470), -- Leafeon
(65, 60, 110, 130, 95, 65, 471), -- Glaceon
(75, 95, 125, 45, 75, 95, 472), -- Gliscor
(110, 130, 80, 70, 60, 80, 473), -- Mamoswine
(85, 80, 70, 135, 75, 90, 474), -- Porygon-Z
(68, 125, 65, 65, 115, 80, 475), -- Gallade
(60, 55, 145, 75, 150, 40, 476), -- Probopass
(45, 100, 135, 65, 135, 45, 477), -- Dusknoir
(70, 80, 70, 80, 70, 110, 478), -- Froslass
(50, 50, 77, 95, 77, 91, 479), -- Rotom
(75, 75, 130, 75, 130, 95, 480), -- Uxie
(80, 105, 105, 105, 105, 80, 481), -- Mesprit
(75, 125, 70, 125, 70, 115, 482), -- Azelf
(100, 120, 120, 150, 100, 90, 483), -- Dialga
(90, 120, 100, 150, 120, 100, 484), -- Palkia
(91, 90, 106, 130, 106, 77, 485), -- Heatran
(110, 160, 110, 80, 110, 100, 486), -- Regigigas
(150, 100, 120, 100, 120, 90, 487), -- Giratina
(120, 70, 120, 75, 130, 85, 488), -- Cresselia
(80, 80, 80, 80, 80, 80, 489), -- Phione
(100, 100, 100, 100, 100, 100, 490), -- Manaphy
(70, 90, 90, 135, 90, 125, 491), -- Darkrai
(100, 100, 100, 100, 100, 100, 492), -- Shaymin
(120, 120, 120, 120, 120, 120, 493), -- Arceus


-- insert Base Stat Pokemon di Unima
(100, 100, 100, 100, 100, 100, 494), -- Victini
(45, 45, 55, 45, 55, 63, 495), -- Snivy
(60, 60, 75, 60, 75, 83, 496), -- Servine
(75, 75, 95, 75, 95, 113, 497), -- Serperior
(65, 63, 45, 45, 45, 45, 498), -- Tepig
(90, 93, 55, 70, 55, 55, 499), -- Pignite
(110, 123, 65, 100, 65, 65, 500), -- Emboar
(55, 56, 55, 39, 50, 64, 501), -- Oshawott
(75, 75, 60, 60, 60, 60, 502), -- Dewott
(95, 100, 85, 108, 70, 70, 503), -- Samurott
(45, 85, 50, 55, 50, 65, 504), -- Patrat
(60, 110, 60, 60, 60, 88, 505), -- Watchog
(45, 60, 45, 25, 45, 55, 506), -- Lillipup
(65, 80, 65, 35, 65, 60, 507), -- Herdier
(85, 110, 90, 45, 90, 80, 508), -- Stoutland
(55, 70, 40, 60, 40, 69, 509), -- Purrloin
(64, 88, 50, 88, 50, 106, 510), -- Liepard
(50, 75, 45, 40, 45, 60, 511), -- Pansage
(75, 98, 63, 98, 63, 101, 512), -- Simisage
(50, 53, 48, 53, 48, 64, 513), -- Pansear
(75, 98, 63, 98, 63, 101, 514), -- Simisear
(50, 53, 48, 53, 48, 64, 515), -- Panpour
(75, 98, 63, 98, 63, 101, 516), -- Simipour
(75, 80, 55, 25, 35, 35, 517), -- Munna
(116, 55, 85, 107, 95, 29, 518), -- Musharna
(45, 85, 70, 40, 40, 60, 519), -- Pidove
(62, 77, 62, 50, 42, 65, 520), -- Tranquill
(80, 115, 80, 65, 55, 93, 521), -- Unfezant
(50, 50, 40, 30, 30, 60, 522), -- Blitzle
(75, 100, 63, 80, 63, 116, 523), -- Zebstrika
(60, 85, 40, 30, 45, 68, 524), -- Roggenrola
(70, 105, 105, 50, 40, 20, 525), -- Boldore
(85, 135, 130, 60, 80, 25, 526), -- Gigalith
(55, 85, 55, 50, 55, 60, 527), -- Woobat
(67, 57, 55, 77, 55, 114, 528), -- Swoobat
(60, 60, 40, 65, 45, 35, 529), -- Drilbur
(110, 135, 60, 50, 65, 88, 530), -- Excadrill
(60, 85, 40, 30, 45, 68, 531), -- Audino
(103, 60, 86, 60, 86, 50, 532), -- Timburr
(85, 105, 85, 40, 50, 40, 533), -- Gurdurr
(105, 140, 95, 55, 65, 45, 534), -- Conkeldurr
(75, 80, 55, 25, 35, 35, 535), -- Tympole
(65, 95, 65, 50, 55, 70, 536), -- Palpitoad
(105, 85, 75, 70, 75, 74, 537), -- Seismitoad
(50, 60, 45, 100, 80, 65, 538), -- Throh
(60, 100, 85, 30, 85, 50, 539), -- Sawk
(45, 85, 55, 65, 55, 65, 540), -- Sewaddle
(55, 63, 90, 50, 80, 42, 541), -- Swadloon
(75, 103, 80, 70, 80, 92, 542), -- Leavanny
(30, 45, 59, 30, 39, 57, 543), -- Venipede
(40, 55, 99, 40, 79, 47, 544), -- Whirlipede
(60, 100, 89, 55, 69, 112, 545), -- Scolipede
(45, 30, 50, 65, 50, 45, 546), -- Cottonee
(60, 67, 85, 77, 75, 116, 547), -- Whimsicott
(55, 50, 40, 40, 40, 75, 548), -- Petilil
(70, 60, 75, 110, 75, 90, 549), -- Lilligant
(60, 60, 60, 60, 60, 60, 550), -- Basculin
(50, 65, 85, 35, 35, 55, 551), -- Sandile
(60, 82, 45, 45, 45, 74, 552), -- Krokorok
(95, 117, 80, 65, 70, 92, 553), -- Krookodile
(70, 83, 50, 37, 50, 60, 554), -- Darumaka
(105, 140, 55, 30, 55, 95, 555), -- Darmanitan
(50, 50, 62, 40, 62, 65, 556), -- Maractus
(85, 97, 66, 105, 66, 65, 557), -- Dwebble
(70, 105, 125, 65, 75, 45, 558), -- Crustle
(50, 65, 85, 35, 35, 55, 559), -- Scraggy
(65, 90, 115, 45, 115, 58, 560), -- Scrafty
(60, 85, 40, 30, 45, 68, 561), -- Sigilyph
(80, 105, 65, 60, 75, 130, 562), -- Yamask
(38, 30, 85, 55, 65, 30, 563), -- Cofagrigus
(40, 55, 70, 45, 60, 45, 564), -- Tirtouga
(74, 108, 133, 83, 65, 32, 565), -- Carracosta
(54, 78, 103, 53, 45, 22, 566), -- Archen
(75, 140, 65, 112, 65, 110, 567), -- Archeops
(45, 85, 50, 55, 50, 65, 568), -- Trubbish
(80, 95, 82, 60, 82, 75, 569), -- Garbodor
(60, 80, 40, 60, 40, 60, 570), -- Zorua
(60, 105, 60, 120, 60, 105, 571), -- Zoroark
(45, 85, 70, 40, 40, 60, 572), -- Minccino
(75, 95, 60, 65, 60, 115, 573), -- Cinccino
(55, 50, 45, 40, 45, 60, 574), -- Gothita
(70, 65, 55, 125, 85, 95, 575), -- Gothorita
(95, 55, 95, 95, 110, 65, 576), -- Gothitelle
(45, 30, 50, 55, 65, 45, 577), -- Solosis
(65, 40, 50, 125, 60, 30, 578), -- Duosion
(110, 65, 75, 125, 85, 30, 579), -- Reuniclus
(55, 55, 45, 85, 45, 75, 580), -- Ducklett
(75, 87, 63, 87, 63, 98, 581), -- Swanna
(70, 100, 70, 105, 75, 40, 582), -- Vanillite
(80, 110, 80, 135, 95, 50, 583), -- Vanillish
(110, 135, 85, 110, 95, 79, 584), -- Vanilluxe
(55, 40, 50, 65, 85, 40, 585), -- Deerling
(70, 60, 75, 60, 75, 95, 586), -- Sawsbuck
(40, 55, 99, 40, 79, 47, 587), -- Emolga
(50, 75, 85, 20, 30, 40, 588), -- Karrablast
(75, 95, 125, 65, 75, 85, 589), -- Escavalier
(50, 75, 45, 40, 45, 60, 590), -- Foongus
(114, 85, 70, 85, 80, 30, 591), -- Amoonguss
(50, 47, 50, 57, 50, 65, 592), -- Frillish
(100, 60, 70, 85, 105, 60, 593), -- Jellicent
(75, 80, 55, 25, 35, 35, 594), -- Alomomola
(45, 45, 55, 45, 55, 63, 595), -- Joltik
(70, 77, 60, 97, 60, 108, 596), -- Galvantula
(50, 40, 85, 40, 65, 25, 597), -- Ferroseed
(74, 94, 131, 54, 116, 20, 598), -- Ferrothorn
(50, 65, 85, 35, 35, 55, 599), -- Klink
(60, 80, 95, 70, 85, 50, 600), -- Klang
(60, 100, 115, 70, 85, 90, 601), -- Klinklang
(60, 85, 40, 30, 45, 68, 602), -- Tynamo
(65, 85, 70, 75, 70, 40, 603), -- Eelektrik
(85, 115, 80, 105, 80, 50, 604), -- Eelektross
(55, 75, 85, 25, 25, 15, 605), -- Elgyem
(75, 75, 95, 125, 95, 40, 606), -- Beheeyem
(109, 66, 84, 81, 99, 32, 607), -- Litwick
(60, 40, 60, 40, 60, 35, 608), -- Lampent
(60, 55, 145, 70, 150, 70, 609), -- Chandelure
(40, 65, 40, 40, 40, 69, 610), -- Axew
(66, 117, 70, 40, 50, 67, 611), -- Fraxure
(76, 147, 90, 60, 70, 97, 612), -- Haxorus
(70, 55, 55, 80, 55, 60, 613), -- Cubchoo
(95, 130, 80, 70, 80, 50, 614), -- Beartic
(55, 50, 40, 40, 40, 75, 615), -- Cryogonal
(80, 95, 85, 110, 95, 79, 616), -- Shelmet
(80, 95, 100, 65, 60, 45, 617), -- Accelgor
(69, 55, 145, 60, 55, 55, 618), -- Stunfisk
(105, 95, 75, 85, 75, 74, 619), -- Mienfoo
(65, 65, 65, 95, 65, 65, 620), -- Mienshao
(60, 85, 40, 30, 45, 68, 621), -- Druddigon
(77, 120, 90, 60, 90, 48, 622), -- Golett
(89, 124, 80, 55, 80, 55, 623), -- Golurk
(59, 74, 50, 35, 50, 35, 624), -- Pawniard
(65, 125, 100, 60, 70, 70, 625), -- Bisharp
(90, 85, 75, 115, 75, 55, 626), -- Bouffalant
(85, 97, 66, 105, 66, 65, 627), -- Rufflet
(70, 83, 50, 37, 50, 60, 628), -- Braviary
(110, 123, 75, 57, 75, 80, 629), -- Vullaby
(80, 105, 65, 60, 75, 130, 630), -- Mandibuzz
(85, 65, 85, 35, 65, 35, 631), -- Heatmor
(100, 60, 70, 85, 105, 60, 632), -- Durant
(70, 105, 90, 80, 90, 105, 633), -- Deino
(80, 115, 70, 125, 80, 98, 634), -- Zweilous
(92, 105, 90, 125, 90, 98, 635), -- Hydreigon
(85, 75, 110, 100, 105, 65, 636), -- Larvesta
(55, 55, 85, 50, 55, 30, 637), -- Volcarona
(75, 85, 100, 65, 90, 100, 638), -- Cobalion
(115, 129, 90, 72, 90, 108, 639), -- Terrakion
(60, 72, 60, 72, 60, 72, 640), -- Virizion
(75, 125, 100, 55, 75, 85, 641), -- Tornadus
(80, 100, 123, 80, 100, 123, 642), -- Thundurus
(79, 115, 70, 125, 80, 111, 643), -- Reshiram
(91, 90, 106, 130, 106, 77, 644), -- Zekrom
(108, 60, 70, 105, 70, 80, 645), -- Landorus
(108, 130, 95, 80, 85, 102, 646), -- Kyurem
(110, 160, 110, 80, 110, 100, 647), -- Keldeo
(79, 105, 70, 145, 85, 130, 648), -- Meloetta
(91, 95, 75, 130, 75, 99, 649), -- Genesect
-- insert Base Stat Pokemon di Kalos
(56, 61, 65, 48, 45, 38, 650), -- Chespin
(61, 78, 95, 56, 58, 57, 651), -- Quilladin
(88, 107, 122, 74, 75, 64, 652), -- Chesnaught
(40, 45, 40, 62, 60, 60, 653), -- Fennekin
(59, 59, 58, 90, 70, 73, 654), -- Braixen
(75, 69, 72, 114, 100, 104, 655), -- Delphox
(41, 56, 40, 62, 44, 71, 656), -- Froakie
(54, 63, 52, 83, 56, 97, 657), -- Frogadier
(72, 95, 67, 103, 71, 122, 658), -- Greninja
(38, 36, 38, 32, 36, 57, 659), -- Bunnelby
(85, 56, 77, 50, 77, 78, 660), -- Diggersby
(45, 50, 43, 40, 38, 62, 661), -- Fletchling
(62, 73, 55, 56, 52, 84, 662), -- Fletchinder
(78, 81, 71, 74, 69, 126, 663), -- Talonflame
(38, 35, 40, 27, 25, 35, 664), -- Scatterbug
(45, 22, 60, 27, 30, 29, 665), -- Spewpa
(80, 52, 50, 90, 50, 89, 666), -- Vivillon
(62, 50, 58, 73, 54, 72, 667), -- Litleo
(86, 68, 72, 109, 66, 106, 668), -- Pyroar
(44, 38, 39, 61, 79, 42, 669), -- Flabébé
(54, 45, 47, 75, 98, 52, 670), -- Floette
(78, 65, 68, 112, 154, 75, 671), -- Florges
(66, 65, 48, 62, 57, 52, 672), -- Skiddo
(123, 100, 62, 97, 81, 68, 673), -- Gogoat
(67, 82, 62, 46, 48, 43, 674), -- Pancham
(95, 124, 78, 69, 71, 58, 675), -- Pangoro
(75, 80, 60, 65, 90, 102, 676), -- Furfrou
(62, 48, 54, 63, 60, 68, 677), -- Espurr
(74, 48, 76, 83, 81, 104, 678), -- Meowstic
(45, 80, 100, 35, 37, 28, 679), -- Honedge
(59, 110, 150, 45, 49, 35, 680), -- Doublade
(60, 50, 140, 50, 140, 60, 681), -- Aegislash (Scudo)
-- (60, 140, 50, 140, 50, 60, 681), -- Aegislash (Spada)
(78, 52, 60, 63, 65, 23, 682), -- Spritzee
(101, 72, 72, 99, 89, 29, 683), -- Aromatisse
(62, 48, 66, 59, 57, 49, 684), -- Swirlix
(82, 80, 86, 85, 75, 72, 685), -- Slurpuff
(53, 54, 53, 37, 46, 45, 686), -- Inkay
(86, 92, 88, 68, 75, 73, 687), -- Malamar
(42, 52, 67, 39, 56, 50, 688), -- Binacle
(72, 105, 115, 54, 86, 68, 689), -- Barbaracle
(50, 60, 60, 60, 60, 30, 690), -- Skrelp
(65, 75, 90, 97, 123, 44, 691), -- Dragalge
(50, 53, 62, 58, 63, 44, 692), -- Clauncher
(71, 73, 88, 120, 89, 59, 693), -- Clawitzer
(44, 38, 33, 61, 43, 70, 694), -- Helioptile
(62, 55, 52, 109, 94, 109, 695), -- Heliolisk
(58, 89, 77, 45, 45, 48, 696), -- Tyrunt
(82, 121, 119, 69, 59, 71, 697), -- Tyrantrum
(77, 59, 50, 67, 63, 46, 698), -- Amaura
(123, 77, 72, 99, 92, 58, 699), -- Aurorus
(95, 65, 65, 110, 130, 60, 700), -- Sylveon
(78, 92, 75, 74, 63, 118, 701), -- Hawlucha
(67, 58, 57, 81, 67, 101, 702), -- Dedenne
(50, 50, 150, 50, 150, 50, 703), -- Carbink
(45, 50, 35, 55, 75, 55, 704), -- Goomy
(68, 75, 53, 83, 113, 60, 705), -- Sliggoo
(90, 100, 70, 110, 150, 80, 706), -- Goodra
(57, 80, 91, 80, 87, 75, 707), -- Klefki
(43, 70, 48, 50, 60, 38, 708), -- Phantump
(85, 110, 76, 65, 82, 56, 709), -- Trevenant
(49, 66, 70, 44, 55, 51, 710), -- Pumpkaboo
(65, 90, 122, 58, 75, 54, 711), -- Gourgeist
(55, 69, 85, 32, 35, 28, 712), -- Bergmite
(95, 117, 184, 44, 46, 28, 713), -- Avalugg
(40, 30, 35, 45, 40, 55, 714), -- Noibat
(85, 70, 80, 97, 80, 123, 715), -- Noivern
(126, 131, 95, 131, 98, 99, 716), -- Xerneas
(126, 131, 95, 131, 98, 99, 717), -- Yveltal
(108, 100, 121, 81, 95, 95, 718), -- Zygarde
(50, 100, 150, 100, 150, 50, 719), -- Diancie
(80, 110, 60, 150, 130, 70, 720), -- Hoopa (Vincolato)
-- (80, 160, 60, 170, 130, 80, 720), -- Hoopa (Libero)
(80, 110, 120, 130, 90, 70, 721), -- Volcanion


-- insert Base Stat Pokemon di Alola
(68, 55, 55, 50, 50, 42, 722), -- Rowlet
(78, 75, 75, 70, 70, 52, 723), -- Dartrix
(78, 107, 75, 100, 100, 70, 724), -- Decidueye
(45, 65, 40, 60, 40, 70, 725), -- Litten
(65, 85, 50, 80, 50, 90, 726), -- Torracat
(95, 115, 90, 80, 90, 60, 727), -- Incineroar
(50, 54, 54, 66, 56, 40, 728), -- Popplio
(60, 69, 69, 91, 81, 50, 729), -- Brionne
(80, 74, 74, 126, 116, 60, 730), -- Primarina
(35, 75, 30, 30, 30, 65, 731), -- Pikipek
(55, 85, 50, 40, 50, 75, 732), -- Trumbeak
(80, 120, 75, 75, 75, 60, 733), -- Toucannon
(48, 70, 30, 30, 30, 45, 734), -- Yungoos
(88, 110, 60, 55, 60, 45, 735), -- Gumshoos
(47, 62, 45, 55, 45, 46, 736), -- Grubbin
(57, 82, 95, 55, 75, 36, 737), -- Charjabug
(77, 70, 90, 145, 75, 43, 738), -- Vikavolt
(47, 82, 57, 42, 47, 63, 739), -- Crabrawler
(97, 132, 77, 62, 67, 43, 740), -- Crabominable
(75, 70, 70, 98, 70, 93, 741), -- Oricorio (Baile Style)
(40, 45, 40, 55, 40, 84, 742), -- Cutiefly
(60, 55, 60, 95, 70, 124, 743), -- Ribombee
(45, 65, 40, 30, 40, 60, 744), -- Rockruff
(75, 115, 65, 55, 65, 112, 745), -- Lycanroc (Midday Form)
--(85, 115, 75, 55, 75, 82, 745), -- Lycanroc (Midnight Form)
--(75, 117, 65, 55, 65, 110, 745), -- Lycanroc (Dusk Form)
(45, 20, 20, 25, 25, 40, 746), -- Wishiwashi (Solo Form)
--(45, 140, 130, 140, 135, 30, 746), -- Wishiwashi (School Form)
(50, 53, 62, 43, 52, 45, 747), -- Mareanie
(50, 63, 152, 53, 142, 35, 748), -- Toxapex
(70, 100, 70, 100, 70, 92, 749), -- Mudbray
(100, 125, 100, 55, 85, 35, 750), -- Mudsdale
(38, 40, 52, 40, 72, 27, 751), -- Dewpider
(68, 70, 92, 50, 132, 42, 752), -- Araquanid
(40, 55, 35, 50, 35, 35, 753), -- Fomantis
(70, 105, 90, 80, 90, 45, 754), -- Lurantis
(40, 35, 55, 65, 75, 15, 755), -- Morelull
(60, 45, 80, 90, 100, 30, 756), -- Shiinotic
(48, 44, 40, 71, 40, 77, 757), -- Salandit
(68, 64, 60, 111, 60, 117, 758), -- Salazzle
(70, 75, 50, 45, 50, 50, 759), -- Stufful
(120, 125, 80, 55, 60, 60, 760), -- Bewear
(42, 30, 38, 30, 38, 32, 761), -- Bounsweet
(52, 40, 48, 40, 48, 62, 762), -- Steenee
(72, 120, 98, 50, 98, 72, 763), -- Tsareena
(51, 52, 90, 82, 110, 100, 764), -- Comfey
(90, 60, 80, 90, 110, 60, 765), -- Oranguru
(100, 120, 90, 40, 60, 80, 766), -- Passimian
(25, 35, 40, 20, 30, 80, 767), -- Wimpod
(75, 125, 140, 60, 90, 40, 768), -- Golisopod
(55, 55, 80, 70, 45, 15, 769), -- Sandygast
(85, 75, 110, 100, 75, 35, 770), -- Palossand
(55, 60, 130, 30, 130, 5, 771), -- Pyukumuku
(95, 95, 95, 95, 95, 59, 772), -- Type: Null
(95, 95, 95, 95, 95, 95, 773), -- Silvally
(60, 60, 100, 60, 100, 60, 774), -- Minior
(65, 115, 65, 75, 95, 65, 775), -- Komala
(60, 78, 135, 91, 85, 36, 776), -- Turtonator
(65, 98, 63, 40, 73, 96, 777), -- Togedemaru
(55, 90, 80, 50, 105, 96, 778), -- Mimikyu
(68, 105, 70, 70, 70, 92, 779), -- Bruxish
(78, 60, 85, 135, 91, 36, 780), -- Drampa
(70, 131, 100, 86, 90, 40, 781), -- Dhelmise
(45, 55, 65, 45, 45, 45, 782), -- Jangmo-o
(55, 75, 90, 65, 70, 65, 783), -- Hakamo-o
(75, 110, 125, 100, 105, 85, 784), -- Kommo-o
(70, 115, 85, 95, 75, 130, 785), -- Tapu Koko
(70, 85, 75, 130, 115, 95, 786), -- Tapu Lele
(70, 130, 115, 85, 95, 75, 787), -- Tapu Bulu
(70, 75, 115, 95, 130, 85, 788), -- Tapu Fini
(43, 29, 31, 29, 31, 37, 789), -- Cosmog
(43, 29, 131, 29, 131, 37, 790), -- Cosmoem
(137, 137, 107, 113, 89, 97, 791), -- Solgaleo
(137, 113, 89, 137, 107, 97, 792), -- Lunala
(109, 53, 47, 127, 131, 103, 793), -- Nihilego
(107, 139, 139, 53, 53, 79, 794), -- Buzzwole
(71, 137, 37, 137, 37, 151, 795), -- Pheromosa
(83, 89, 71, 173, 71, 83, 796), -- Xurkitree
(97, 101, 103, 107, 101, 61, 797), -- Celesteela
(59, 181, 131, 59, 31, 109, 798), -- Kartana
(223, 101, 53, 97, 53, 43, 799), -- Guzzlord
(97, 107, 101, 127, 89, 79, 800), -- Necrozma
(80, 95, 115, 130, 115, 65, 801), -- Magearna
(90, 125, 80, 90, 90, 125, 802), -- Marshadow
(67, 73, 67, 73, 67, 73, 803), -- Poipole
(73, 73, 73, 127, 73, 121, 804), -- Naganadel
(61, 131, 211, 53, 101, 13, 805), -- Stakataka
(53, 127, 53, 151, 79, 107, 806), -- Blacephalon
(88, 112, 75, 102, 80, 143, 807), -- Zeraora
(46, 65, 65, 55, 35, 34, 808), -- Meltan
(135, 143, 143, 80, 65, 34, 809), -- Melmetal

-- insert Base Stat Pokemon di Galar
(50, 65, 50, 40, 40, 65, 810), -- Grookey
(70, 85, 70, 55, 60, 80, 811), -- Thwackey
(100, 125, 90, 60, 70, 85, 812), -- Rillaboom
(50, 71, 40, 40, 40, 69, 813), -- Scorbunny
(65, 86, 60, 55, 60, 94, 814), -- Raboot
(80, 116, 75, 65, 75, 119, 815), -- Cinderace
(50, 40, 40, 70, 40, 70, 816), -- Sobble
(65, 60, 55, 95, 55, 90, 817), -- Drizzile
(70, 85, 65, 125, 65, 120, 818), -- Inteleon
(70, 55, 55, 35, 35, 25, 819), -- Skwovet
(120, 95, 95, 55, 75, 20, 820), -- Greedent
(38, 47, 35, 33, 35, 57, 821), -- Rookidee
(68, 67, 55, 43, 55, 77, 822), -- Corvisquire
(98, 87, 105, 53, 85, 67, 823), -- Corviknight
(25, 20, 20, 25, 45, 45, 824), -- Blipbug
(50, 35, 80, 50, 90, 30, 825), -- Dottler
(60, 45, 110, 80, 120, 90, 826), -- Orbeetle
(40, 28, 28, 47, 52, 50, 827), -- Nickit
(70, 58, 58, 87, 92, 90, 828), -- Thievul
(40, 40, 60, 40, 60, 10, 829), -- Gossifleur
(60, 50, 90, 80, 120, 60, 830), -- Eldegoss
(42, 40, 55, 40, 45, 48, 831), -- Wooloo
(72, 80, 100, 60, 90, 88, 832), -- Dubwool
(50, 64, 50, 38, 38, 44, 833), -- Chewtle
(90, 115, 90, 48, 68, 74, 834), -- Drednaw
(59, 45, 50, 40, 50, 26, 835), -- Yamper
(69, 90, 60, 90, 60, 121, 836), -- Boltund
(30, 40, 50, 40, 50, 30, 837), -- Rolycoly
(80, 60, 90, 60, 70, 50, 838), -- Carkol
(110, 80, 120, 80, 90, 30, 839), -- Coalossal
(40, 40, 80, 40, 40, 20, 840), -- Applin
(70, 110, 80, 95, 60, 70, 841), -- Flapple
(110, 85, 80, 100, 80, 30, 842), -- Appletun
(52, 57, 75, 35, 50, 46, 843), -- Silicobra
(72, 107, 125, 65, 70, 71, 844), -- Sandaconda
(70, 85, 55, 85, 95, 85, 845), -- Cramorant
(41, 63, 40, 40, 30, 66, 846), -- Arrokuda
(61, 123, 60, 60, 50, 136, 847), -- Barraskewda
(40, 38, 35, 54, 35, 40, 848), -- Toxel
(75, 98, 70, 114, 70, 75, 849), -- Toxtricity
(50, 65, 45, 50, 50, 45, 850), -- Sizzlipede
(100, 115, 65, 90, 90, 65, 851), -- Centiskorch
(50, 68, 60, 50, 50, 32, 852), -- Clobbopus
(80, 118, 90, 70, 80, 42, 853), -- Grapploct
(40, 45, 45, 74, 54, 50, 854), -- Sinistea
(60, 65, 65, 134, 114, 70, 855), -- Polteageist
(42, 30, 45, 56, 53, 39, 856), -- Hatenna
(57, 40, 65, 86, 73, 49, 857), -- Hattrem
(57, 90, 95, 136, 103, 29, 858), -- Hatterene
(45, 45, 30, 55, 40, 50, 859), -- Impidimp
(65, 60, 45, 75, 55, 70, 860), -- Morgrem
(95, 120, 65, 95, 75, 60, 861), -- Grimmsnarl
(93, 90, 101, 60, 81, 95, 862), -- Obstagoon
(70, 110, 100, 50, 60, 50, 863), -- Perrserker
(60, 95, 50, 145, 130, 30, 864), -- Cursola
(62, 135, 95, 68, 82, 65, 865), -- Sirfetch'd
(80, 85, 75, 110, 100, 70, 866), -- Mr. Rime
(58, 95, 145, 50, 105, 30, 867), -- Runerigus
(45, 40, 40, 50, 61, 34, 868), -- Milcery
(65, 60, 75, 110, 121, 64, 869), -- Alcremie
(65, 100, 100, 70, 60, 75, 870), -- Falinks
(48, 101, 95, 91, 85, 15, 871), -- Pincurchin
(30, 25, 35, 45, 30, 20, 872), -- Snom
(70, 65, 60, 125, 90, 65, 873), -- Frosmoth
(100, 125, 135, 20, 20, 70, 874), -- Stonjourner
(75, 80, 110, 65, 90, 50, 875), -- Eiscue
(60, 65, 55, 105, 95, 95, 876), -- Indeedee (Male)
(58, 95, 58, 70, 58, 97, 877), -- Morpeko
(72, 80, 49, 40, 49, 40, 878), -- Cufant
(122, 130, 69, 80, 69, 30, 879), -- Copperajah
(90, 100, 90, 80, 70, 75, 880), -- Dracozolt
(90, 100, 90, 90, 80, 55, 881), -- Arctozolt
(90, 90, 100, 70, 80, 75, 882), -- Dracovish
(90, 90, 100, 80, 90, 55, 883), -- Arctovish
(70, 95, 115, 120, 50, 85, 884), -- Duraludon
(28, 60, 30, 40, 30, 82, 885), -- Dreepy
(68, 80, 50, 60, 50, 102, 886), -- Drakloak
(88, 120, 75, 100, 75, 142, 887), -- Dragapult
(92, 130, 115, 80, 115, 138, 888), -- Zacian
(92, 130, 115, 80, 115, 138, 889), -- Zamazenta
(140, 85, 95, 145, 95, 130, 890), -- Eternatus
(60, 90, 60, 53, 50, 72, 891), -- Kubfu
(100, 130, 100, 63, 60, 97, 892), -- Urshifu (Single Strike Style)
(105, 120, 105, 70, 95, 105, 893), -- Zarude
(80, 100, 50, 100, 50, 200, 894), -- Regieleki
(200, 100, 50, 100, 50, 80, 895), -- Regidrago
(100, 145, 130, 65, 110, 30, 896), -- Glastrier
(100, 65, 60, 145, 80, 130, 897), -- Spectrier
(100, 80, 80, 80, 80, 80, 898), -- Calyrex

-- INSERT BASE STATS FOR HISUI REGION POKEMON 
(103, 105, 72, 105, 75, 65, 899), -- Wyrdeer
(70, 135, 95, 45, 70, 85, 900), -- Kleavor
(130, 140, 105, 45, 80, 50, 901), -- Ursaluna
(120, 112, 65, 80, 75, 78, 902), -- Basculegion (Male)
(120, 92, 65, 100, 75, 78, 902), -- Basculegion (Female)
(80, 130, 60, 40, 80, 120, 903), -- Sneasler
(85, 115, 95, 65, 65, 85, 904), -- Overqwil
(74, 115, 70, 135, 80, 106, 905), -- Enamorus

-- INSERT BASE STATS FOR PALDEA REGION POKEMON 
(40, 61, 54, 45, 45, 65, 906), -- Sprigatito 
(61, 80, 63, 60, 63, 83, 907), -- Floragato
(76, 110, 70, 81, 70, 123, 908), -- Meowscarada
(67, 45, 59, 63, 40, 36, 909), -- Fuecoco
(81, 55, 78, 90, 58, 49, 910), -- Crocalor
(104, 75, 100, 110, 75, 75, 911), -- Skeledirge
(55, 65, 45, 50, 45, 50, 912), -- Quaxly
(70, 85, 65, 65, 60, 65, 913), -- Quaxwell
(85, 120, 80, 85, 75, 85, 914),-- Quaquaval
(54, 45, 40, 35, 45, 35, 915), -- Lechonk
(110, 100, 75, 59, 80, 65, 916), -- Oinkologne
(35, 41, 45, 29, 40, 20, 917), -- Tarountula
(60, 79, 92, 52, 86, 35, 918), -- Spidops
(33, 46, 40, 21, 25, 45, 919), -- Nymble
(71, 102, 78, 52, 55, 92, 920), -- Lokix
(45, 50, 20, 40, 25, 60, 921), -- Pawmi 
(60, 75, 40, 50, 40, 85, 922), --Pawmo
(70, 115, 70, 70, 60, 105, 923), -- Pawmot
(50, 50, 45, 40, 45, 75, 924), -- Tandemaus
(74, 75, 70, 65, 75, 111, 925), -- Maushold 
(37, 55, 70, 30, 55, 65, 926), -- Fidough
(57, 80, 115, 50, 80, 95, 927), -- Dachsbun
(41, 35, 45, 58, 51, 30, 928), -- Smoliv
(52, 53, 60, 78, 78, 33, 929), -- Doliv 
(78, 69, 90, 125, 109, 39, 930), --Arboliva
(82, 96, 51, 45, 51, 92, 931), -- Squawkabilly
(55, 55, 75, 35, 35, 25, 932), -- Nacli
(60, 60, 100, 35, 65, 35, 933), -- Naclstack 
(100, 100, 130, 45, 90, 35, 934), -- Garganacl 
(40, 50, 40, 50, 40, 35, 935), -- Charcadet
(85, 60, 100, 125, 80, 75, 936), -- Armarouge 
(75, 125, 80, 60, 100, 85, 937), --Ceruledge
(61, 31, 41, 59, 35, 45, 938), -- Tadbulb
(109, 64, 91, 103, 83, 45, 939), -- Bellibolt
(40, 40, 35, 55, 40, 70, 940), -- Wattrel 
(70, 70, 60, 105, 60, 125, 941), -- Kilowattrel 
(60, 78, 60, 40, 51, 51, 942), -- Maschiff
(80, 120, 90, 60, 109, 85, 943), --Mabosstiff
(40, 65, 35, 40, 51, 75, 944), -- Shroodle
(63, 95, 65, 80, 35, 110, 945), -- Grafaiai
(40, 65, 30, 45, 65, 60, 946), -- Bramblin 
(55, 115, 70, 80, 90, 90, 947), -- Brambleghast 
(40, 40, 35, 50, 40, 70, 948), -- Toedscool
(80, 70, 65, 80, 80, 100, 949), -- Toedscruel 
(70, 100, 115, 35, 100, 75, 950), -- Klawf
(50, 62, 40, 59, 62, 50, 951), -- Capsakid
(65, 108, 65, 103, 108, 75, 952), -- Scovillain
(41, 50, 60, 55, 31, 30, 953), -- Rellor
(75, 50, 85, 105, 115, 45, 954), -- Rabsca 
(30, 35, 30, 40, 55, 75, 955), -- Flittle
(95, 60, 60, 40, 101, 105, 956), -- Espathra
(50, 45, 45, 35, 64, 58, 957), -- Tinkatink
(65, 55, 55, 45, 82, 78, 958), -- Tinkatuff
(85, 75, 77, 70, 105, 94, 959), -- Tinkaton
(10, 55, 25, 35, 25, 95, 960), -- Wiglett
(35, 100, 50, 50, 70, 120, 961), -- Wugtrio 
(70, 103, 85, 60, 85, 82, 962), -- Bombirdier
(70, 45, 40, 45, 40, 75, 963), -- Finizen
(100, 70, 72, 53, 62, 100, 964), -- Palafin Forma Ingenua
--(100, 160, 97, 106, 87, 100, 964), Palafin Forma Possente
(45, 70, 63, 30, 45, 47, 965), -- Varoom
(80, 119, 90, 54, 67, 90, 966), -- Revavroom
(70, 95, 65, 85, 65, 121, 967), -- Cyyclizar
(70, 85, 145, 60, 55, 65, 968), -- Orthworm
(48, 35, 42, 105, 60, 60, 969), -- Glimmet
(83, 55, 90, 130, 81, 86, 970), -- Glimmora
(50, 61, 60, 30, 55, 34, 971), -- Greavard
(72, 101, 100, 50, 97, 68, 972), -- Houndstone
(82, 115, 74, 75, 64, 90, 973), -- Flamigo
(108, 68, 45, 30, 40, 43, 974), -- Cetoddle
(170, 113, 65, 45, 40, 73, 975), -- Cetitan
(90, 102, 73, 78, 55, 70, 976), -- Veluza
(150, 100, 115, 65, 65, 35, 977), -- Dondozo
(68, 50, 60, 120, 95, 82, 978), -- Tatsugiri
(110, 115, 80, 50, 90, 90, 979), -- Annihilape
(130, 75, 60, 45, 100, 20, 980), -- Clodsire
(120, 90, 70, 110, 70, 60, 981), -- Farigiraf
(125, 100, 80, 85, 75, 55, 982), -- Dudunsparce
(100, 135, 120, 60, 85, 50, 983), -- Kingambit
(115, 131, 131, 53, 53, 87, 984), -- Grandizanne
(115, 65, 99, 65, 115, 111, 985), -- Codaurlante
(111, 127, 99, 79, 99, 55, 986), -- Fungofurioso
(55, 55, 55, 135, 135, 135, 987), -- Crinealato
(85, 135, 79, 85, 105, 81, 988), -- Alirasenti
(85, 81, 97, 121, 85, 101, 989), -- Peldisabbia
(90, 112, 120, 72, 70, 106, 990), -- Solcoferreo
(56, 80, 114, 124, 60, 136, 991), -- Saccoferreo
(154, 140, 108, 45, 50, 73, 992), -- Manoferrea
(94, 80, 86, 122, 80, 108, 993), -- Colloferreo
(80, 70, 60, 140, 110, 110, 994), -- Falenaferrea
(100, 134, 110, 70, 84, 72, 995), -- Spineferree
(65, 75, 45, 35, 45, 55, 996), -- Frigibax
(90, 95, 66, 45, 65, 62, 997), -- Arctibax
(115, 145, 92, 75, 86, 87, 998), -- Baxcalibur
(45, 30, 70, 75, 70, 10, 999), -- Gimmighoul Forma Scrigno
-- (45, 30, 25, 75, 45, 80, 999), -- Gimmighoul Forma Ambulante
(87, 60, 95, 133, 91, 84, 1000), -- Gholdengo
(85, 85, 100, 95, 135, 70, 1001), -- Wo-Chien
(80, 120, 80, 90, 65, 135, 1002), -- Chien-Pao
(155, 110, 125, 55, 80, 45, 1003), -- Ting-Lu
(55, 80, 80, 135, 120, 100, 1004), -- Chi-Yu
(105, 139, 71, 55, 101, 119, 1005), -- Lunaruggente
(74, 139, 86, 71, 80, 108, 1006), -- Eroeferreo
(100, 130, 86, 90, 80, 108, 1007), -- Koraidon
(100, 85, 100, 135, 115, 135, 1008), -- Miraidon
(99, 83, 91, 125, 83, 109, 1009), -- Acquecrespe
(90, 130, 88, 70, 108, 104, 1010), -- Fogliaferrea fine img
(80, 80, 110, 95, 80, 40, 1011), -- Dipplin
(40, 45, 45, 74, 54, 50, 1012), -- Poltchageist
(71, 60, 106, 121, 80, 70, 1013), -- Sinistcha
(88, 128, 115, 58, 86, 80, 1014), -- Okidogi
(88, 75, 66, 130, 90, 106, 1015), -- Munkidori
(88, 91, 82, 70, 125, 99, 1016), -- Fezandipiti
(80, 120, 84, 60, 96, 110, 1017), -- Ogerpon
(90, 105, 130, 125, 65, 85, 1018), -- Archaludon
(106, 80, 110, 120, 80, 44, 1019), -- Hydrapple
(105, 115, 121, 65, 93, 91, 1020), -- Vampeaguzze
(125, 73, 91, 137, 89, 75, 1021), -- Furiatonante
(90, 120, 80, 68, 108, 124, 1022), -- Massoferreo
(90, 72, 100, 122, 108, 98, 1023), -- Capoferreo
(90, 65, 85, 65, 85, 60, 1024), -- terapagos Forma Normale
-- (95, 95, 110, 105, 110, 85, 1024), -- terapagos Forma teracristal
-- (160, 105, 110, 130, 110, 85, 1024), -- terapagos Forma astrale
(88, 88, 160, 88, 88, 88, 1025); -- Pecharunt


-- Inserimento dei dati per la tabella tbNature
INSERT INTO tbNature (Nome, ModAtt, ModDef, ModAttS, ModDefS, ModSpd) VALUES
('Adamant', 1.1, 1.0, 0.9, 1.0, 1.0),
('Bashful', 1.0, 1.0, 1.0, 1.0, 1.0),
('Bold', 0.9, 1.1, 1.0, 1.0, 1.0),
('Brave', 1.1, 1.0, 1.0, 1.0, 0.9),
('Calm', 1.0, 0.9, 1.0, 1.1, 1.0),
('Careful', 1.0, 1.0, 0.9, 1.1, 1.0),
('Docile', 1.0, 1.0, 1.0, 1.0, 1.0),
('Gentle', 1.0, 0.9, 1.0, 1.1, 1.0),
('Hardy', 1.0, 1.0, 1.0, 1.0, 1.0),
('Hasty', 1.0, 0.9, 1.0, 1.0, 1.1),
('Impish', 1.0, 1.1, 0.9, 1.0, 1.0),
('Jolly', 1.0, 1.0, 0.9, 1.0, 1.1),
('Lax', 1.0, 1.1, 1.0, 0.9, 1.0),
('Lonely', 1.1, 0.9, 1.0, 1.0, 1.0),
('Mild', 1.0, 0.9, 1.1, 1.0, 1.0),
('Modest', 0.9, 1.0, 1.1, 1.0, 1.0),
('Naive', 1.0, 1.0, 1.0, 0.9, 1.1),
('Naughty', 1.1, 1.0, 1.0, 0.9, 1.0),
('Quiet', 1.0, 1.0, 1.1, 1.0, 0.9),
('Quirky', 1.0, 1.0, 1.0, 1.0, 1.0),
('Rash', 1.0, 1.0, 1.1, 0.9, 1.0),
('Relaxed', 1.0, 1.1, 1.0, 1.0, 0.9),
('Sassy', 1.0, 1.0, 1.0, 1.1, 0.9),
('Serious', 1.0, 1.0, 1.0, 1.0, 1.0),
('Timid', 0.9, 1.0, 1.0, 1.0, 1.1);

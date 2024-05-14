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
-- pokemon di Johto 100
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
('Deoxys', 'Psico', NULL);


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
(20, 40, 90, 30, 90, 40, 292), -- Shedinja
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
(50, 150, 50, 150, 50, 150, 386); -- Deoxys



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

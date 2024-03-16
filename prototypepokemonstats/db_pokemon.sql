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
('Mew', 'Psico', NULL);


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
(100, 100, 100, 100, 100, 100, 151); -- Mew


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

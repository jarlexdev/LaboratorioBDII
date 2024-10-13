-- DML DE BASE DE DATOS DE FARMACIA --

-- INSERCIONES

-- TABLAS DE DIRECCIÓN --
INSERT INTO departamentos VALUES
-- idDepartamento, departamento, pais 
	('AH', 'Ahuachapán', 'El Salvador'),    -- 1
	('CA', 'Cabañas', 'El Salvador'),		-- 2
	('CH', 'Chalatenango', 'El Salvador'),  -- 3
	('CU', 'Cuscatlán', 'El Salvador'),     -- 4
	('LL', 'La Libertad', 'El Salvador'),   -- 5
	('LP', 'La Paz', 'El Salvador'),        -- 6
	('LU', 'La Unión', 'El Salvador'),      -- 7
	('MO', 'Morazán', 'El Salvador'),       -- 8
	('SA', 'Santa Ana', 'El Salvador'),     -- 9
	('SM', 'San Miguel', 'El Salvador'),    -- 10
	('SS', 'San Salvador', 'El Salvador'),  -- 11
	('SV', 'San Vicente', 'El Salvador'),   -- 12
	('SO', 'Sonsonate', 'El Salvador'),     -- 13
	('US', 'Usulután', 'El Salvador');      -- 14

INSERT INTO municipios VALUES
-- idMunicipio, municipio, idDepartamento
	('AHN', 'Ahuachapán Norte', 'AH'),				-- 1
	('AHC', 'Ahuachapán Centro', 'AH'),				-- 2
	('AHS', 'Ahuachapán Sur', 'AH'),				-- 3
	('CAE', 'Cabañas Este', 'CA'),					-- 4
	('CAO', 'Cabañas Oeste', 'CA'),					-- 5
	('CHN', 'Chalatenango Norte', 'CH'),			-- 6
	('CHC', 'Chalatenango Centro', 'CH'), 			-- 7
	('CHS', 'Chalatenango Sur', 'CH'),				-- 8
	('CUN', 'Cuscatlán Norte', 'CU'),				-- 9
	('CUS', 'Cuscatlán Sur', 'CU'),					-- 10
	('LLN', 'La Libertad Norte', 'LL'),				-- 11
	('LLC', 'La Libertad Centro', 'LL'),			-- 12
	('LLO', 'La Libertad Oeste', 'LL'),				-- 13
	('LLE', 'La Libertad Este', 'LL'),				-- 14
	('LLS', 'La Libertad Sur', 'LL'),				-- 15
	('LLT', 'La Libertad Costa', 'LL'),				-- 16
	('LPO', 'La Paz Oeste', 'LP'),					-- 17
	('LPC', 'La Paz Centro', 'LP'),					-- 18
	('LPE', 'La Paz Este', 'LP'),					-- 19
	('LUN', 'La Unión Norte', 'LU'),				-- 20
	('LUS', 'La Unión Sur', 'LU'),					-- 21
	('MON', 'Morazán Norte', 'MO'),					-- 22
	('MOS', 'Morazán Sur', 'MO'),					-- 23
	('SAN', 'Santa Ana Norte', 'SA'),				-- 24
	('SAC', 'Santa Ana Centro', 'SA'),				-- 25
	('SAE', 'Santa Ana Este', 'SA'),				-- 26
	('SAO', 'Santa Ana Oeste', 'SA'),				-- 27
	('SMN', 'San Miguel Norte', 'SM'),				-- 28
	('SMC', 'San Miguel Centro', 'SM'),				-- 29
	('SMO', 'San Miguel Oeste', 'SM'),				-- 30
	('SSN', 'San Salvador Norte', 'SS'),			-- 31
	('SSO', 'San Salvador Oeste', 'SS'),			-- 32
	('SSE', 'San Salvador Este', 'SS'),				-- 33
	('SSC', 'San Salvador Centro', 'SS'),			-- 34
	('SSS', 'San Salvador Sur', 'SS'),				-- 35
	('SVN', 'San Vicente Norte', 'SV'),				-- 36
	('SVS', 'San Vicente Sur', 'SV'),				-- 37	
	('SON', 'Sonsonate Norte', 'SO'),				-- 38
	('SOC', 'Sonsonate Centro', 'SO'),				-- 39
	('SOE', 'Sonsonate Este', 'SO'),				-- 40
	('SOO', 'Sonsonate Oeste', 'SO'),				-- 41
	('USN', 'Usulután Norte', 'US'),				-- 42
	('USE', 'Usulután Este', 'US'),					-- 43
	('USO', 'Usulután Oeste', 'US');				-- 44

INSERT INTO distritos VALUES
-- idDistrito, distrito, idMunicipio
-- AHUACHAPAN
	('AHN01', 'Atiquizaya', 'AHN'),					-- 1
	('AHN02', 'El Refugio', 'AHN'),					-- 2
	('AHN03', 'San Lorenzo', 'AHN'),				-- 3
	('AHN04', 'Turín', 'AHN'),						-- 4
	('AHC01', 'Ahuachapán', 'AHC'),					-- 5
	('AHC02', 'Apaneca', 'AHC'),					-- 6
	('AHC03', 'Concepción de Ataco', 'AHC'),		-- 7
	('AHC04', 'Tacuba', 'AHC'),						-- 8
	('AHS01', 'Guaymango', 'AHS'),					-- 9
	('AHS02', 'Jujutla', 'AHS'),					-- 10
	('AHS03', 'San Francisco Menéndez', 'AHS'),		-- 11
	('AHS04', 'San Pedro Puxtla', 'AHS'),			-- 12
-- CABAÑAS
	('CAE01', 'Sensuntepeque', 'CAE'),				-- 13
	('CAE02', 'Victoria', 'CAE'),					-- 14 
	('CAE03', 'Dolores', 'CAE'),					-- 15
	('CAE04', 'Guacotecti', 'CAE'),      			-- 16
	('CAE05', 'San Isidro', 'CAE'),					-- 17
	('CAO01', 'Ilobasco', 'CAO'),					-- 18
	('CAO02', 'Tejutepeque', 'CAO'),				-- 19
	('CAO03', 'Jutiapa', 'CAO'),					-- 20
	('CAO04', 'Cinquera', 'CAO'),					-- 21
-- CHALATENANGO	
	('CHN01', 'La Palma', 'CHN'),					-- 22
	('CHN02', 'Citalá', 'CHN'),						-- 23
	('CHN03', 'San Ignacio', 'CHN'),				-- 24
	('CHC01', 'Nueva Concepción', 'CHC'),			-- 25
	('CHC02', 'Tejutla', 'CHC'),					-- 26
	('CHC03', 'La Reina', 'CHC'),					-- 27
	('CHC04', 'Agua Caliente', 'CHC'),				-- 28
	('CHC05', 'Dulce Nombre de María', 'CHC'),		-- 29
	('CHC06', 'El Paraíso', 'CHC'),					-- 30
	('CHC07', 'San Fernando', 'CHC'),				-- 31
	('CHC08', 'San Francisco Morazán', 'CHC'),		-- 32
	('CHC09', 'San Rafael', 'CHC'),					-- 33
	('CHC10', 'Santa Rita', 'CHC'),					-- 34
	('CHS01', 'Chalatenango', 'CHS'),				-- 35
	('CHS02', 'Arcatao', 'CHS'),					-- 36
	('CHS03', 'Azacualpa', 'CHS'),					-- 37
	('CHS04', 'Comalapa', 'CHS'),					-- 38
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),	-- 39
	('CHS06', 'El Carrizal', 'CHS'),				-- 40
	('CHS07', 'La Laguna', 'CHS'),					-- 41
	('CHS08', 'Las Vueltas', 'CHS'),				-- 42
	('CHS09', 'Nombre de Jesús', 'CHS'),			-- 43
	('CHS10', 'Nueva Trinidad', 'CHS'),				-- 44
	('CHS11', 'Ojos de Agua', 'CHS'),				-- 45
	('CHS12', 'Potonico', 'CHS'),					-- 46
	('CHS13', 'San Antonio de La Cruz', 'CHS'),		-- 47
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),	-- 48
	('CHS15', 'San Francisco Lempa', 'CHS'),		-- 49
	('CHS16', 'San Isidro Labrador', 'CHS'),		-- 50
	('CHS17', 'San José Cancasque', 'CHS'),			-- 51
	('CHS18', 'San Miguel de Mercedes', 'CHS'),		-- 52
	('CHS19', 'San José Las Flores', 'CHS'),		-- 53
	('CHS20', 'San Luis del Carmen', 'CHS'),		-- 54
-- CUSCATLÁN
	('CUN01', 'Suchitoto', 'CUN'),					-- 55
	('CUN02', 'San José Guayabal', 'CUN'),			-- 56
	('CUN03', 'Oratorio de Concepción', 'CUN'),		-- 57
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),	-- 58
	('CUN05', 'San Pedro Perulapán', 'CUN'),		-- 59
	('CUS01', 'Cojutepeque', 'CUS'),				-- 60
	('CUS02', 'San Rafael Cedros', 'CUS'),			-- 61
	('CUS03', 'Candelaria', 'CUS'),					-- 62
	('CUS04', 'Monte San Juan', 'CUS'),				-- 63
	('CUS05', 'El Carmen', 'CUS'),					-- 64
	('CUS06', 'San Cristobal', 'CUS'),				-- 65
	('CUS07', 'Santa Cruz Michapa', 'CUS'),			-- 66
	('CUS08', 'San Ramón', 'CUS'),					-- 67
	('CUS09', 'El Rosario', 'CUS'),					-- 68
	('CUS10', 'Santa Cruz Analquito', 'CUS'),		-- 69
	('CUS11', 'Tenancingo', 'CUS'),					-- 70
-- LA LIBERTAD			
	('LLN01', 'Quezaltepeque', 'LLN'),				-- 71
	('LLN02', 'San Matías', 'LLN'),					-- 72
	('LLN03', 'San Pablo Tacachico', 'LLN'),		-- 73
	('LLC01', 'San Juan Opico', 'LLC'),				-- 74
	('LLC02', 'Ciudad Arce', 'LLC'),				-- 75
	('LLO01', 'Colón', 'LLO'),						-- 76
	('LLO02', 'Jayaque', 'LLO'),					-- 77
	('LLO03', 'Sacacoyo', 'LLO'),					-- 78
	('LLO04', 'Tepecoyo', 'LLO'),					-- 79
	('LLO05', 'Talnique', 'LLO'),					-- 80
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),			-- 81
	('LLE02', 'Huizúcar', 'LLE'),					-- 82
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),			-- 83
	('LLE04', 'San José Villanueva', 'LLE'),		-- 84
	('LLE05', 'Zaragoza', 'LLE'),					-- 85
	('LLS01', 'Comasagua', 'LLS'),					-- 86
	('LLS02', 'Santa Tecla', 'LLS'),				-- 87
	('LLT01', 'Chiltiupán', 'LLT'),					-- 88
	('LLT02', 'Jicalapa', 'LLT'),					-- 89
	('LLT03', 'La Libertad', 'LLT'),				-- 90
	('LLT04', 'Tamanique', 'LLT'),					-- 91
	('LLT05', 'Teotepeque', 'LLT'),					-- 92
-- LA PAZ		
	('LPO01', 'Cuyultitan', 'LPO'),					-- 93
	('LPO02', 'Olocuilta', 'LPO'),					-- 94
	('LPO03', 'San Juan Talpa', 'LPO'),				-- 95
	('LPO04', 'San Luis Talpa', 'LPO'),				-- 96
	('LPO05', 'San Pedro Masahuat', 'LPO'),			-- 97
	('LPO06', 'Tapalhuaca', 'LPO'),					-- 98
	('LPO07', 'San Francisco Chinameca', 'LPO'),	-- 99
	('LPC01', 'El Rosario', 'LPC'),					-- 100
	('LPC02', 'Jerusalén', 'LPC'),					-- 101
	('LPC03', 'Mercedes La Ceiba', 'LPC'),			-- 102
	('LPC04', 'Paraíso de Osorio', 'LPC'),			-- 103
	('LPC05', 'San Antonio Masahuat', 'LPC'),		-- 104
	('LPC06', 'San Emigdio', 'LPC'),				-- 105
	('LPC07', 'San Juan Tepezontes', 'LPC'),		-- 106
	('LPC08', 'San Luís La Herradura', 'LPC'),		-- 107
	('LPC09', 'San Miguel Tepezontes', 'LPC'),		-- 108
	('LPC10', 'San Pedro Nonualco', 'LPC'),			-- 109
	('LPC11', 'Santa María Ostuma', 'LPC'),			-- 110
	('LPC12', 'Santiago Nonualco', 'LPC'),			-- 111
	('LPE01', 'San Juan Nonualco', 'LPE'),			-- 112
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),		-- 113
	('LPE03', 'Zacatecoluca', 'LPE'),				-- 114
-- LA UNIÓN		
	('LUN01', 'Anamorós', 'LUN'),					-- 115
	('LUN02', 'Bolivar', 'LUN'),					-- 116
	('LUN03', 'Concepción de Oriente', 'LUN'),		-- 117
	('LUN04', 'El Sauce', 'LUN'),					-- 118
	('LUN05', 'Lislique', 'LUN'),					-- 119
	('LUN06', 'Nueva Esparta', 'LUN'),				-- 120
	('LUN07', 'Pasaquina', 'LUN'),					-- 121
	('LUN08', 'Polorós', 'LUN'),					-- 122
	('LUN09', 'San José La Fuente', 'LUN'),			-- 123
	('LUN10', 'Santa Rosa de Lima', 'LUN'),			-- 124
	('LUS01', 'Conchagua', 'LUS'),					-- 125
	('LUS02', 'El Carmen', 'LUS'),					-- 126
	('LUS03', 'Intipucá', 'LUS'),					-- 127
	('LUS04', 'La Unión', 'LUS'),					-- 128
	('LUS05', 'Meanguera del Golfo', 'LUS'),		-- 129
	('LUS06', 'San Alejo', 'LUS'),					-- 130
	('LUS07', 'Yayantique', 'LUS'),					-- 131
	('LUS08', 'Yucuaiquín', 'LUS'),					-- 132
-- MORAZÁN		
	('MON01', 'Arambala', 'MON'),					-- 133
	('MON02', 'Cacaopera', 'MON'),					-- 134
	('MON03', 'Corinto', 'MON'),					-- 135
	('MON04', 'El Rosario', 'MON'),					-- 136
	('MON05', 'Joateca', 'MON'),					-- 137
	('MON06', 'Jocoaitique', 'MON'),				-- 138
	('MON07', 'Meanguera', 'MON'),					-- 139
	('MON08', 'Perquín', 'MON'),					-- 140
	('MON09', 'San Fernando', 'MON'),				-- 141
	('MON10', 'San Isidro', 'MON'),					-- 142
	('MON11', 'Torola', 'MON'),						-- 143
	('MOS01', 'Chilanga', 'MOS'),					-- 144
	('MOS02', 'Delicias de Concepción', 'MOS'),		-- 145
	('MOS03', 'El Divisadero', 'MOS'),				-- 146
	('MOS04', 'Gualococti', 'MOS'),					-- 147
	('MOS05', 'Guatajiagua', 'MOS'),				-- 148
	('MOS06', 'Jocoro', 'MOS'),						-- 149
	('MOS07', 'Lolotiquillo', 'MOS'),				-- 150
	('MOS08', 'Osicala', 'MOS'),					-- 151
	('MOS09', 'San Carlos', 'MOS'),					-- 152
	('MOS10', 'San Francisco Gotera', 'MOS'),		-- 153
	('MOS11', 'San Simón', 'MOS'),					-- 154
	('MOS12', 'Sensembra', 'MOS'),					-- 155
	('MOS13', 'Sociedad', 'MOS'),					-- 156
	('MOS14', 'Yamabal', 'MOS'),					-- 157
	('MOS15', 'Yoloaiquín', 'MOS'),					-- 158
-- SANTA ANA		
	('SAN01', 'Masahuat', 'SAN'),					-- 159
	('SAN02', 'Metapán', 'SAN'),					-- 160
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),		-- 161
	('SAN04', 'Texistepeque', 'SAN'),				-- 162
	('SAC01', 'Santa Ana', 'SAC'),					-- 163
	('SAE01', 'Coatepeque', 'SAE'),					-- 164
	('SAE02', 'El Congo', 'SAE'),					-- 165
	('SAO01', 'Candelaria de la Frontera', 'SAO'),	-- 166
	('SAO02', 'Chalchuapa', 'SAO'),					-- 167
	('SAO03', 'El Porvenir', 'SAO'),				-- 168
	('SAO04', 'San Antonio Pajonal', 'SAO'),		-- 169
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),	-- 170
	('SAO06', 'Santiago de La Frontera', 'SAO'),	-- 171
-- SAN MIGUEL
	('SMN01', 'Ciudad Barrios', 'SMN'),				-- 172
	('SMN02', 'Sesori', 'SMN'),						-- 173
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),		-- 174
	('SMN04', 'San Gerardo', 'SMN'),				-- 175
	('SMN05', 'San Luis de La Reina', 'SMN'),		-- 176
	('SMN06', 'Carolina', 'SMN'),					-- 177
	('SMN07', 'San Antonio del Mosco', 'SMN'),		-- 178
	('SMN08', 'Chapeltique', 'SMN'),				-- 179
	('SMC01', 'San Miguel', 'SMC'),					-- 180
	('SMC02', 'Comacarán', 'SMC'),					-- 181
	('SMC03', 'Uluazapa', 'SMC'),					-- 182
	('SMC04', 'Moncagua', 'SMC'),					-- 183
	('SMC05', 'Quelepa', 'SMC'),					-- 184
	('SMC06', 'Chirilagua', 'SMC'),					-- 185
	('SMO01', 'Chinameca', 'SMO'),					-- 186
	('SMO02', 'Nueva Guadalupe', 'SMO'),			-- 187
	('SMO03', 'Lolotique', 'SMO'),					-- 188
	('SMO04', 'San Jorge', 'SMO'),					-- 189
	('SMO05', 'San Rafael Oriente', 'SMO'),			-- 190
	('SMO06', 'El Tránsito', 'SMO'),				-- 191
-- SAN SALVADOR
	('SSN01', 'Aguilares', 'SSN'),					-- 192
	('SSN02', 'El Paisnal', 'SSN'),					-- 193
	('SSN03', 'Guazapa', 'SSN'),					-- 194
	('SSO01', 'Apopa', 'SSO'),						-- 195
	('SSO02', 'Nejapa', 'SSO'),						-- 196
	('SSE01', 'Ilopango', 'SSE'),					-- 197
	('SSE02', 'San Martín', 'SSE'),					-- 198
	('SSE03', 'Soyapango', 'SSE'),					-- 199
	('SSE04', 'Tonacatepeque', 'SSE'),				-- 200
	('SSC01', 'Ayutuxtepeque', 'SSC'),				-- 201
	('SSC02', 'Mejicanos', 'SSC'),					-- 202
	('SSC03', 'San Salvador', 'SSC'),				-- 203
	('SSC04', 'Cuscatancingo', 'SSC'),				-- 204
	('SSC05', 'Ciudad Delgado', 'SSC'),				-- 205
	('SSS01', 'Panchimalco', 'SSS'),				-- 206
	('SSS02', 'Rosario de Mora', 'SSS'),			-- 207
	('SSS03', 'San Marcos', 'SSS'),					-- 208
	('SSS04', 'Santo Tomás', 'SSS'),				-- 209
	('SSS05', 'Santiago Texacuangos', 'SSS'),		-- 210
-- SAN VICENTE
	('SVN01', 'Apastepeque', 'SVN'),				-- 211
	('SVN02', 'Santa Clara', 'SVN'),				-- 212
	('SVN03', 'San Ildefonso', 'SVN'),				-- 213
	('SVN04', 'San Esteban Catarina', 'SVN'),		-- 214
	('SVN05', 'San Sebastián', 'SVN'),				-- 215
	('SVN06', 'San Lorenzo', 'SVN'),				-- 216
	('SVN07', 'Santo Domingo', 'SVN'),				-- 217
	('SVS01', 'San Vicente', 'SVS'),				-- 218
	('SVS02', 'Guadalupe', 'SVS'),					-- 219
	('SVS03', 'Verapaz', 'SVS'),					-- 220
	('SVS04', 'Tepetitán', 'SVS'),					-- 221
	('SVS05', 'Tecoluca', 'SVS'),					-- 222
	('SVS06', 'San Cayetano Istepeque', 'SVS'),		-- 223
-- SONSONATE
	('SON01', 'Juayúa', 'SON'),						-- 224
	('SON02', 'Nahuizalco', 'SON'),					-- 225	
	('SON03', 'Salcoatitán', 'SON'),				-- 226
	('SON04', 'Santa Catarina Masahuat', 'SON'),	-- 227
	('SOC01', 'Sonsonate', 'SOC'),					-- 228
	('SOC02', 'Sonzacate', 'SOC'),					-- 229
	('SOC03', 'Nahulingo', 'SOC'),					-- 230
	('SOC04', 'San Antonio del Monte', 'SOC'),		-- 231
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),	-- 232
	('SOE01', 'Izalco', 'SOE'),						-- 233
	('SOE02', 'Armenia', 'SOE'),					-- 234
	('SOE03', 'Caluco', 'SOE'),						-- 235
	('SOE04', 'San Julián', 'SOE'),					-- 236
	('SOE05', 'Cuisnahuat', 'SOE'),					-- 237
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),		-- 238
	('SOO01', 'Acajutla', 'SOO'),					-- 239
-- USULUTÁN
	('USN01', 'Santiago de María', 'USN'),			-- 240
	('USN02', 'Alegría', 'USN'),					-- 241
	('USN03', 'Berlín', 'USN'),						-- 242
	('USN04', 'Mercedes Umaña', 'USN'),				-- 243
	('USN05', 'Jucuapa', 'USN'),					-- 244
	('USN06', 'El triunfo', 'USN'),					-- 245
	('USN07', 'Estanzuelas', 'USN'),				-- 246
	('USN08', 'San Buenaventura', 'USN'),			-- 247
	('USN09', 'Nueva Granada', 'USN'),				-- 248
	('USE01', 'Usulután', 'USE'),					-- 249
	('USE02', 'Jucuarán', 'USE'),					-- 250
	('USE03', 'San Dionisio', 'USE'),				-- 251
	('USE04', 'Concepción Batres', 'USE'),			-- 252
	('USE05', 'Santa María', 'USE'),				-- 253
	('USE06', 'Ozatlán', 'USE'),					-- 254
	('USE07', 'Tecapán', 'USE'),					-- 255
	('USE08', 'Santa Elena', 'USE'),				-- 256
	('USE09', 'California', 'USE'),					-- 257
	('USE10', 'Ereguayquín', 'USE'),				-- 258
	('USO01', 'Jiquilisco', 'USO'),					-- 259
	('USO02', 'Puerto El Triunfo', 'USO'),			-- 260
	('USO03', 'San Agustín', 'USO'),				-- 261
	('USO04', 'San Francisco Javier', 'USO');		-- 262

INSERT INTO direcciones (linea1, linea2, idDistrito, codigoPostal) VALUES
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),        -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'),     -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'),     -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'),    -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'),              -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'),        -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),    -- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),  -- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');    -- 10

INSERT INTO sucursales (nombreSucursal, telefonoSucursal, correoSucursal, horarioApertura, horarioCierre, idDireccion) VALUES 
    ('Sucursal Este', '5555-5555', 'info@sucursaleste.com', '08:00:00', '17:30:00', 6),			-- 1
    ('Sucursal Oeste', '6666-6666', 'info@sucursaloeste.com', '08:00:00', '18:00:00', 7),		-- 2
    ('Sucursal Central', '7777-7777', 'info@sucursalcentral.com', '08:00:00', '17:00:00', 8),	-- 3
    ('Sucursal Norte', '8888-8888', 'info@sucursanorte.com', '08:00:00', '17:30:00', 9),		-- 4
    ('Sucursal 1', '1234-9999', 'info@sucursaluno.com', '08:00:00', '18:00:00', 10),			-- 5
    ('Sucursal 2', '2032-9999', 'info@sucursaldos.com', '08:00:00', '18:00:00', 1),				-- 6
    ('Sucursal 3', '3242-9999', 'info@sucursaltres.com', '08:00:00', '18:00:00', 2),			-- 7
    ('Sucursal 4', '3434-9999', 'info@sucursalcuatro.com', '08:00:00', '18:00:00', 3),			-- 8
    ('Sucursal 5', '2465-9999', 'info@sucursalcinco.com', '08:00:00', '18:00:00', 4),			-- 9
    ('Sucursal 6', '9943-9999', 'info@sucursalseis.com', '08:00:00', '18:00:00', 5);			-- 10
    
INSERT INTO cargos (cargo) VALUES 
    ('SysAdmin'),   -- 1 --
    ('Regente'),    -- 2 --
    ('Gerente'),    -- 3 --
    ('Cajero'),     -- 4 --
    ('Vendedor'),   -- 5 --
	('Bodeguero'),  -- 6 --
	('RRHH'),       -- 7 --
	('Contador'),   -- 8 --
    ('Seguridad'),  -- 9 --
    ('Ordenanza');  -- 10 --

INSERT INTO empleados (nombresEmpleado, apellidosEmpleado, duiEmpleado, isssEmpleado, fechaNacEmpleado, telefonoEmpleado, generoEmpleado, correoEmpleado, idCargo, idDireccion, idSucursal) VALUES 
    ('Laura', 'García', '04523695-5', '906325698', '1993-08-22', '7777-7777', 'F', 'laura@example.com', 1, 2, 1),		-- 1
    ('Roberto', 'Hernández', '4321098-7', '345678901', '1990-12-10', '8888-8888', 'M', 'roberto@example.com', 2, 3, 1),	-- 2
    ('Elena', 'Sánchez', '03210987-4', '234567890', '1995-04-18', '9999-9999', 'F', 'elena@example.com', 3, 4, 1),		-- 3
    ('Diego', 'Martínez', '06789012-1', '123456789', '1988-11-30', '1111-1111', 'M', 'diego@example.com', 4, 5, 1),		-- 4
    ('Sofía', 'López', '07654321-3', '012345678', '1992-06-25', '2222-2222', 'F', 'sofia@example.com', 5, 6, 1),		-- 5
    ('Marvin', 'Reyes', '06789012-7', '012345645', '1990-05-20', '6435-4444', 'M', 'marvin@example.com', 6, 10, 1),		-- 6
    ('Julio', 'Rivera', '02345678-4', '512347645', '1991-03-11', '7453-3132', 'M', 'julio@example.com', 7, 9, 1),		-- 7
    ('Rodrigo', 'Zabala', '08901234-2', '384217474', '1989-11-25', '5853-1324', 'M', 'rodrigo@example.com', 8, 2, 1);	-- 8

INSERT INTO clientes (nombresCliente, apellidosCliente, telefonoCliente, generoCliente, duiCliente, fechaNacCliente, correoCliente, idDireccion) VALUES 
    ('Juan', 'Pérez', '7777-8888', 'M', '12345678-5', '1985-05-10', 'juanperez@example.com', 1),			-- 1
    ('María', 'López', '9999-0000', 'F', '87654321-2', '1990-10-15', 'marialopez@example.com', 2),			-- 2
    ('Pedro', 'Gómez', '3333-4444', 'M', '13579246-0', '1988-03-20', 'pedrogomez@example.com', 3),			-- 3
    ('Fernando', 'Ceren', '0000-0000', 'M', '21222129-7', '2002-10-29', 'ferceren10@example.com', 4),		-- 4
    ('Ana', 'Martínez', '5555-6666', 'F', '98765432-1', '1992-07-25', 'anamartinez@example.com', 5),  		-- 5
    ('Carlos', 'Ramírez', '4444-5555', 'M', '24681357-9', '1983-12-30', 'carlosramirez@example.com', 6), 	-- 6
    ('Elena', 'Hernández', '2222-3333', 'F', '97531246-8', '1975-11-10', 'elenahernandez@example.com', 7), 	-- 7
    ('Luis', 'Torres', '8888-9999', 'M', '75315984-3', '1995-08-05', 'luistorres@example.com', 8),    		-- 8
    ('Sofía', 'Morales', '6666-7777', 'F', '86421357-6', '1987-09-15', 'sofiamorales@example.com', 9), 		-- 9
    ('Jorge', 'García', '1111-2222', 'M', '98732165-4', '1991-06-17', 'jorgegarcia@example.com', 10);  		-- 10

-- TABLAS DE COMPRA --
INSERT INTO categorias (nombreCategoria, descripcionCategoria) VALUES
	('Analgésicos', 'Medicamentos para aliviar el dolor'),								-- 1
	('Antibióticos', 'Medicamentos para tratar infecciones bacterianas'),   			-- 2
	('Antiinflamatorios', 'Medicamentos para reducir la inflamación'),					-- 3
	('Antipiréticos', 'Medicamentos para reducir la fiebre'),							-- 4
	('Antihistamínicos', 'Medicamentos para tratar alergias'),							-- 5
	('Antidepresivos', 'Medicamentos para tratar la depresión'),						-- 6
	('Antieméticos', 'Medicamentos para prevenir o tratar las náuseas y los vómitos'), 	-- 7
	('Antiespasmódicos', 'Medicamentos para aliviar los espasmos musculares'),			-- 8
	('Antiulcerosos', 'Medicamentos para tratar las úlceras estomacales'),				-- 9	
	('Anticonceptivos', 'Medicamentos para prevenir el embarazo');						-- 10
    
INSERT INTO marcas (nombreMarca, descripcionMarca) VALUES
	('Pfizer', 'Farmacéutica líder mundial en investigación biomédica'),					-- 1
	('Roche', 'Empresa suiza de productos farmacéuticos y diagnósticos'),					-- 2
	('Novartis', 'Compañía farmacéutica multinacional suiza'),								-- 3
	('Merck', 'Empresa estadounidense de productos farmacéuticos'),							-- 4
	('GlaxoSmithKline', 'Compañía farmacéutica británica'),									-- 5
	('Sanofi', 'Empresa francesa de productos farmacéuticos'),								-- 6
	('Johnson & Johnson', 'Corporación multinacional estadounidense'),						-- 7
	('Abbott Laboratories', 'Compañía de dispositivos médicos y productos farmacéuticos'),	-- 8
	('Bayer', 'Empresa alemana de ciencias de la vida'),									-- 9
	('AstraZeneca', 'Compañía farmacéutica multinacional anglo-sueca');						-- 10
    
INSERT INTO presentacionMedicamento (nombrePresentacion, descripcion) VALUES
    ('Tableta', 'Medicamento en forma sólida y plana, para ser ingerido por vía oral'),                   							-- 1
    ('Cápsula', 'Medicamento en forma sólida con recubrimiento gelatinoso, para ser ingerido por vía oral'), 						-- 2
    ('Jarabe', 'Medicamento líquido y viscoso, generalmente con sabor dulce, para ser ingerido por vía oral'), 						-- 3
    ('Gotas', 'Medicamento líquido para ser administrado en forma de gotas, generalmente por vía oral o nasal'),					-- 4
    ('Inyectable', 'Medicamento líquido para ser administrado mediante inyección'),                      							-- 5
    ('Pomada', 'Medicamento semisólido para aplicación tópica sobre la piel'),                            							-- 6
    ('Crema', 'Medicamento semisólido, emulsión de aceite y agua, para aplicación tópica'),              							-- 7
    ('Supositorio', 'Medicamento sólido para ser introducido en el recto, donde se disuelve o funde'),    							-- 8
    ('Polvo', 'Medicamento en forma de partículas finas para ser disuelto en líquido o espolvoreado sobre una superficie'),			-- 9
    ('Aerosol', 'Medicamento en forma de suspensión de partículas finas en gas, para ser inhalado o aplicado sobre una superficie');-- 10
    
INSERT INTO inventario (cantidadStock, noEstanteria, noPasillo) VALUES
	(100, 1, 1), 	-- 1
	(34, 2, 2),	 	-- 2
	(50, 3, 3),	 	-- 3
	(60, 4, 4),	 	-- 4
	(80, 5, 5),	 	-- 5
	(100, 6, 6),	-- 6
	(70, 7, 7),	 	-- 7
	(65, 8, 8),	 	-- 8
	(10, 9, 9),	 	-- 9
	(15, 10, 10);	-- 10
    
INSERT INTO laboratorios (nombreLaboratorio, numeroContacto, correoElectronicoLaboratorio, idDireccion) VALUES
    ('Laboratorios Arsal SA', '2213-1300', 'atencionalcliente@arsal.com.sv', 3),                  -- 1
    ('Laboratorios Biológicos (Labis)', '2255-4080', 'contacto@lbvcentroamerica.com', 4),         -- 2
    ('Laboratorios DB, SA De CV', '2263-9088', 'comercializacion@laboratoriodb.com', 10),         -- 3
    ('Laboratorios Farma SA', '2201-5540', 'info@farma.com', 5),                                  -- 4
    ('Laboratorios Medicos Unidos', '2234-5678', 'atencioncliente@medicosunidos.com', 7),         -- 5
    ('Laboratorios Naturales', '2245-7890', 'contacto@naturaleslab.com', 9),                      -- 6
    ('Laboratorios Avanzados', '2200-1122', 'soporte@avanzados.com', 6),                          -- 7
    ('Laboratorios Internacionales', '2233-4455', 'servicio@internacionaleslab.com', 8),          -- 8
    ('Laboratorios Calidad', '2255-6677', 'ventas@calidadlab.com', 2),                            -- 9
    ('Laboratorios Excelencia', '2266-7788', 'contact@excelencialab.com', 1);  				      -- 10
    
INSERT INTO medicamentos (nombreMedicamento, formulaMedicamento, descripcionMedicamento, dosisMedicamento, fechaVencimiento, precioCompra, precioVenta, idCategoria, idMarca, idPresentacionMedicamento, idInventario) VALUES 
    ('Paracetamol', 'Paracetamol 500mg', 'Alivio del dolor y reducción de la fiebre', '1 tableta cada 6 horas', '2025-12-31', 6.00, 7.00, 1, 1, 2, 1),  	-- 1
    ('Ibuprofeno', 'Ibuprofeno 400mg', 'Antiinflamatorio y analgésico', '1 tableta cada 8 horas', '2026-10-15', 8.00, 9.00, 3, 2, 1, 2),               		-- 2
    ('Amoxicilina', 'Amoxicilina 500mg', 'Antibiótico de amplio espectro', '1 cápsula cada 12 horas', '2025-05-20', 10.00, 11.00, 2, 3, 2, 3),          	-- 3
    ('Loratadina', 'Loratadina 10mg', 'Antihistamínico para tratar alergias', '1 tableta diaria', '2026-08-30', 6.00, 7.00, 5, 4, 1, 4),                	-- 4
    ('Metformina', 'Metformina 850mg', 'Tratamiento para la diabetes tipo 2', '1 tableta dos veces al día', '2027-01-25', 8.00, 9.00, 4, 5, 1, 5),      	-- 5
    ('Omeprazol', 'Omeprazol 20mg', 'Tratamiento de úlceras estomacales', '1 cápsula diaria', '2026-12-15', 10.00, 11.00, 9, 6, 2, 6),                    	-- 6
    ('Diclofenaco', 'Diclofenaco 75mg', 'Antiinflamatorio y analgésico', '1 tableta cada 12 horas', '2025-11-20', 6.00, 7.00, 3, 7, 1, 7),             		-- 7
    ('Ranitidina', 'Ranitidina 150mg', 'Tratamiento de la acidez estomacal', '1 tableta dos veces al día', '2025-09-10', 8.00, 9.00, 9, 8, 1, 8),       	-- 8
    ('Acetaminofén', 'Acetaminofén 500mg', 'Alivio del dolor y reducción de la fiebre', '1 tableta cada 6 horas', '2026-02-28', 10.00, 11.00, 1, 9, 1, 9), 	-- 9
    ('Clorfenamina', 'Clorfenamina 4mg', 'Antihistamínico para tratar alergias', '1 tableta cada 8 horas', '2026-04-22', 6.00, 7.00, 5, 10, 1, 10);      	-- 10

INSERT INTO compras (fechaHoraCompra, totalCompra, idLaboratorio) VALUES
    ('2023-05-01 10:30:00', 203.40, 1), -- 1
    ('2023-06-01 11:30:00', 316.00, 2),	-- 2
    ('2023-07-01 12:30:00', 452.00, 3),	-- 3
    ('2023-08-01 13:30:00', 203.40, 1),	-- 4
    ('2023-09-01 10:30:00', 316.00, 2),	-- 5
    ('2023-10-01 11:30:00', 452.00, 3),	-- 6
    ('2023-11-01 12:30:00', 203.40, 1),	-- 7
    ('2023-12-01 13:30:00', 316.00, 2),	-- 8
    ('2024-01-01 10:30:00', 452.00, 3), -- 9
    ('2024-02-01 11:30:00', 339.00, 1); -- 10

INSERT INTO facturaCompra (fechaHoraFacturacion, ivaFacturaCompra, creditoFiscalCompra) VALUES
    ('2023-05-01 10:30:00', 23.40, 23.40),	-- 1
    ('2023-06-01 11:30:00', 36.40, 36.40),	-- 2
    ('2023-07-01 12:30:00', 52.00, 52.00),	-- 3
    ('2023-08-01 13:30:00', 23.40, 23.40),	-- 4
    ('2023-09-01 10:30:00', 36.40, 36.40),	-- 5
    ('2023-10-01 11:30:00', 52.00, 52.00),	-- 6
    ('2023-11-01 12:30:00', 23.40, 23.40),	-- 7
    ('2023-12-01 13:30:00', 36.40, 36.40),	-- 8
    ('2024-01-01 10:30:00', 52.00, 52.00),	-- 9
    ('2024-02-01 11:30:00', 39.00, 39.00);	-- 10

INSERT INTO detalleCompra (cantidadComprada, precioUnitario, subTotalCompra, idCompra, idMedicamento, idFacturaCompra) VALUES
    (30, 06.00, 180.00, 1, 1, 1),		-- 1
    (35, 08.00, 280.00, 2, 2, 2),		-- 2
    (40, 10.00, 400.00, 3, 3, 3),		-- 3
    (30, 06.00, 180.00, 4, 4, 4),		-- 4
    (35, 08.00, 280.00, 5, 5, 5),		-- 5
    (40, 10.00, 400.00, 6, 6, 6),		-- 6
    (30, 06.00, 180.00, 7, 7, 7),		-- 7
    (35, 08.00, 280.00, 8, 8, 8),		-- 8
    (40, 10.00, 400.00, 9, 9, 9),		-- 9
    (50, 06.00, 300.00, 10, 10, 10);	-- 10

-- TABLAS DE VENTA --
INSERT INTO metodosPago (nombreMetodo, descripcionMetodoPago) VALUES
	('Efectivo', 'Pago en efectivo en el momento de la compra'), -- 1
	('Tarjeta de crédito', 'Pago con tarjeta de crédito'),	     -- 2
	('Tarjeta de débito', 'Pago con tarjeta de débito'),		 -- 3
	('Bitcoin', 'Pago con chivo wallet');		 				 -- 4

INSERT INTO ventas (fechaHoraVenta, totalVenta, idCliente, idEmpleado) VALUES 
    ('2024-05-01 10:30:00', 7.91, 1, 4),	-- 1
    ('2024-05-01 10:35:00', 10.17, 2, 4),	-- 2
    ('2024-05-01 10:40:00', 12.43, 3, 4),	-- 3
    ('2024-05-02 10:45:00', 7.91, 4, 4),	-- 4
    ('2024-05-02 11:30:00', 10.17, 5, 4),	-- 5
    ('2024-05-02 11:35:00', 12.43, 6, 4),	-- 6
    ('2024-05-03 11:40:00', 7.91, 7, 4),	-- 7
    ('2024-05-03 12:30:00', 10.17, 8, 4),	-- 8
    ('2024-05-03 12:35:00', 12.43, 9, 4),	-- 9
    ('2024-05-03 12:40:00', 7.91, 10, 4);	-- 10

INSERT INTO facturaVenta (fechaHoraFacturacion, ivaFacturaVenta, creditoFiscalVenta, idMetodoPago) VALUES 
    ('2024-04-06 10:00:00', 0.91, 0.91, 1), -- 1
    ('2024-05-04 10:30:00', 1.17, 1.17, 1), -- 2
    ('2024-05-04 10:30:00', 1.43, 1.43, 1), -- 3
    ('2024-05-04 10:30:00', 0.91, 0.91, 2), -- 4
    ('2024-05-04 10:30:00', 1.17, 1.17, 2), -- 5
    ('2024-05-04 10:30:00', 1.43, 1.43, 2), -- 6
    ('2024-05-04 10:30:00', 0.91, 0.91, 3), -- 7
    ('2024-05-04 10:30:00', 1.17, 1.17, 3), -- 8
    ('2024-05-04 10:30:00', 1.43, 1.43, 3), -- 9
	('2024-06-20 10:30:00', 0.91, 0.91, 1); -- 10
    
INSERT INTO detalleVenta (cantidadVendida, precioUnitario, subTotalVenta, idVenta, idMedicamento, idFacturaVenta) VALUES 
    (1, 7.00, 7.00, 1, 1, 1),	-- 1
    (1, 9.00, 9.00, 2, 2, 2),	-- 2	
    (1, 11.00, 11.00, 3, 3, 3),	-- 3	
    (1, 7.00, 7.00, 4, 1, 4),	-- 4	
    (1, 9.00, 9.00, 5, 2, 5),	-- 5	
    (1, 11.00, 11.00, 6, 3, 6),	-- 6	
    (1, 7.00, 7.00, 7, 1, 7),	-- 7	
    (1, 9.00, 9.00, 8, 2, 8),	-- 8	
    (1, 11.00, 11.00, 9, 3, 9),	-- 9	
    (1, 7.00, 7.00, 10, 1, 10);  -- 10
    
-- TABLAS DE ROLES Y USUARIOS --
INSERT INTO roles (rol) VALUES 
    ('SysAdmin'),   -- 1 --
    ('Regente'),    -- 2 ---
    ('Gerente'),    -- 3 --
    ('Cajero'),     -- 4 --
    ('Vendedor'),   -- 5 --
	('Bodeguero'),  -- 6 --
	('RRHH'),       -- 7 --
	('Contador');   -- 8 --
    
INSERT INTO opciones (opcion) VALUES
	('Gestionar Cuentas'), 					-- 1 --
    ('Gestionar departamentos'), 			-- 2 --
    ('Gestionar municipios'), 				-- 3 --
    ('Gestionar distritos'), 				-- 4 --
    ('Gestionar direcciones'), 				-- 5 --
    ('Gestionar categorias'), 				-- 6 --
    ('Gestionar marcas'), 					-- 7 --
    ('Gestionar presentacionMedicamento'),  -- 8 --
    ('Gestionar inventario'), 				-- 9 --
    ('Gestionar medicamentos'), 			-- 10 --
    ('Gestionar facturaCompra'), 			-- 11 --
    ('Gestionar detalleCompra'), 			-- 12 --
    ('Gestionar compras'), 					-- 13 --
    ('Gestionar laboratorios'), 			-- 14 --
    ('Gestionar metodosPago'), 				-- 15 --
    ('Gestionar facturaVenta'), 			-- 16 --
    ('Gestionar detalleVenta'), 			-- 17 --
    ('Gestionar ventas'), 					-- 18 --
    ('Gestionar clientes'), 				-- 19 --
    ('Gestionar cargos'), 					-- 20 --
    ('Gestionar empleados'), 				-- 21 --
    ('Gestionar roles'), 					-- 22 --
    ('Gestionar opciones'), 				-- 23 --
    ('Gestionar asignacionRolesOpciones'), 	-- 24 --
    ('Gestionar usuarios'), 				-- 25 --
    ('Gestionar sucursales'); 				-- 26 --
    
INSERT INTO asignacionRolesOpciones (idRol, idOpcion) VALUES
-- SysAdmin: Todos los permisos
   ('1','1'),  -- cuentas
   ('1','2'),  -- departamentos
   ('1','3'),  -- municipios
   ('1','4'),  -- distritos
   ('1','5'),  -- direcciones
   ('1','6'),  -- categorias
   ('1','7'),  -- marcas
   ('1','8'),  -- presentacion de medicamento
   ('1','9'),  -- inventario
   ('1','10'), -- medicamentos
   ('1','11'), -- factura de compra
   ('1','12'), -- detalle de compra
   ('1','13'), -- compras
   ('1','14'), -- laboratorios
   ('1','15'), -- metodos de pago
   ('1','16'), -- factura de venta
   ('1','17'), -- detalle de venta
   ('1','18'), -- ventas
   ('1','19'), -- clientes
   ('1','20'), -- cargos
   ('1','21'), -- empleados
   ('1','22'), -- roles
   ('1','23'), -- opciones
   ('1','24'), -- asignacion de roles opciones
   ('1','25'), -- usuarios
   ('1','26'), -- sucursales

-- Regente: CRUD(medicamentos,sucursales)
   ('2','10'), -- medicamentos
   ('2','26'), -- sucursales

-- Gerente: Todos los permisos
   ('3','1'),  -- cuentas
   ('3','2'),  -- departamentos
   ('3','3'),  -- municipios
   ('3','4'),  -- distritos
   ('3','5'),  -- direcciones
   ('3','6'),  -- categorias
   ('3','7'),  -- marcas
   ('3','8'),  -- presentacion de medicamento
   ('3','9'),  -- inventario
   ('3','10'), -- medicamentos
   ('3','11'), -- factura de compra
   ('3','12'), -- detalle de compra
   ('3','13'), -- compras
   ('3','14'), -- laboratorios
   ('3','15'), -- metodos de pago
   ('3','16'), -- factura de venta
   ('3','17'), -- detalle de venta
   ('3','18'), -- ventas
   ('3','19'), -- clientes
   ('3','20'), -- cargos
   ('3','21'), -- empleados
   ('3','22'), -- roles
   ('3','23'), -- opciones
   ('3','24'), -- asignacion de roles opciones
   ('3','25'), -- usuarios
   ('3','26'), -- sucursales

-- Cajero: CRUD(clientes,ventas,detalle de venta,factura de venta,direcciones,metodos de pago) LECTURA(distritos,municipios,departamentos)
   -- solo lectura
   ('4','2'),  -- departamentos
   ('4','3'),  -- municipios
   ('4','4'),  -- distritos
   -- 
   ('4','5'),  -- direcciones
   ('4','15'), -- metodos de pago
   ('4','16'), -- factura de venta
   ('4','17'), -- detalle de venta
   ('4','18'), -- ventas
   ('4','19'), -- clientes

-- Vendedor: CRUD(clientes,medicamentos,direcciones,ventas,detalle de venta,factura de venta) LECTURA(distritos,municipios,departamentos)
   -- solo lectura 
   ('5','2'),  -- departamentos
   ('5','3'),  -- municipios
   ('5','4'),  -- distritos
   --
   ('5','19'), -- clientes
   ('5','10'), -- medicamentos
   ('5','5'),  -- direcciones
   ('5','18'), -- ventas
   ('5','17'), -- detalle de venta
   ('5','16'), -- factura de venta

-- Bodeguero: CRUD(inventario,medicamentos,categorias,presentacion de medicamento,marcas,compras,detalle de compra,factura de compra,laboratorios,direcciones,sucursales) LECTURA(distritos,municipios,departamentos)
   -- solo lectura
   ('6','2'),  -- departamentos
   ('6','3'),  -- municipios
   ('6','4'),  -- distritos
   -- 
   ('6','9'),  -- inventario
   ('6','10'), -- medicamentos
   ('6','6'),  -- categorias
   ('6','8'),  -- presentacion de medicamento
   ('6','7'),  -- marcas
   ('6','13'), -- compras
   ('6','12'), -- detalle de compra
   ('6','11'), -- factura de compra
   ('6','14'), -- laboratorios
   ('6','5'),  -- direcciones
   ('6','26'), -- sucursales

-- RRHH: CRUD(empleados,cargos,direcciones) LECTURA(distritos,municipios,departamentos)
   -- solo lectura 
   ('7','2'),  -- distritos
   ('7','3'),  -- municipios
   ('7','4'),  -- departamentos
   --
   ('7','21'), -- empleados
   ('7','20'), -- cargos
   ('7','5'),  -- direcciones

-- Contador: CRUD(ventas,detalle de venta,factura de venta,compras,detalle de compra,factura de compra,metodos de pago)
   ('8','18'), -- ventas
   ('8','17'), -- detalle de venta
   ('8','16'), -- factura de venta
   ('8','13'), -- compras
   ('8','12'), -- detalle de compra
   ('8','11'), -- factura de compra
   ('8','15'); -- metodos de pago
   
INSERT INTO usuarios (usuario, contrasenia, idRol, idEmpleado) VALUES
   ('admin_lauragarcia', 'root', '1', '1'),              -- Administrador
   ('regen_robertohernandez', 'Hernandez123', '2', '2'), -- Regente
   ('geren_elenasanchez', 'Elena234', '3', '3'), 		 -- Gerente
   ('caje_diegomartinez', 'Martinez345', '4', '4'), 	 -- Cajera
   ('vende_sofialopez', 'Lopez456', '5', '5'), 			 -- Vendedora
   ('bodeg_marvinreyes', 'Reyes567', '6', '6'), 		 -- Bodeguero
   ('rrhh_juliorivera', 'Rivera678', '7', '7'), 		 -- RRHH
   ('conta_rodrigozabala', 'Zabala789', '8', '8'); 		 -- Contador
GO
    
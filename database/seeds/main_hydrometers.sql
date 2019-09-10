-- 10971 - matricula joão pimenta
create table hydrometers
(
    id         integer not null
        primary key autoincrement,
    number     varchar not null,
    nick       varchar not null,
    created_at datetime,
    updated_at datetime
);

create unique index hydrometers_number_unique
    on hydrometers (number);

INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (1, 'A12B068173', 'Química', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (2, 'A15HR009837', 'Banco do Brasil', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (3, 'A15G442897', 'Caixa Econômica Externo', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (4, 'E16N000088', 'Caixa Econômica Interno', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (5, 'Y15G239681', 'Lanchonete Geraes - PVB', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (6, 'D90N000821', 'Hotel - CEE 1', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (7, 'D90N000816', 'Hotel - CEE 2', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (8, 'Y10N597262', 'Hotel - CEE 3', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (9, 'Y15G239682', 'Lanchonete Geraes', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (10, 'D90N000824', 'Restaurante CEE', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (11, 'F91N000005', 'Veterinária', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (12, 'F15N000837', 'Laticínios Funarbe', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (13, 'F91N000022', 'Prédio CEE', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (14, 'F91N000004', 'PVA', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (15, 'F91N000012', 'Biblioteca Central', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (16, 'F91N000006', 'RU I', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (17, 'Y15G202914', 'SIF', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (18, 'A11N090888', 'Lanchonete Centro de Conveniência', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (19, 'F91N000024', 'Economia Doméstica', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (20, 'F91N000014', 'Moradia Estudantil "Feminino"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (21, 'F91N000025', 'Estufa dos solos', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (22, 'C12P001060', 'Agros', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (23, 'F91N000016', 'Moradia estudantil "Pós-Graduado"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (24, 'F91N000003', 'Moradia estudantil "Posinho"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (25, 'E14C000071', 'Restaurante Multiuso', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (26, 'A90N085697', 'UFV Credi', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (27, 'F91N000021', 'Piscina DCE', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (28, 'A90N055426', 'Lanchonete DCE', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (29, 'F91N000019', 'Moradia Estudantil "Velho"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (30, 'F91N000017', 'Moradia Estudantil "Novo"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (31, 'F91N000026', 'Moradia Estudantil "Novíssimo"', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (32, 'A02N278680', 'Arquitetura', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (33, 'A90N085692', 'Funarbe Sede', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (34, 'C17H000938', 'Supermercado Escola', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (35, 'A17H069838', 'Idata - Obra', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (36, 'Y09N238847', 'LCQA UFV', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (37, 'A17H069806', 'Obra Fitotecnia', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (38, 'D17N002866', 'RU II', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (39, 'Y09N238654', 'Reuso DAG', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (40, 'A16HR0010803', 'Casa 51 - IEF', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (41, 'A15HR0070442', 'Casa 45 - EMATER (Regional)', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (42, 'A15HR0070443', 'Casa 44 - EMATER (Local)', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (43, 'A15HR0070444', 'Casa 14 - EMATER (Treinamento)', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (44, 'A15HR0058644', 'Casa 38 - Corpo de Bombeiros', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (45, 'A15HR0058691', 'Casa 35 - IMA', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (46, 'A17N245587', 'Obra Laticínios Funarbe', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (47, 'A16N056828', 'Lanchonete DZO', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (48, 'A18H016214', 'Obra DAG', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (49, 'A15HR0070414', 'Banco Itaú', null, null);
INSERT INTO hydrometers (id, number, nick, created_at, updated_at) VALUES (50, 'A17H069883', 'Obra Suinocultura I', null, null);

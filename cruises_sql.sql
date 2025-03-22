-- Script de generation des croisieres
-- Encode en UTF-8

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET COLLATION_CONNECTION = utf8mb4_unicode_ci;

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (1, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2024-08-17', '2024-08-22', 5, 7, 3617.34);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (1, 1, 'Saint-Thomas', 'Visite de Saint-Thomas', '2024-08-17', '2024-08-18', 18.34, -64.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (2, 1, 'Nassau', 'Visite de Nassau', '2024-08-18', '2024-08-19', 25.03, -77.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (3, 1, 'Labadee', 'Visite de Labadee', '2024-08-19', '2024-08-20', 19.78, -72.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (4, 1, 'Miami', 'Depart de Miami', '2024-08-20', '2024-08-21', 25.76, -80.19);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (5, 1, 'Ocho Rios', 'Visite de Ocho Rios', '2024-08-21', '2024-08-22', 18.40, -77.11);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (1, 1, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (2, 1, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (3, 1, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (4, 1, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (5, 1, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (6, 1, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (7, 1, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (8, 1, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (9, 1, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (10, 1, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (11, 1, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (12, 1, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (13, 1, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (2, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2026-08-20', '2026-08-25', 5, 6, 3464.22);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (6, 2, 'Puerto Vallarta', 'Visite de Puerto Vallarta', '2026-08-20', '2026-08-21', 20.65, -105.23);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (7, 2, 'Los Angeles', 'Visite de Los Angeles', '2026-08-21', '2026-08-22', 34.05, -118.24);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (8, 2, 'San Diego', 'Visite de San Diego', '2026-08-22', '2026-08-23', 32.72, -117.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (9, 2, 'Victoria', 'Visite de Victoria', '2026-08-23', '2026-08-24', 48.43, -123.37);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (10, 2, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2026-08-24', '2026-08-25', 22.89, -109.92);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (14, 2, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (15, 2, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (16, 2, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (17, 2, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (18, 2, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (19, 2, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (20, 2, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (21, 2, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (22, 2, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (23, 2, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (24, 2, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (25, 2, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (26, 2, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (3, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2024-07-05', '2024-07-08', 3, 6, 1028.51);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (11, 3, 'Belize City', 'Visite de Belize City', '2024-07-05', '2024-07-06', 17.25, -88.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (12, 3, 'Roatan', 'Visite de Roatan', '2024-07-06', '2024-07-07', 16.38, -86.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (13, 3, 'Nassau', 'Visite de Nassau', '2024-07-07', '2024-07-08', 25.03, -77.40);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (27, 3, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (28, 3, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (29, 3, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (30, 3, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (31, 3, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (32, 3, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (33, 3, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (34, 3, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (35, 3, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (36, 3, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (37, 3, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (38, 3, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (39, 3, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (4, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2026-09-02', '2026-09-07', 5, 4, 2404.40);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (14, 4, 'Saint-Thomas', 'Visite de Saint-Thomas', '2026-09-02', '2026-09-03', 18.34, -64.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (15, 4, 'San Juan', 'Visite de San Juan', '2026-09-03', '2026-09-04', 18.47, -66.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (16, 4, 'Costa Maya', 'Visite de Costa Maya', '2026-09-04', '2026-09-05', 18.73, -87.72);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (17, 4, 'Nassau', 'Visite de Nassau', '2026-09-05', '2026-09-06', 25.03, -77.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (18, 4, 'Labadee', 'Visite de Labadee', '2026-09-06', '2026-09-07', 19.78, -72.25);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (40, 4, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (41, 4, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (42, 4, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (43, 4, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (44, 4, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (45, 4, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (46, 4, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (47, 4, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (48, 4, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (49, 4, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (50, 4, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (51, 4, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (52, 4, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (5, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2026-06-06', '2026-06-09', 3, 6, 3654.98);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (19, 5, 'Hong Kong', 'Visite de Hong Kong', '2026-06-06', '2026-06-07', 22.32, 114.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (20, 5, 'Shanghai', 'Visite de Shanghai', '2026-06-07', '2026-06-08', 31.23, 121.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (21, 5, 'Bangkok', 'Visite de Bangkok', '2026-06-08', '2026-06-09', 13.76, 100.50);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (53, 5, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (54, 5, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (55, 5, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (56, 5, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (57, 5, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (58, 5, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (59, 5, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (60, 5, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (61, 5, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (62, 5, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (63, 5, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (64, 5, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (65, 5, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (6, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2026-10-23', '2026-10-27', 4, 4, 1462.08);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (22, 6, 'Auckland', 'Visite d Auckland', '2026-10-23', '2026-10-24', -36.85, 174.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (23, 6, 'Brisbane', 'Visite de Brisbane', '2026-10-24', '2026-10-25', -27.47, 153.03);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (24, 6, 'Sydney', 'Depart de Sydney', '2026-10-25', '2026-10-26', -33.87, 151.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (25, 6, 'Melbourne', 'Visite de Melbourne', '2026-10-26', '2026-10-27', -37.81, 144.96);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (66, 6, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (67, 6, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (68, 6, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (69, 6, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (70, 6, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (71, 6, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (72, 6, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (73, 6, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (74, 6, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (75, 6, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (76, 6, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (77, 6, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (78, 6, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (7, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2026-09-25', '2026-10-02', 7, 2, 3828.38);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (26, 7, 'Port Elizabeth', 'Visite de Port Elizabeth', '2026-09-25', '2026-09-26', -33.96, 25.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (27, 7, 'Alexandrie', 'Visite d Alexandrie', '2026-09-26', '2026-09-27', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (28, 7, 'Durban', 'Visite de Durban', '2026-09-27', '2026-09-28', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (29, 7, 'Le Cap', 'Depart du Cap', '2026-09-28', '2026-09-29', -33.92, 18.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (30, 7, 'Maputo', 'Visite de Maputo', '2026-09-29', '2026-09-30', -25.97, 32.58);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (31, 7, 'Dakar', 'Visite de Dakar', '2026-09-30', '2026-10-01', 14.72, -17.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (32, 7, 'Tanger', 'Visite de Tanger', '2026-10-01', '2026-10-02', 35.76, -5.83);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (79, 7, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (80, 7, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (81, 7, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (82, 7, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (83, 7, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (84, 7, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (85, 7, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (86, 7, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (87, 7, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (88, 7, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (89, 7, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (90, 7, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (91, 7, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (8, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2025-08-17', '2025-08-24', 7, 8, 1761.95);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (33, 8, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2025-08-17', '2025-08-18', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (34, 8, 'Vancouver', 'Depart de Vancouver', '2025-08-18', '2025-08-19', 49.28, -123.12);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (35, 8, 'Los Angeles', 'Visite de Los Angeles', '2025-08-19', '2025-08-20', 34.05, -118.24);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (36, 8, 'Acapulco', 'Visite d Acapulco', '2025-08-20', '2025-08-21', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (37, 8, 'Ensenada', 'Visite d Ensenada', '2025-08-21', '2025-08-22', 31.87, -116.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (38, 8, 'San Francisco', 'Visite de San Francisco', '2025-08-22', '2025-08-23', 37.77, -122.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (39, 8, 'Mazatlan', 'Visite de Mazatlan', '2025-08-23', '2025-08-24', 23.63, -102.55);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (92, 8, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (93, 8, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (94, 8, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (95, 8, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (96, 8, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (97, 8, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (98, 8, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (99, 8, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (100, 8, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (101, 8, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (102, 8, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (103, 8, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (104, 8, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (9, 'AMeRIQUE DU SUD', 'Decouvrez AMeRIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMeRIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2025-10-19', '2025-10-24', 5, 6, 2752.43);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (40, 9, 'Buenos Aires', 'Visite de Buenos Aires', '2025-10-19', '2025-10-20', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (41, 9, 'Panama', 'Visite de Panama', '2025-10-20', '2025-10-21', 8.98, -79.52);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (42, 9, 'Lima', 'Visite de Lima', '2025-10-21', '2025-10-22', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (43, 9, 'Santiago', 'Visite de Santiago', '2025-10-22', '2025-10-23', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (44, 9, 'Belize', 'Visite de Belize', '2025-10-23', '2025-10-24', 17.19, -88.50);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (105, 9, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (106, 9, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (107, 9, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (108, 9, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (109, 9, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (110, 9, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (111, 9, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (112, 9, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (113, 9, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (114, 9, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (115, 9, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (116, 9, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (117, 9, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (10, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2026-10-27', '2026-10-31', 4, 1, 1174.44);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (45, 10, 'Belize City', 'Visite de Belize City', '2026-10-27', '2026-10-28', 17.25, -88.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (46, 10, 'Roatan', 'Visite de Roatan', '2026-10-28', '2026-10-29', 16.38, -86.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (47, 10, 'San Juan', 'Visite de San Juan', '2026-10-29', '2026-10-30', 18.47, -66.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (48, 10, 'George Town', 'Visite de George Town', '2026-10-30', '2026-10-31', 19.31, -81.25);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (118, 10, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (119, 10, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (120, 10, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (121, 10, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (122, 10, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (123, 10, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (124, 10, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (125, 10, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (126, 10, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (127, 10, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (128, 10, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (129, 10, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (130, 10, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (11, 'AMeRIQUE DU SUD', 'Decouvrez AMeRIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMeRIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2025-06-23', '2025-06-28', 5, 1, 2805.27);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (49, 11, 'Montevideo', 'Visite de Montevideo', '2025-06-23', '2025-06-24', -34.90, -56.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (50, 11, 'Buenos Aires', 'Visite de Buenos Aires', '2025-06-24', '2025-06-25', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (51, 11, 'Santiago', 'Visite de Santiago', '2025-06-25', '2025-06-26', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (52, 11, 'Lima', 'Visite de Lima', '2025-06-26', '2025-06-27', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (53, 11, 'Carthagene', 'Visite de Carthagene', '2025-06-27', '2025-06-28', 10.39, -75.48);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (131, 11, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (132, 11, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (133, 11, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (134, 11, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (135, 11, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (136, 11, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (137, 11, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (138, 11, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (139, 11, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (140, 11, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (141, 11, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (142, 11, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (143, 11, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (12, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2025-11-23', '2025-11-28', 5, 4, 3420.04);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (54, 12, 'Shanghai', 'Visite de Shanghai', '2025-11-23', '2025-11-24', 31.23, 121.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (55, 12, 'Ho Chi Minh', 'Visite d Ho Chi Minh', '2025-11-24', '2025-11-25', 10.82, 106.63);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (56, 12, 'Singapour', 'Depart de Singapour', '2025-11-25', '2025-11-26', 1.35, 103.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (57, 12, 'Tokyo', 'Visite de Tokyo', '2025-11-26', '2025-11-27', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (58, 12, 'Bangkok', 'Visite de Bangkok', '2025-11-27', '2025-11-28', 13.76, 100.50);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (144, 12, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (145, 12, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (146, 12, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (147, 12, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (148, 12, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (149, 12, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (150, 12, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (151, 12, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (152, 12, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (153, 12, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (154, 12, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (155, 12, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (156, 12, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (13, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2026-06-12', '2026-06-16', 4, 9, 2198.50);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (59, 13, 'Mazatlan', 'Visite de Mazatlan', '2026-06-12', '2026-06-13', 23.63, -102.55);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (60, 13, 'Victoria', 'Visite de Victoria', '2026-06-13', '2026-06-14', 48.43, -123.37);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (61, 13, 'Puerto Vallarta', 'Visite de Puerto Vallarta', '2026-06-14', '2026-06-15', 20.65, -105.23);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (62, 13, 'Los Angeles', 'Visite de Los Angeles', '2026-06-15', '2026-06-16', 34.05, -118.24);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (157, 13, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (158, 13, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (159, 13, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (160, 13, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (161, 13, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (162, 13, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (163, 13, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (164, 13, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (165, 13, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (166, 13, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (167, 13, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (168, 13, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (169, 13, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (14, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2026-10-01', '2026-10-07', 6, 4, 2394.17);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (63, 14, 'Copenhague', 'Visite de Copenhague', '2026-10-01', '2026-10-02', 55.68, 12.57);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (64, 14, 'Helsinki', 'Visite d Helsinki', '2026-10-02', '2026-10-03', 60.17, 24.94);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (65, 14, 'Bergen', 'Visite de Bergen', '2026-10-03', '2026-10-04', 60.39, 5.32);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (66, 14, 'Saint-Petersbourg', 'Visite de Saint-Petersbourg', '2026-10-04', '2026-10-05', 59.93, 30.34);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (67, 14, 'Tallinn', 'Visite de Tallinn', '2026-10-05', '2026-10-06', 59.44, 24.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (68, 14, 'Oslo', 'Visite d Oslo', '2026-10-06', '2026-10-07', 59.91, 10.75);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (170, 14, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (171, 14, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (172, 14, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (173, 14, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (174, 14, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (175, 14, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (176, 14, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (177, 14, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (178, 14, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (179, 14, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (180, 14, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (181, 14, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (182, 14, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (15, 'AMeRIQUE DU SUD', 'Decouvrez AMeRIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMeRIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2024-10-03', '2024-10-07', 4, 6, 1163.67);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (69, 15, 'Carthagene', 'Visite de Carthagene', '2024-10-03', '2024-10-04', 10.39, -75.48);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (70, 15, 'Panama', 'Visite de Panama', '2024-10-04', '2024-10-05', 8.98, -79.52);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (71, 15, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2024-10-05', '2024-10-06', -22.91, -43.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (72, 15, 'Montevideo', 'Visite de Montevideo', '2024-10-06', '2024-10-07', -34.90, -56.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (183, 15, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (184, 15, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (185, 15, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (186, 15, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (187, 15, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (188, 15, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (189, 15, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (190, 15, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (191, 15, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (192, 15, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (193, 15, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (194, 15, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (195, 15, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (16, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2025-07-18', '2025-07-21', 3, 1, 2815.40);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (73, 16, 'Vancouver', 'Depart de Vancouver', '2025-07-18', '2025-07-19', 49.28, -123.12);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (74, 16, 'Ensenada', 'Visite d Ensenada', '2025-07-19', '2025-07-20', 31.87, -116.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (75, 16, 'Los Angeles', 'Visite de Los Angeles', '2025-07-20', '2025-07-21', 34.05, -118.24);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (196, 16, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (197, 16, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (198, 16, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (199, 16, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (200, 16, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (201, 16, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (202, 16, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (203, 16, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (204, 16, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (205, 16, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (206, 16, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (207, 16, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (208, 16, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (17, 'AMeRIQUE DU SUD', 'Decouvrez AMeRIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMeRIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2024-10-21', '2024-10-28', 7, 5, 2342.13);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (76, 17, 'Buenos Aires', 'Visite de Buenos Aires', '2024-10-21', '2024-10-22', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (77, 17, 'Panama', 'Visite de Panama', '2024-10-22', '2024-10-23', 8.98, -79.52);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (78, 17, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2024-10-23', '2024-10-24', -22.91, -43.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (79, 17, 'Santiago', 'Visite de Santiago', '2024-10-24', '2024-10-25', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (80, 17, 'Carthagene', 'Visite de Carthagene', '2024-10-25', '2024-10-26', 10.39, -75.48);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (81, 17, 'Lima', 'Visite de Lima', '2024-10-26', '2024-10-27', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (82, 17, 'Montevideo', 'Visite de Montevideo', '2024-10-27', '2024-10-28', -34.90, -56.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (209, 17, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (210, 17, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (211, 17, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (212, 17, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (213, 17, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (214, 17, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (215, 17, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (216, 17, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (217, 17, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (218, 17, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (219, 17, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (220, 17, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (221, 17, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);


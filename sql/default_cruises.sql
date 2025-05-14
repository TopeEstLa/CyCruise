-- UTF-8

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (1, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2025-10-08', '2025-10-13', 5, 1, 3762.76);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (1, 1, 'San Juan', 'Visite de San Juan', '2025-10-08', '2025-10-09', 18.47, -66.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (2, 1, 'George Town', 'Visite de George Town', '2025-10-09', '2025-10-10', 19.31, -81.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (3, 1, 'Labadee', 'Visite de Labadee', '2025-10-10', '2025-10-11', 19.78, -72.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (4, 1, 'Roatan', 'Visite de Roatan', '2025-10-11', '2025-10-12', 16.38, -86.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (5, 1, 'Saint-Thomas', 'Visite de Saint-Thomas', '2025-10-12', '2025-10-13', 18.34, -64.90);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (1, 1, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (2, 1, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (3, 1, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (4, 1, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (5, 1, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (6, 1, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (7, 1, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (8, 1, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (9, 1, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (10, 1, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (11, 1, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (12, 1, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (13, 1, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (14, 1, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (15, 1, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (16, 1, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (2, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2026-10-21', '2026-10-28', 7, 2, 2093.24);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (6, 2, 'Tanger', 'Visite de Tanger', '2026-10-21', '2026-10-22', 35.76, -5.83);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (7, 2, 'Alexandrie', 'Visite d Alexandrie', '2026-10-22', '2026-10-23', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (8, 2, 'Durban', 'Visite de Durban', '2026-10-23', '2026-10-24', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (9, 2, 'Casablanca', 'Visite de Casablanca', '2026-10-24', '2026-10-25', 33.57, -7.59);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (10, 2, 'Le Cap', 'Depart du Cap', '2026-10-25', '2026-10-26', -33.92, 18.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (11, 2, 'Mombasa', 'Visite de Mombasa', '2026-10-26', '2026-10-27', -4.04, 39.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (12, 2, 'Tunis', 'Visite de Tunis', '2026-10-27', '2026-10-28', 36.81, 10.18);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (17, 2, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (18, 2, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (19, 2, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (20, 2, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (21, 2, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (22, 2, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (23, 2, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (24, 2, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (25, 2, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (26, 2, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (27, 2, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (28, 2, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (29, 2, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (30, 2, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (31, 2, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (3, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2027-08-16', '2027-08-20', 4, 6, 1422.95);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (13, 3, 'Oslo', 'Visite d Oslo', '2027-08-16', '2027-08-17', 59.91, 10.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (14, 3, 'Amsterdam', 'Depart d Amsterdam', '2027-08-17', '2027-08-18', 52.37, 4.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (15, 3, 'Helsinki', 'Visite d Helsinki', '2027-08-18', '2027-08-19', 60.17, 24.94);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (16, 3, 'Bergen', 'Visite de Bergen', '2027-08-19', '2027-08-20', 60.39, 5.32);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (32, 3, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (33, 3, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (34, 3, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (35, 3, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (36, 3, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (37, 3, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (38, 3, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (39, 3, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (40, 3, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (41, 3, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (42, 3, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (43, 3, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (44, 3, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (45, 3, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (46, 3, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (47, 3, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (48, 3, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (49, 3, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (50, 3, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (51, 3, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (52, 3, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (4, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2025-06-14', '2025-06-18', 4, 3, 2130.32);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (17, 4, 'Brisbane', 'Visite de Brisbane', '2025-06-14', '2025-06-15', -27.47, 153.03);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (18, 4, 'Auckland', 'Visite d Auckland', '2025-06-15', '2025-06-16', -36.85, 174.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (19, 4, 'Sydney', 'Depart de Sydney', '2025-06-16', '2025-06-17', -33.87, 151.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (20, 4, 'Melbourne', 'Visite de Melbourne', '2025-06-17', '2025-06-18', -37.81, 144.96);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (53, 4, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (54, 4, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (55, 4, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (56, 4, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (57, 4, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (58, 4, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (59, 4, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (60, 4, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (61, 4, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (62, 4, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (63, 4, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (64, 4, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (65, 4, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (66, 4, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (67, 4, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (68, 4, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (69, 4, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (70, 4, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (71, 4, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (72, 4, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (5, 'AMERIQUE DU SUD', 'Decouvrez AMERIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMERIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2026-07-24', '2026-07-31', 7, 6, 3431.70);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (21, 5, 'Santiago', 'Visite de Santiago', '2026-07-24', '2026-07-25', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (22, 5, 'Panama', 'Visite de Panama', '2026-07-25', '2026-07-26', 8.98, -79.52);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (23, 5, 'Quito', 'Visite de Quito', '2026-07-26', '2026-07-27', -0.18, -78.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (24, 5, 'Carthagene', 'Visite de Carthagene', '2026-07-27', '2026-07-28', 10.39, -75.48);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (25, 5, 'Lima', 'Visite de Lima', '2026-07-28', '2026-07-29', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (26, 5, 'Buenos Aires', 'Visite de Buenos Aires', '2026-07-29', '2026-07-30', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (27, 5, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2026-07-30', '2026-07-31', -22.91, -43.17);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (73, 5, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (74, 5, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (75, 5, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (76, 5, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (77, 5, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (78, 5, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (79, 5, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (80, 5, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (81, 5, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (82, 5, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (83, 5, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (84, 5, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (85, 5, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (86, 5, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (87, 5, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (88, 5, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (89, 5, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (6, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2026-08-23', '2026-08-27', 4, 5, 2917.99);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (28, 6, 'Hobart', 'Visite de Hobart', '2026-08-23', '2026-08-24', -42.88, 147.33);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (29, 6, 'Brisbane', 'Visite de Brisbane', '2026-08-24', '2026-08-25', -27.47, 153.03);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (30, 6, 'Sydney', 'Depart de Sydney', '2026-08-25', '2026-08-26', -33.87, 151.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (31, 6, 'Auckland', 'Visite d Auckland', '2026-08-26', '2026-08-27', -36.85, 174.76);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (90, 6, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (91, 6, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (92, 6, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (93, 6, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (94, 6, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (95, 6, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (96, 6, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (97, 6, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (98, 6, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (99, 6, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (100, 6, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (101, 6, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (102, 6, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (103, 6, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (104, 6, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (105, 6, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (106, 6, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (107, 6, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (108, 6, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (109, 6, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (7, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2026-09-23', '2026-09-27', 4, 4, 2288.56);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (32, 7, 'Sydney', 'Depart de Sydney', '2026-09-23', '2026-09-24', -33.87, 151.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (33, 7, 'Brisbane', 'Visite de Brisbane', '2026-09-24', '2026-09-25', -27.47, 153.03);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (34, 7, 'Auckland', 'Visite d Auckland', '2026-09-25', '2026-09-26', -36.85, 174.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (35, 7, 'Melbourne', 'Visite de Melbourne', '2026-09-26', '2026-09-27', -37.81, 144.96);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (110, 7, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (111, 7, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (112, 7, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (113, 7, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (114, 7, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (115, 7, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (116, 7, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (117, 7, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (118, 7, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (119, 7, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (120, 7, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (121, 7, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (122, 7, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (123, 7, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (124, 7, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (125, 7, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (8, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2025-09-21', '2025-09-28', 7, 7, 2781.35);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (36, 8, 'Alexandrie', 'Visite d Alexandrie', '2025-09-21', '2025-09-22', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (37, 8, 'Dakar', 'Visite de Dakar', '2025-09-22', '2025-09-23', 14.72, -17.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (38, 8, 'Durban', 'Visite de Durban', '2025-09-23', '2025-09-24', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (39, 8, 'Casablanca', 'Visite de Casablanca', '2025-09-24', '2025-09-25', 33.57, -7.59);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (40, 8, 'Le Cap', 'Depart du Cap', '2025-09-25', '2025-09-26', -33.92, 18.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (41, 8, 'Port Elizabeth', 'Visite de Port Elizabeth', '2025-09-26', '2025-09-27', -33.96, 25.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (42, 8, 'Tunis', 'Visite de Tunis', '2025-09-27', '2025-09-28', 36.81, 10.18);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (126, 8, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (127, 8, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (128, 8, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (129, 8, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (130, 8, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (131, 8, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (132, 8, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (133, 8, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (134, 8, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (135, 8, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (136, 8, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (137, 8, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (138, 8, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (139, 8, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (140, 8, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (141, 8, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (142, 8, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (143, 8, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (9, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2027-09-18', '2027-09-25', 7, 8, 2023.92);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (43, 9, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2027-09-18', '2027-09-19', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (44, 9, 'Ensenada', 'Visite d Ensenada', '2027-09-19', '2027-09-20', 31.87, -116.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (45, 9, 'Victoria', 'Visite de Victoria', '2027-09-20', '2027-09-21', 48.43, -123.37);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (46, 9, 'San Francisco', 'Visite de San Francisco', '2027-09-21', '2027-09-22', 37.77, -122.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (47, 9, 'San Diego', 'Visite de San Diego', '2027-09-22', '2027-09-23', 32.72, -117.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (48, 9, 'Mazatlan', 'Visite de Mazatlan', '2027-09-23', '2027-09-24', 23.63, -102.55);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (49, 9, 'Acapulco', 'Visite d Acapulco', '2027-09-24', '2027-09-25', 16.85, -99.82);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (144, 9, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (145, 9, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (146, 9, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (147, 9, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (148, 9, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (149, 9, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (150, 9, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (151, 9, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (152, 9, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (153, 9, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (154, 9, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (155, 9, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (156, 9, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (157, 9, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (158, 9, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (159, 9, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (160, 9, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (161, 9, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (162, 9, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (163, 9, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (164, 9, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (165, 9, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (10, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2027-11-13', '2027-11-16', 3, 6, 3806.06);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (50, 10, 'Ho Chi Minh', 'Visite d Ho Chi Minh', '2027-11-13', '2027-11-14', 10.82, 106.63);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (51, 10, 'Tokyo', 'Visite de Tokyo', '2027-11-14', '2027-11-15', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (52, 10, 'Singapour', 'Depart de Singapour', '2027-11-15', '2027-11-16', 1.35, 103.82);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (166, 10, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (167, 10, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (168, 10, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (169, 10, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (170, 10, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (171, 10, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (172, 10, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (173, 10, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (174, 10, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (175, 10, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (176, 10, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (177, 10, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (178, 10, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (179, 10, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (180, 10, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (181, 10, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (182, 10, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (183, 10, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (184, 10, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (185, 10, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (186, 10, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (11, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2026-10-02', '2026-10-09', 7, 4, 1457.76);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (53, 11, 'San Francisco', 'Visite de San Francisco', '2026-10-02', '2026-10-03', 37.77, -122.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (54, 11, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2026-10-03', '2026-10-04', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (55, 11, 'Puerto Vallarta', 'Visite de Puerto Vallarta', '2026-10-04', '2026-10-05', 20.65, -105.23);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (56, 11, 'Ensenada', 'Visite d Ensenada', '2026-10-05', '2026-10-06', 31.87, -116.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (57, 11, 'Acapulco', 'Visite d Acapulco', '2026-10-06', '2026-10-07', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (58, 11, 'Los Angeles', 'Visite de Los Angeles', '2026-10-07', '2026-10-08', 34.05, -118.24);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (59, 11, 'San Diego', 'Visite de San Diego', '2026-10-08', '2026-10-09', 32.72, -117.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (187, 11, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (188, 11, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (189, 11, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (190, 11, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (191, 11, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (192, 11, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (193, 11, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (194, 11, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (195, 11, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (196, 11, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (197, 11, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (198, 11, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (199, 11, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (200, 11, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (201, 11, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (202, 11, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (203, 11, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (204, 11, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (12, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2025-10-26', '2025-10-31', 5, 5, 2840.81);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (60, 12, 'Tokyo', 'Visite de Tokyo', '2025-10-26', '2025-10-27', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (61, 12, 'Singapour', 'Depart de Singapour', '2025-10-27', '2025-10-28', 1.35, 103.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (62, 12, 'Ho Chi Minh', 'Visite d Ho Chi Minh', '2025-10-28', '2025-10-29', 10.82, 106.63);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (63, 12, 'Shanghai', 'Visite de Shanghai', '2025-10-29', '2025-10-30', 31.23, 121.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (64, 12, 'Hong Kong', 'Visite de Hong Kong', '2025-10-30', '2025-10-31', 22.32, 114.17);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (205, 12, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (206, 12, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (207, 12, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (208, 12, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (209, 12, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (210, 12, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (211, 12, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (212, 12, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (213, 12, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (214, 12, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (215, 12, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (216, 12, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (217, 12, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (218, 12, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (219, 12, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (220, 12, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (221, 12, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (222, 12, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (13, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2026-10-22', '2026-10-29', 7, 9, 3597.29);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (65, 13, 'Dakar', 'Visite de Dakar', '2026-10-22', '2026-10-23', 14.72, -17.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (66, 13, 'Alexandrie', 'Visite d Alexandrie', '2026-10-23', '2026-10-24', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (67, 13, 'Durban', 'Visite de Durban', '2026-10-24', '2026-10-25', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (68, 13, 'Maputo', 'Visite de Maputo', '2026-10-25', '2026-10-26', -25.97, 32.58);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (69, 13, 'Tanger', 'Visite de Tanger', '2026-10-26', '2026-10-27', 35.76, -5.83);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (70, 13, 'Port Elizabeth', 'Visite de Port Elizabeth', '2026-10-27', '2026-10-28', -33.96, 25.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (71, 13, 'Le Cap', 'Depart du Cap', '2026-10-28', '2026-10-29', -33.92, 18.42);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (223, 13, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (224, 13, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (225, 13, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (226, 13, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (227, 13, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (228, 13, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (229, 13, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (230, 13, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (231, 13, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (232, 13, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (233, 13, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (234, 13, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (235, 13, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (236, 13, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (237, 13, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (238, 13, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (239, 13, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (240, 13, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (241, 13, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (242, 13, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (243, 13, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (244, 13, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (14, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2026-11-14', '2026-11-18', 4, 2, 2464.60);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (72, 14, 'Tokyo', 'Visite de Tokyo', '2026-11-14', '2026-11-15', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (73, 14, 'Ho Chi Minh', 'Visite d Ho Chi Minh', '2026-11-15', '2026-11-16', 10.82, 106.63);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (74, 14, 'Hong Kong', 'Visite de Hong Kong', '2026-11-16', '2026-11-17', 22.32, 114.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (75, 14, 'Singapour', 'Depart de Singapour', '2026-11-17', '2026-11-18', 1.35, 103.82);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (245, 14, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (246, 14, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (247, 14, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (248, 14, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (249, 14, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (250, 14, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (251, 14, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (252, 14, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (253, 14, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (254, 14, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (255, 14, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (256, 14, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (257, 14, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (258, 14, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (259, 14, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (260, 14, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (261, 14, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (262, 14, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (263, 14, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (264, 14, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (15, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2026-06-23', '2026-06-27', 4, 5, 1850.07);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (76, 15, 'Acapulco', 'Visite d Acapulco', '2026-06-23', '2026-06-24', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (77, 15, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2026-06-24', '2026-06-25', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (78, 15, 'Ensenada', 'Visite d Ensenada', '2026-06-25', '2026-06-26', 31.87, -116.60);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (79, 15, 'San Diego', 'Visite de San Diego', '2026-06-26', '2026-06-27', 32.72, -117.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (265, 15, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (266, 15, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (267, 15, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (268, 15, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (269, 15, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (270, 15, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (271, 15, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (272, 15, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (273, 15, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (274, 15, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (275, 15, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (276, 15, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (277, 15, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (278, 15, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (279, 15, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (280, 15, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (281, 15, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (282, 15, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (283, 15, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (16, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2025-11-08', '2025-11-12', 4, 7, 1011.84);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (80, 16, 'Hong Kong', 'Visite de Hong Kong', '2025-11-08', '2025-11-09', 22.32, 114.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (81, 16, 'Tokyo', 'Visite de Tokyo', '2025-11-09', '2025-11-10', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (82, 16, 'Bangkok', 'Visite de Bangkok', '2025-11-10', '2025-11-11', 13.76, 100.50);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (83, 16, 'Singapour', 'Depart de Singapour', '2025-11-11', '2025-11-12', 1.35, 103.82);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (284, 16, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (285, 16, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (286, 16, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (287, 16, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (288, 16, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (289, 16, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (290, 16, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (291, 16, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (292, 16, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (293, 16, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (294, 16, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (295, 16, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (296, 16, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (297, 16, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (298, 16, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (299, 16, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (300, 16, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (301, 16, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (302, 16, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (303, 16, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (17, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2027-10-01', '2027-10-07', 6, 2, 2181.17);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (84, 17, 'Oslo', 'Depart d Oslo', '2027-10-01', '2027-10-02', 59.91, 10.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (85, 17, 'Bergen', 'Visite de Bergen', '2027-10-02', '2027-10-03', 60.39, 5.32);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (86, 17, 'Geiranger', 'Visite du Geirangerfjord', '2027-10-03', '2027-10-04', 62.10, 7.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (87, 17, 'Stavanger', 'Visite de Stavanger', '2027-10-04', '2027-10-05', 58.97, 5.73);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (88, 17, 'Trondheim', 'Visite de Trondheim', '2027-10-05', '2027-10-06', 63.43, 10.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (89, 17, 'Alesund', 'Visite d Alesund', '2027-10-06', '2027-10-07', 62.47, 6.15);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (304, 17, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (305, 17, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (306, 17, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (307, 17, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (308, 17, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (309, 17, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (310, 17, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (311, 17, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (312, 17, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (313, 17, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (314, 17, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (315, 17, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (316, 17, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (317, 17, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (318, 17, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (319, 17, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (320, 17, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (321, 17, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (322, 17, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (18, 'AMERIQUE DU SUD', 'Decouvrez AMERIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMERIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2025-11-05', '2025-11-08', 3, 1, 3505.27);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (90, 18, 'Belize', 'Visite de Belize', '2025-11-05', '2025-11-06', 17.19, -88.50);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (91, 18, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2025-11-06', '2025-11-07', -22.91, -43.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (92, 18, 'Panama', 'Visite de Panama', '2025-11-07', '2025-11-08', 8.98, -79.52);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (323, 18, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (324, 18, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (325, 18, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (326, 18, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (327, 18, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (328, 18, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (329, 18, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (330, 18, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (331, 18, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (332, 18, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (333, 18, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (334, 18, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (335, 18, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (336, 18, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (337, 18, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (338, 18, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (339, 18, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (340, 18, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (19, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2025-11-07', '2025-11-14', 7, 2, 3693.61);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (93, 19, 'Helsinki', 'Visite d Helsinki', '2025-11-07', '2025-11-08', 60.17, 24.94);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (94, 19, 'Stockholm', 'Visite de Stockholm', '2025-11-08', '2025-11-09', 59.33, 18.07);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (95, 19, 'Tallinn', 'Visite de Tallinn', '2025-11-09', '2025-11-10', 59.44, 24.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (96, 19, 'Bergen', 'Visite de Bergen', '2025-11-10', '2025-11-11', 60.39, 5.32);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (97, 19, 'Saint-Petersbourg', 'Visite de Saint-Petersbourg', '2025-11-11', '2025-11-12', 59.93, 30.34);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (98, 19, 'Oslo', 'Visite d Oslo', '2025-11-12', '2025-11-13', 59.91, 10.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (99, 19, 'Amsterdam', 'Depart d Amsterdam', '2025-11-13', '2025-11-14', 52.37, 4.90);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (341, 19, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (342, 19, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (343, 19, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (344, 19, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (345, 19, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (346, 19, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (347, 19, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (348, 19, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (349, 19, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (350, 19, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (351, 19, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (352, 19, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (353, 19, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (354, 19, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (355, 19, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (356, 19, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (357, 19, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (358, 19, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (359, 19, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (360, 19, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (361, 19, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (20, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2025-06-03', '2025-06-07', 4, 1, 3411.22);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (100, 20, 'Acapulco', 'Visite d Acapulco', '2025-06-03', '2025-06-04', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (101, 20, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2025-06-04', '2025-06-05', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (102, 20, 'San Diego', 'Visite de San Diego', '2025-06-05', '2025-06-06', 32.72, -117.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (103, 20, 'Los Angeles', 'Visite de Los Angeles', '2025-06-06', '2025-06-07', 34.05, -118.24);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (362, 20, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (363, 20, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (364, 20, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (365, 20, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (366, 20, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (367, 20, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (368, 20, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (369, 20, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (370, 20, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (371, 20, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (372, 20, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (373, 20, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (374, 20, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (375, 20, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (376, 20, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (377, 20, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (21, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2026-08-02', '2026-08-06', 4, 2, 3354.09);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (104, 21, 'Stockholm', 'Visite de Stockholm', '2026-08-02', '2026-08-03', 59.33, 18.07);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (105, 21, 'Oslo', 'Visite d Oslo', '2026-08-03', '2026-08-04', 59.91, 10.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (106, 21, 'Copenhague', 'Visite de Copenhague', '2026-08-04', '2026-08-05', 55.68, 12.57);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (107, 21, 'Amsterdam', 'Depart d Amsterdam', '2026-08-05', '2026-08-06', 52.37, 4.90);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (378, 21, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (379, 21, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (380, 21, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (381, 21, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (382, 21, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (383, 21, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (384, 21, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (385, 21, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (386, 21, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (387, 21, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (388, 21, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (389, 21, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (390, 21, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (391, 21, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (392, 21, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (393, 21, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (394, 21, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (395, 21, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (22, 'ASIE', 'Decouvrez ASIE a bord de notre bateau de croisiere', 'Croisiere en ASIE', 'assets/img/cruise-data/asie.png', '2026-09-20', '2026-09-24', 4, 7, 3299.13);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (108, 22, 'Shanghai', 'Visite de Shanghai', '2026-09-20', '2026-09-21', 31.23, 121.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (109, 22, 'Tokyo', 'Visite de Tokyo', '2026-09-21', '2026-09-22', 35.69, 139.69);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (110, 22, 'Singapour', 'Depart de Singapour', '2026-09-22', '2026-09-23', 1.35, 103.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (111, 22, 'Ho Chi Minh', 'Visite d Ho Chi Minh', '2026-09-23', '2026-09-24', 10.82, 106.63);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (396, 22, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (397, 22, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (398, 22, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (399, 22, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (400, 22, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (401, 22, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (402, 22, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (403, 22, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (404, 22, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (405, 22, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (406, 22, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (407, 22, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (408, 22, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (409, 22, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (410, 22, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (411, 22, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (412, 22, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (413, 22, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (23, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2026-10-07', '2026-10-14', 7, 3, 1730.88);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (112, 23, 'Dakar', 'Visite de Dakar', '2026-10-07', '2026-10-08', 14.72, -17.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (113, 23, 'Casablanca', 'Visite de Casablanca', '2026-10-08', '2026-10-09', 33.57, -7.59);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (114, 23, 'Maputo', 'Visite de Maputo', '2026-10-09', '2026-10-10', -25.97, 32.58);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (115, 23, 'Durban', 'Visite de Durban', '2026-10-10', '2026-10-11', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (116, 23, 'Tunis', 'Visite de Tunis', '2026-10-11', '2026-10-12', 36.81, 10.18);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (117, 23, 'Alexandrie', 'Visite d Alexandrie', '2026-10-12', '2026-10-13', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (118, 23, 'Tanger', 'Visite de Tanger', '2026-10-13', '2026-10-14', 35.76, -5.83);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (414, 23, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (415, 23, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (416, 23, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (417, 23, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (418, 23, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (419, 23, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (420, 23, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (421, 23, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (422, 23, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (423, 23, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (424, 23, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (425, 23, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (426, 23, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (427, 23, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (428, 23, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (429, 23, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (430, 23, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (431, 23, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (432, 23, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (433, 23, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (434, 23, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (24, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2025-07-11', '2025-07-16', 5, 4, 1617.79);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (119, 24, 'Alesund', 'Visite d Alesund', '2025-07-11', '2025-07-12', 62.47, 6.15);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (120, 24, 'Stavanger', 'Visite de Stavanger', '2025-07-12', '2025-07-13', 58.97, 5.73);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (121, 24, 'Tromsø', 'Visite de Tromsø', '2025-07-13', '2025-07-14', 69.65, 18.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (122, 24, 'Oslo', 'Depart d Oslo', '2025-07-14', '2025-07-15', 59.91, 10.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (123, 24, 'Trondheim', 'Visite de Trondheim', '2025-07-15', '2025-07-16', 63.43, 10.40);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (435, 24, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (436, 24, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (437, 24, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (438, 24, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (439, 24, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (440, 24, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (441, 24, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (442, 24, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (443, 24, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (444, 24, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (445, 24, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (446, 24, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (447, 24, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (448, 24, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (449, 24, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (450, 24, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (451, 24, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (452, 24, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (453, 24, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (454, 24, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (455, 24, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (25, 'HAWAII', 'Decouvrez HAWAII a bord de notre bateau de croisiere', 'Croisiere en HAWAII', 'assets/img/cruise-data/hawaii.png', '2026-09-15', '2026-09-18', 3, 3, 1670.90);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (124, 25, 'Maui', 'Visite de Maui', '2026-09-15', '2026-09-16', 20.80, -156.33);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (125, 25, 'Kauai', 'Visite de Kauai', '2026-09-16', '2026-09-17', 22.10, -159.53);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (126, 25, 'Lanai', 'Visite de Lanai', '2026-09-17', '2026-09-18', 20.83, -156.92);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (456, 25, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (457, 25, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (458, 25, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (459, 25, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (460, 25, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (461, 25, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (462, 25, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (463, 25, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (464, 25, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (465, 25, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (466, 25, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (467, 25, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (468, 25, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (469, 25, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (470, 25, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (471, 25, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

-- Default highlights

INSERT IGNORE INTO highlighted_cruise (id, cruise_id) VALUES (1, 1);
INSERT IGNORE INTO highlighted_cruise (id, cruise_id) VALUES (2, 2);
INSERT IGNORE INTO highlighted_cruise (id, cruise_id) VALUES (3, 3);
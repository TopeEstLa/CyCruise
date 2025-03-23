-- Script de generation des croisieres
-- Encode en UTF-8

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (1, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2026-10-26', '2026-10-31', 5, 8, 1977.08);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (1, 1, 'Geiranger', 'Visite du Geirangerfjord', '2026-10-26', '2026-10-27', 62.10, 7.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (2, 1, 'Tromsø', 'Visite de Tromsø', '2026-10-27', '2026-10-28', 69.65, 18.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (3, 1, 'Trondheim', 'Visite de Trondheim', '2026-10-28', '2026-10-29', 63.43, 10.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (4, 1, 'Stavanger', 'Visite de Stavanger', '2026-10-29', '2026-10-30', 58.97, 5.73);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (5, 1, 'Bergen', 'Visite de Bergen', '2026-10-30', '2026-10-31', 60.39, 5.32);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (1, 1, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (2, 1, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (3, 1, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (4, 1, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (5, 1, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (6, 1, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (7, 1, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (8, 1, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (9, 1, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (10, 1, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (11, 1, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (12, 1, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (13, 1, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (14, 1, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (15, 1, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (16, 1, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (17, 1, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (2, 'AMERIQUE DU SUD', 'Decouvrez AMERIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMERIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2024-10-28', '2024-11-05', 8, 7, 1670.92);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (6, 2, 'Quito', 'Visite de Quito', '2024-10-28', '2024-10-29', -0.18, -78.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (7, 2, 'Belize', 'Visite de Belize', '2024-10-29', '2024-10-30', 17.19, -88.50);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (8, 2, 'Carthagene', 'Visite de Carthagene', '2024-10-30', '2024-10-31', 10.39, -75.48);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (9, 2, 'Lima', 'Visite de Lima', '2024-10-31', '2024-11-01', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (10, 2, 'Santiago', 'Visite de Santiago', '2024-11-01', '2024-11-02', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (11, 2, 'Montevideo', 'Visite de Montevideo', '2024-11-02', '2024-11-03', -34.90, -56.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (12, 2, 'Buenos Aires', 'Visite de Buenos Aires', '2024-11-03', '2024-11-04', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (13, 2, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2024-11-04', '2024-11-05', -22.91, -43.17);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (18, 2, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (19, 2, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (20, 2, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (21, 2, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (22, 2, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (23, 2, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (24, 2, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (25, 2, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (26, 2, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (27, 2, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (28, 2, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (29, 2, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (30, 2, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (31, 2, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (32, 2, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (33, 2, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (34, 2, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (35, 2, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (36, 2, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (37, 2, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (38, 2, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (39, 2, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (3, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2024-07-11', '2024-07-15', 4, 7, 3084.72);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (14, 3, 'Costa Maya', 'Visite de Costa Maya', '2024-07-11', '2024-07-12', 18.73, -87.72);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (15, 3, 'Labadee', 'Visite de Labadee', '2024-07-12', '2024-07-13', 19.78, -72.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (16, 3, 'Saint-Thomas', 'Visite de Saint-Thomas', '2024-07-13', '2024-07-14', 18.34, -64.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (17, 3, 'Belize City', 'Visite de Belize City', '2024-07-14', '2024-07-15', 17.25, -88.76);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (40, 3, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (41, 3, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (42, 3, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (43, 3, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (44, 3, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (45, 3, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (46, 3, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (47, 3, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (48, 3, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (49, 3, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (50, 3, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (51, 3, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (52, 3, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (53, 3, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (54, 3, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (55, 3, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (56, 3, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (57, 3, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (58, 3, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (59, 3, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (60, 3, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (4, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2025-06-02', '2025-06-06', 4, 2, 3407.43);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (18, 4, 'George Town', 'Visite de George Town', '2025-06-02', '2025-06-03', 19.31, -81.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (19, 4, 'San Juan', 'Visite de San Juan', '2025-06-03', '2025-06-04', 18.47, -66.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (20, 4, 'Saint-Thomas', 'Visite de Saint-Thomas', '2025-06-04', '2025-06-05', 18.34, -64.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (21, 4, 'Costa Maya', 'Visite de Costa Maya', '2025-06-05', '2025-06-06', 18.73, -87.72);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (61, 4, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (62, 4, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (63, 4, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (64, 4, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (65, 4, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (66, 4, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (67, 4, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (68, 4, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (69, 4, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (70, 4, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (71, 4, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (72, 4, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (73, 4, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (74, 4, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (75, 4, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (76, 4, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (77, 4, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (78, 4, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (79, 4, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (80, 4, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (81, 4, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (5, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2026-07-25', '2026-07-28', 3, 2, 3048.75);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (22, 5, 'Melbourne', 'Visite de Melbourne', '2026-07-25', '2026-07-26', -37.81, 144.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (23, 5, 'Auckland', 'Visite d Auckland', '2026-07-26', '2026-07-27', -36.85, 174.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (24, 5, 'Brisbane', 'Visite de Brisbane', '2026-07-27', '2026-07-28', -27.47, 153.03);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (82, 5, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (83, 5, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (84, 5, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (85, 5, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (86, 5, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (87, 5, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (88, 5, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (89, 5, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (90, 5, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (91, 5, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (92, 5, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (93, 5, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (94, 5, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (95, 5, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (96, 5, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (97, 5, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (98, 5, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (99, 5, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (100, 5, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (101, 5, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (102, 5, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (6, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2026-09-08', '2026-09-12', 4, 5, 3819.01);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (25, 6, 'Mombasa', 'Visite de Mombasa', '2026-09-08', '2026-09-09', -4.04, 39.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (26, 6, 'Tunis', 'Visite de Tunis', '2026-09-09', '2026-09-10', 36.81, 10.18);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (27, 6, 'Durban', 'Visite de Durban', '2026-09-10', '2026-09-11', -29.86, 31.02);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (28, 6, 'Port Elizabeth', 'Visite de Port Elizabeth', '2026-09-11', '2026-09-12', -33.96, 25.60);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (103, 6, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (104, 6, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (105, 6, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (106, 6, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (107, 6, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (108, 6, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (109, 6, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (110, 6, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (111, 6, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (112, 6, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (113, 6, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (114, 6, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (115, 6, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (116, 6, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (117, 6, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (118, 6, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (119, 6, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (120, 6, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (121, 6, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (122, 6, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (123, 6, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (7, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2024-08-24', '2024-08-28', 4, 3, 2858.07);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (29, 7, 'Alesund', 'Visite d Alesund', '2024-08-24', '2024-08-25', 62.47, 6.15);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (30, 7, 'Tromsø', 'Visite de Tromsø', '2024-08-25', '2024-08-26', 69.65, 18.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (31, 7, 'Geiranger', 'Visite du Geirangerfjord', '2024-08-26', '2024-08-27', 62.10, 7.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (32, 7, 'Bergen', 'Visite de Bergen', '2024-08-27', '2024-08-28', 60.39, 5.32);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (124, 7, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (125, 7, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (126, 7, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (127, 7, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (128, 7, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (129, 7, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (130, 7, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (131, 7, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (132, 7, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (133, 7, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (134, 7, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (135, 7, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (136, 7, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (137, 7, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (138, 7, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (139, 7, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (8, 'ÎLES GRECQUES', 'Decouvrez ÎLES GRECQUES a bord de notre bateau de croisiere', 'Croisiere en ÎLES GRECQUES', 'assets/img/cruise-data/iles-grecques.png', '2025-06-23', '2025-06-26', 3, 8, 1229.12);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (33, 8, 'Rhodes', 'Visite de Rhodes', '2025-06-23', '2025-06-24', 36.43, 28.22);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (34, 8, 'Mykonos', 'Visite de Mykonos', '2025-06-24', '2025-06-25', 37.45, 25.33);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (35, 8, 'Santorini', 'Visite de Santorini', '2025-06-25', '2025-06-26', 36.39, 25.46);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (140, 8, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (141, 8, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (142, 8, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (143, 8, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (144, 8, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (145, 8, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (146, 8, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (147, 8, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (148, 8, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (149, 8, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (150, 8, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (151, 8, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (152, 8, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (153, 8, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (154, 8, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (155, 8, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (156, 8, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (9, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2025-10-21', '2025-10-26', 5, 7, 2738.56);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (36, 9, 'Los Angeles', 'Visite de Los Angeles', '2025-10-21', '2025-10-22', 34.05, -118.24);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (37, 9, 'Cabo San Lucas', 'Visite de Cabo San Lucas', '2025-10-22', '2025-10-23', 22.89, -109.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (38, 9, 'Mazatlan', 'Visite de Mazatlan', '2025-10-23', '2025-10-24', 23.63, -102.55);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (39, 9, 'San Francisco', 'Visite de San Francisco', '2025-10-24', '2025-10-25', 37.77, -122.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (40, 9, 'Victoria', 'Visite de Victoria', '2025-10-25', '2025-10-26', 48.43, -123.37);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (157, 9, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (158, 9, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (159, 9, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (160, 9, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (161, 9, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (162, 9, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (163, 9, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (164, 9, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (165, 9, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (166, 9, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (167, 9, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (168, 9, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (169, 9, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (170, 9, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (171, 9, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (172, 9, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (173, 9, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (174, 9, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (175, 9, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (176, 9, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (10, 'HAWAII', 'Decouvrez HAWAII a bord de notre bateau de croisiere', 'Croisiere en HAWAII', 'assets/img/cruise-data/hawaii.png', '2025-10-01', '2025-10-04', 3, 6, 3902.76);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (41, 10, 'Kauai', 'Visite de Kauai', '2025-10-01', '2025-10-02', 22.10, -159.53);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (42, 10, 'Hilo', 'Visite de Hilo', '2025-10-02', '2025-10-03', 19.72, -155.09);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (43, 10, 'Molokai', 'Visite de Molokai', '2025-10-03', '2025-10-04', 21.16, -157.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (177, 10, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (178, 10, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (179, 10, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (180, 10, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (181, 10, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (182, 10, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (183, 10, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (184, 10, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (185, 10, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (186, 10, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (187, 10, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (188, 10, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (189, 10, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (190, 10, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (191, 10, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (192, 10, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (11, 'AFRIQUE', 'Decouvrez AFRIQUE a bord de notre bateau de croisiere', 'Croisiere en AFRIQUE', 'assets/img/cruise-data/afrique.png', '2024-06-20', '2024-06-25', 5, 4, 3857.89);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (44, 11, 'Tunis', 'Visite de Tunis', '2024-06-20', '2024-06-21', 36.81, 10.18);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (45, 11, 'Maputo', 'Visite de Maputo', '2024-06-21', '2024-06-22', -25.97, 32.58);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (46, 11, 'Mombasa', 'Visite de Mombasa', '2024-06-22', '2024-06-23', -4.04, 39.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (47, 11, 'Alexandrie', 'Visite d Alexandrie', '2024-06-23', '2024-06-24', 31.20, 29.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (48, 11, 'Tanger', 'Visite de Tanger', '2024-06-24', '2024-06-25', 35.76, -5.83);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (193, 11, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (194, 11, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (195, 11, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (196, 11, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (197, 11, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (198, 11, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (199, 11, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (200, 11, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (201, 11, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (202, 11, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (203, 11, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (204, 11, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (205, 11, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (206, 11, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (207, 11, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (208, 11, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (209, 11, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (210, 11, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (211, 11, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (212, 11, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (213, 11, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (12, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2024-11-25', '2024-11-28', 3, 9, 1986.32);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (49, 12, 'Stockholm', 'Visite de Stockholm', '2024-11-25', '2024-11-26', 59.33, 18.07);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (50, 12, 'Amsterdam', 'Depart d Amsterdam', '2024-11-26', '2024-11-27', 52.37, 4.90);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (51, 12, 'Bergen', 'Visite de Bergen', '2024-11-27', '2024-11-28', 60.39, 5.32);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (214, 12, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (215, 12, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (216, 12, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (217, 12, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (218, 12, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (219, 12, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (220, 12, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (221, 12, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (222, 12, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (223, 12, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (224, 12, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (225, 12, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (226, 12, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (227, 12, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (228, 12, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (229, 12, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (230, 12, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (231, 12, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (232, 12, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (233, 12, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (234, 12, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (13, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2024-09-27', '2024-10-01', 4, 7, 3911.40);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (52, 13, 'Acapulco', 'Visite d Acapulco', '2024-09-27', '2024-09-28', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (53, 13, 'Mazatlan', 'Visite de Mazatlan', '2024-09-28', '2024-09-29', 23.63, -102.55);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (54, 13, 'San Francisco', 'Visite de San Francisco', '2024-09-29', '2024-09-30', 37.77, -122.42);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (55, 13, 'Puerto Vallarta', 'Visite de Puerto Vallarta', '2024-09-30', '2024-10-01', 20.65, -105.23);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (235, 13, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (236, 13, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (237, 13, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (238, 13, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (239, 13, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (240, 13, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (241, 13, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (242, 13, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (243, 13, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (244, 13, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (245, 13, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (246, 13, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (247, 13, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (248, 13, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (249, 13, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (250, 13, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (251, 13, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (252, 13, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (253, 13, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (254, 13, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (255, 13, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (256, 13, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (14, 'HAWAII', 'Decouvrez HAWAII a bord de notre bateau de croisiere', 'Croisiere en HAWAII', 'assets/img/cruise-data/hawaii.png', '2024-08-17', '2024-08-20', 3, 2, 1054.16);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (56, 14, 'Honolulu', 'Depart d Honolulu', '2024-08-17', '2024-08-18', 21.31, -157.86);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (57, 14, 'Kona', 'Visite de Kona', '2024-08-18', '2024-08-19', 19.64, -156.00);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (58, 14, 'Hilo', 'Visite de Hilo', '2024-08-19', '2024-08-20', 19.72, -155.09);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (257, 14, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (258, 14, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (259, 14, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (260, 14, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (261, 14, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (262, 14, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (263, 14, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (264, 14, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (265, 14, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (266, 14, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (267, 14, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (268, 14, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (269, 14, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (270, 14, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (271, 14, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (272, 14, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (273, 14, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (274, 14, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (275, 14, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (276, 14, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (15, 'CÔTE PACIFIQUE', 'Decouvrez CÔTE PACIFIQUE a bord de notre bateau de croisiere', 'Croisiere en CÔTE PACIFIQUE', 'assets/img/cruise-data/cote-pacifique.png', '2026-10-10', '2026-10-15', 5, 5, 1367.01);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (59, 15, 'Acapulco', 'Visite d Acapulco', '2026-10-10', '2026-10-11', 16.85, -99.82);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (60, 15, 'San Diego', 'Visite de San Diego', '2026-10-11', '2026-10-12', 32.72, -117.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (61, 15, 'Los Angeles', 'Visite de Los Angeles', '2026-10-12', '2026-10-13', 34.05, -118.24);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (62, 15, 'Vancouver', 'Depart de Vancouver', '2026-10-13', '2026-10-14', 49.28, -123.12);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (63, 15, 'Victoria', 'Visite de Victoria', '2026-10-14', '2026-10-15', 48.43, -123.37);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (277, 15, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (278, 15, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (279, 15, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (280, 15, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (281, 15, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (282, 15, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (283, 15, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (284, 15, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (285, 15, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (286, 15, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (287, 15, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (288, 15, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (289, 15, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (290, 15, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (291, 15, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (292, 15, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (293, 15, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (294, 15, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (295, 15, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (296, 15, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (297, 15, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (16, 'AUSTRALIE', 'Decouvrez AUSTRALIE a bord de notre bateau de croisiere', 'Croisiere en AUSTRALIE', 'assets/img/cruise-data/australie.png', '2025-08-16', '2025-08-20', 4, 1, 2619.32);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (64, 16, 'Sydney', 'Depart de Sydney', '2025-08-16', '2025-08-17', -33.87, 151.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (65, 16, 'Melbourne', 'Visite de Melbourne', '2025-08-17', '2025-08-18', -37.81, 144.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (66, 16, 'Auckland', 'Visite d Auckland', '2025-08-18', '2025-08-19', -36.85, 174.76);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (67, 16, 'Brisbane', 'Visite de Brisbane', '2025-08-19', '2025-08-20', -27.47, 153.03);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (298, 16, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (299, 16, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (300, 16, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (301, 16, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (302, 16, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (303, 16, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (304, 16, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (305, 16, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (306, 16, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (307, 16, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (308, 16, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (309, 16, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (310, 16, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (311, 16, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (312, 16, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (313, 16, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (314, 16, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (315, 16, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (316, 16, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (317, 16, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (318, 16, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (17, 'EUROPE DU NORD', 'Decouvrez EUROPE DU NORD a bord de notre bateau de croisiere', 'Croisiere en EUROPE DU NORD', 'assets/img/cruise-data/europe-du-nord.png', '2024-09-06', '2024-09-13', 7, 4, 2909.78);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (68, 17, 'Saint-Petersbourg', 'Visite de Saint-Petersbourg', '2024-09-06', '2024-09-07', 59.93, 30.34);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (69, 17, 'Helsinki', 'Visite d Helsinki', '2024-09-07', '2024-09-08', 60.17, 24.94);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (70, 17, 'Bergen', 'Visite de Bergen', '2024-09-08', '2024-09-09', 60.39, 5.32);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (71, 17, 'Stockholm', 'Visite de Stockholm', '2024-09-09', '2024-09-10', 59.33, 18.07);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (72, 17, 'Copenhague', 'Visite de Copenhague', '2024-09-10', '2024-09-11', 55.68, 12.57);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (73, 17, 'Tallinn', 'Visite de Tallinn', '2024-09-11', '2024-09-12', 59.44, 24.75);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (74, 17, 'Amsterdam', 'Depart d Amsterdam', '2024-09-12', '2024-09-13', 52.37, 4.90);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (319, 17, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (320, 17, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (321, 17, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (322, 17, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (323, 17, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (324, 17, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (325, 17, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (326, 17, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (327, 17, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (328, 17, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (329, 17, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (330, 17, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (331, 17, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (332, 17, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (333, 17, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (334, 17, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (335, 17, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (18, 'CARAÏBES', 'Decouvrez CARAÏBES a bord de notre bateau de croisiere', 'Croisiere en CARAÏBES', 'assets/img/cruise-data/caraibes.png', '2024-11-04', '2024-11-12', 8, 7, 2572.34);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (75, 18, 'Ocho Rios', 'Visite de Ocho Rios', '2024-11-04', '2024-11-05', 18.40, -77.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (76, 18, 'San Juan', 'Visite de San Juan', '2024-11-05', '2024-11-06', 18.47, -66.11);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (77, 18, 'Roatan', 'Visite de Roatan', '2024-11-06', '2024-11-07', 16.38, -86.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (78, 18, 'Cozumel', 'Visite de Cozumel', '2024-11-07', '2024-11-08', 20.42, -86.92);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (79, 18, 'Costa Maya', 'Visite de Costa Maya', '2024-11-08', '2024-11-09', 18.73, -87.72);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (80, 18, 'Labadee', 'Visite de Labadee', '2024-11-09', '2024-11-10', 19.78, -72.25);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (81, 18, 'Nassau', 'Visite de Nassau', '2024-11-10', '2024-11-11', 25.03, -77.40);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (82, 18, 'Miami', 'Depart de Miami', '2024-11-11', '2024-11-12', 25.76, -80.19);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (336, 18, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (337, 18, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (338, 18, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (339, 18, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (340, 18, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (341, 18, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (342, 18, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (343, 18, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (344, 18, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (345, 18, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (346, 18, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (347, 18, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (348, 18, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (349, 18, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (350, 18, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (351, 18, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (352, 18, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (353, 18, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (19, 'ÎLES GRECQUES', 'Decouvrez ÎLES GRECQUES a bord de notre bateau de croisiere', 'Croisiere en ÎLES GRECQUES', 'assets/img/cruise-data/iles-grecques.png', '2025-06-04', '2025-06-08', 4, 7, 3525.74);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (83, 19, 'Santorini', 'Visite de Santorini', '2025-06-04', '2025-06-05', 36.39, 25.46);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (84, 19, 'Rhodes', 'Visite de Rhodes', '2025-06-05', '2025-06-06', 36.43, 28.22);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (85, 19, 'Athenes', 'Depart d Athenes', '2025-06-06', '2025-06-07', 37.98, 23.73);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (86, 19, 'Crete', 'Visite de la Crete', '2025-06-07', '2025-06-08', 35.24, 24.81);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (354, 19, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (355, 19, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (356, 19, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (357, 19, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (358, 19, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (359, 19, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (360, 19, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (361, 19, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (362, 19, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (363, 19, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (364, 19, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (365, 19, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (366, 19, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (367, 19, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (368, 19, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (369, 19, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (370, 19, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (20, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2026-10-06', '2026-10-09', 3, 4, 1277.26);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (87, 20, 'Geiranger', 'Visite du Geirangerfjord', '2026-10-06', '2026-10-07', 62.10, 7.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (88, 20, 'Bergen', 'Visite de Bergen', '2026-10-07', '2026-10-08', 60.39, 5.32);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (89, 20, 'Oslo', 'Depart d Oslo', '2026-10-08', '2026-10-09', 59.91, 10.75);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (371, 20, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (372, 20, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (373, 20, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (374, 20, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (375, 20, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (376, 20, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (377, 20, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (378, 20, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (379, 20, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (380, 20, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (381, 20, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (382, 20, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (383, 20, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (384, 20, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (385, 20, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (386, 20, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (387, 20, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (388, 20, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (389, 20, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (390, 20, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (21, 'ÎLES GRECQUES', 'Decouvrez ÎLES GRECQUES a bord de notre bateau de croisiere', 'Croisiere en ÎLES GRECQUES', 'assets/img/cruise-data/iles-grecques.png', '2024-11-01', '2024-11-04', 3, 1, 1973.57);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (90, 21, 'Santorini', 'Visite de Santorini', '2024-11-01', '2024-11-02', 36.39, 25.46);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (91, 21, 'Rhodes', 'Visite de Rhodes', '2024-11-02', '2024-11-03', 36.43, 28.22);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (92, 21, 'Crete', 'Visite de la Crete', '2024-11-03', '2024-11-04', 35.24, 24.81);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (391, 21, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (392, 21, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (393, 21, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (394, 21, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (395, 21, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (396, 21, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (397, 21, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (398, 21, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (399, 21, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (400, 21, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (401, 21, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (402, 21, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (403, 21, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (404, 21, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (405, 21, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (406, 21, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (407, 21, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (408, 21, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (409, 21, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (410, 21, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (411, 21, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (22, 'FJORDS NORVEGIENS', 'Decouvrez FJORDS NORVEGIENS a bord de notre bateau de croisiere', 'Croisiere en FJORDS NORVEGIENS', 'assets/img/cruise-data/fjords-norvegiens.png', '2024-11-13', '2024-11-17', 4, 3, 2456.82);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (93, 22, 'Geiranger', 'Visite du Geirangerfjord', '2024-11-13', '2024-11-14', 62.10, 7.21);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (94, 22, 'Alesund', 'Visite d Alesund', '2024-11-14', '2024-11-15', 62.47, 6.15);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (95, 22, 'Tromsø', 'Visite de Tromsø', '2024-11-15', '2024-11-16', 69.65, 18.96);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (96, 22, 'Trondheim', 'Visite de Trondheim', '2024-11-16', '2024-11-17', 63.43, 10.40);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (412, 22, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (413, 22, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (414, 22, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (415, 22, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (416, 22, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (417, 22, 'BOISSONS', 'Boissons alcoolisees', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (418, 22, 'BOISSONS', 'Boissons non alcoolisees', 0.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (419, 22, 'BOISSONS', 'Boissons chaudes', 10.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (420, 22, 'BOISSONS', 'Aucun (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (421, 22, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (422, 22, 'DIVERTISSEMENT', 'Tournois de cricket', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (423, 22, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (424, 22, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (425, 22, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (426, 22, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (427, 22, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (428, 22, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (429, 22, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (430, 22, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (431, 22, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (432, 22, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (23, 'HAWAII', 'Decouvrez HAWAII a bord de notre bateau de croisiere', 'Croisiere en HAWAII', 'assets/img/cruise-data/hawaii.png', '2024-06-06', '2024-06-11', 5, 5, 2209.34);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (97, 23, 'Hilo', 'Visite de Hilo', '2024-06-06', '2024-06-07', 19.72, -155.09);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (98, 23, 'Kauai', 'Visite de Kauai', '2024-06-07', '2024-06-08', 22.10, -159.53);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (99, 23, 'Honolulu', 'Depart d Honolulu', '2024-06-08', '2024-06-09', 21.31, -157.86);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (100, 23, 'Molokai', 'Visite de Molokai', '2024-06-09', '2024-06-10', 21.16, -157.16);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (101, 23, 'Kona', 'Visite de Kona', '2024-06-10', '2024-06-11', 19.64, -156.00);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (433, 23, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (434, 23, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (435, 23, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (436, 23, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (437, 23, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (438, 23, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (439, 23, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (440, 23, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (441, 23, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (442, 23, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (443, 23, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (444, 23, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (445, 23, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (446, 23, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (447, 23, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (24, 'HAWAII', 'Decouvrez HAWAII a bord de notre bateau de croisiere', 'Croisiere en HAWAII', 'assets/img/cruise-data/hawaii.png', '2025-11-16', '2025-11-19', 3, 7, 3056.80);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (102, 24, 'Honolulu', 'Depart d Honolulu', '2025-11-16', '2025-11-17', 21.31, -157.86);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (103, 24, 'Kauai', 'Visite de Kauai', '2025-11-17', '2025-11-18', 22.10, -159.53);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (104, 24, 'Kona', 'Visite de Kona', '2025-11-18', '2025-11-19', 19.64, -156.00);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (448, 24, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (449, 24, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (450, 24, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (451, 24, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (452, 24, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (453, 24, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (454, 24, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (455, 24, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (456, 24, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (457, 24, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (458, 24, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (459, 24, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (460, 24, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (461, 24, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (462, 24, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (463, 24, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);

INSERT IGNORE INTO cruise (id, name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (25, 'AMERIQUE DU SUD', 'Decouvrez AMERIQUE DU SUD a bord de notre bateau de croisiere', 'Croisiere en AMERIQUE DU SUD', 'assets/img/cruise-data/amerique-du-sud.png', '2026-08-15', '2026-08-23', 8, 9, 2906.59);

INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (105, 25, 'Rio de Janeiro', 'Depart de Rio de Janeiro', '2026-08-15', '2026-08-16', -22.91, -43.17);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (106, 25, 'Quito', 'Visite de Quito', '2026-08-16', '2026-08-17', -0.18, -78.47);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (107, 25, 'Belize', 'Visite de Belize', '2026-08-17', '2026-08-18', 17.19, -88.50);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (108, 25, 'Santiago', 'Visite de Santiago', '2026-08-18', '2026-08-19', -33.45, -70.67);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (109, 25, 'Buenos Aires', 'Visite de Buenos Aires', '2026-08-19', '2026-08-20', -34.60, -58.38);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (110, 25, 'Carthagene', 'Visite de Carthagene', '2026-08-20', '2026-08-21', 10.39, -75.48);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (111, 25, 'Lima', 'Visite de Lima', '2026-08-21', '2026-08-22', -12.05, -77.04);
INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (112, 25, 'Montevideo', 'Visite de Montevideo', '2026-08-22', '2026-08-23', -34.90, -56.16);

INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (464, 25, 'REPAS', 'Tout inclus', 150.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (465, 25, 'REPAS', 'Petit-dejeuner', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (466, 25, 'REPAS', 'Dejeuner', 75.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (467, 25, 'REPAS', 'Dîner', 100.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (468, 25, 'REPAS', 'Dejeuner & Dîner (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (469, 25, 'DIVERTISSEMENT', 'Spectacles', 25.00, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (470, 25, 'DIVERTISSEMENT', 'Cours de cuisine', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (471, 25, 'DIVERTISSEMENT', 'Spectacle de patinage', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (472, 25, 'DIVERTISSEMENT', 'Tournois de golf', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (473, 25, 'DIVERTISSEMENT', 'Aucun divertissement (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (474, 25, 'EXCURSION', 'Visite guides', 50.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (475, 25, 'EXCURSION', 'Visite guides et activite sur place', 200.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (476, 25, 'EXCURSION', 'Tout (Visites guidees, activites, restaurant specialise)', 500.50, 0, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (477, 25, 'EXCURSION', 'Aucune visite (inclut)', 0.00, 1, 1);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (478, 25, 'CABINE', 'Interieure (inclut)', 0.00, 1, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (479, 25, 'CABINE', 'Suite', 500.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (480, 25, 'CABINE', 'Suite Balcon', 900.00, 0, 0);
INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default, per_passenger) VALUES (481, 25, 'CABINE', 'Suite avec vue sur l ocean', 1000.00, 0, 0);


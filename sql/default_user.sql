-- UTF-8

INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES
       ("test.admin@localhost", "$2y$10$b5ysiwTUv3Vyhf32m1QEq.2sHlUDa/MQ.O76.SfxjChok0LDsCyc6",
       "ADMIN", "admin", "admin", "2000-01-01");


INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES
       ("test1.admin@localhost", "$2y$10$b5ysiwTUv3Vyhf32m1QEq.2sHlUDa/MQ.O76.SfxjChok0LDsCyc6",
       "ADMIN", "admin", "admin", "2000-01-01");


INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES
       ("test.user@localhost", "$2y$10$b5ysiwTUv3Vyhf32m1QEq.2sHlUDa/MQ.O76.SfxjChok0LDsCyc6",
       "DEFAULT", "user", "user", "2000-01-01");


INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES
       ("test.vip@localhost", "$2y$10$b5ysiwTUv3Vyhf32m1QEq.2sHlUDa/MQ.O76.SfxjChok0LDsCyc6",
       "VIP", "user", "user", "2000-01-01");


INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES
       ("test.premium@localhost", "$2y$10$b5ysiwTUv3Vyhf32m1QEq.2sHlUDa/MQ.O76.SfxjChok0LDsCyc6",
       "PREMIUM", "user", "user", "2000-01-01");


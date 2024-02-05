
CREATE DATABASE IF NOT EXISTS clusterpao5 /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE clusterpao5;

-- Volcando estructura para tabla clusterpao5.users
CREATE TABLE IF NOT EXISTS users (
  id bigint unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre del Usuario',
  address varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Direccion del Usuario',
  birthdate date DEFAULT NULL COMMENT 'Fecha de Nacimiento',
  email varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Correo del Usuario',
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Contrasena',
  remember_token varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY users_email_unique (email)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla clusterpao5.users: ~0 rows (aproximadamente)
REPLACE INTO users (id, name, address, birthdate, email, email_verified_at, password, remember_token, created_at, updated_at) VALUES
	(1, 'Raina Luettgen', NULL, NULL, 'nader.drake@example.com', '2024-02-01 08:45:25', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'LYTXAqb9e4', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(2, 'Travon Ernser', NULL, NULL, 'dark_biela@hotmail.com', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'mxqVBd5HnW', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(3, 'Kacey Dicki', NULL, NULL, 'maude.zboncak@example.net', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', '2rgKsIzeBn', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(4, 'Mr. Augustus Stokes I', NULL, NULL, 'mossie.dibbert@example.org', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'GCN41nhJ7S', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(5, 'Dr. Hazle Cummerata II', NULL, NULL, 'jessyca.crona@example.net', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'BhzDgrnOxK', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(6, 'Alex Fay', NULL, NULL, 'dkulas@example.com', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'Ul6WOIR4Bw', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(7, 'Georgiana Kutch Sr.', NULL, NULL, 'vlang@example.org', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'OXPGxOl7kR', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(8, 'Alejandra Kling', NULL, NULL, 'zwyman@example.org', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'R3zgkcUymo', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(9, 'Noble Tillman', NULL, NULL, 'qspencer@example.org', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', 'JcayZlQs7o', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(10, 'Ava Kihn', NULL, NULL, 'legros.darrin@example.com', '2024-02-01 08:45:26', '$2y$12$OJv3IQgIneY6hFUDR.ikie6IocJroMj8xT.DygYfVYueEUm3h51gS', '62LfX9sT6V', '2024-02-01 08:45:26', '2024-02-01 08:45:26'),
	(11, 'Dolores Corkery', NULL, '1975-02-20', 'user01@example.com', '2024-02-01 09:39:40', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'f7bRsHlslj', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(12, 'Ms. Krystel Cormier', NULL, '1980-08-10', 'user02@example.com', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'xogWazL537', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(13, 'Billie Hauck', NULL, '1976-09-27', 'user03@example.com', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'pzht1IvOge', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(14, 'Okey Mann', NULL, '2005-06-21', 'kunde.braulio@example.net', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'cxVpgNahuF', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(15, 'Prof. Norval Fay MD', NULL, '1974-08-17', 'rosella43@example.net', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'ybLdAw3ikz', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(16, 'Kennedy Monahan', NULL, '2002-05-09', 'lindgren.bernie@example.net', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'TI5iCKzn3s', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(17, 'Delbert Shields', NULL, '1974-02-05', 'rosalee.rath@example.net', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'umgGOqBSXN', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(18, 'Treva Fisher', NULL, '2004-03-05', 'lewis.kozey@example.com', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'SvUULmjTyD', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(19, 'Prof. Ernesto Anderson PhD', NULL, '1970-09-21', 'qchristiansen@example.org', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'uX936bSfOx', '2024-02-01 09:39:41', '2024-02-01 09:39:41'),
	(20, 'Valentine Ward', NULL, '1982-05-24', 'quigley.darren@example.net', '2024-02-01 09:39:41', '$2y$12$gpw1DW4doGMsKMafAoYIue304BfKY0BCkT7MUJXaBYEhF8SINSkRC', 'zjwHyHePUn', '2024-02-01 09:39:41', '2024-02-01 09:39:41');


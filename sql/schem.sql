-- UTF-8

CREATE TABLE IF NOT EXISTS `users`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `role` VARCHAR(255) NOT NULL,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `birth` DATE NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);


CREATE TABLE IF NOT EXISTS `boats`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `type` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) UNIQUE NOT NULL,
    `img` VARCHAR(255) NOT NULL,
    `descriptions` LONGTEXT NOT NULL,
    `capacity` BIGINT,
    `length` BIGINT);

-- Cruise table
CREATE TABLE IF NOT EXISTS `cruise`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `short_descriptions` VARCHAR(255) NOT NULL,
    `img` LONGTEXT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `duration` INT NOT NULL,
    `boat_id` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    CONSTRAINT `cruise_boat_foreign`
    FOREIGN KEY (`boat_id`) REFERENCES `boats`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS `cruise_stage`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cruise_id` BIGINT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `latitude` DECIMAL(8, 2) NOT NULL,
    `longitude` DECIMAL(8, 2) NOT NULL,
    CONSTRAINT `cruise_stage_cruise_id_foreign`
    FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS `cruise_option`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cruise_id` BIGINT NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `is_default` BOOLEAN NOT NULL,
    `per_passenger` BOOLEAN NOT NULL DEFAULT FALSE,
    CONSTRAINT `cruise_option_cruise_id_foreign`
    FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);


CREATE TABLE IF NOT EXISTS `highlighted_cruise`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `cruise_id` BIGINT NOT NULL,
    CONSTRAINT `highlighted_cruise_cruise_id_foreign`
    FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);

-- Invoice table
CREATE TABLE IF NOT EXISTS `invoices`(
    `id` CHAR(24) PRIMARY KEY DEFAULT (SUBSTRING(REPLACE(UUID(), '-', ''), 1, 24)),
    `user_id` BIGINT NOT NULL,
    `cruise_id` BIGINT NOT NULL,
    `total_prices` FLOAT(53) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT `invoices_user_id_foreign`
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `invoices_cruise_id_foreign`
    FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`) ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS `invoices_option`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_id` CHAR(36) NOT NULL,
    `option_id` BIGINT NOT NULL,
    CONSTRAINT `invoice_option_invoice_id_foreign`
    FOREIGN KEY (`invoice_id`) REFERENCES `invoices`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `invoice_option_option_id_foreign`
    FOREIGN KEY (`option_id`) REFERENCES `cruise_option`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS `invoices_passenger`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `invoice_id` CHAR(36) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    CONSTRAINT `invoice_passenger_invoice_id_foreign`
    FOREIGN KEY (`invoice_id`) REFERENCES `invoices`(`id`)
    ON DELETE CASCADE ON UPDATE CASCADE);

-- Other tables
CREATE TABLE IF NOT EXISTS `contact_request`(
    `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `firstname` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL,
    `subject` VARCHAR(255) NOT NULL,
    `content` LONGTEXT NOT NULL);
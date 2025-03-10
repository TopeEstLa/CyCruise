<?php

require_once __DIR__ . "/../Models/Database.php";
require_once __DIR__ . "/../Models/CruiseOption.php";


class CruiseOptionRepository
{

    private static ?CruiseOptionRepository $instance = null;
    private Database $database;

    public function __construct()
    {
        $this->database = Database::getInstance();

        try {
            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `cruise_option`(
                            `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `cruise_id` BIGINT NOT NULL,
                            `type` VARCHAR(255) NOT NULL,
                            `name` VARCHAR(255) NOT NULL,
                            `price` FLOAT(53) NOT NULL,
                            `is_default` BOOLEAN NOT NULL,
                            CONSTRAINT `cruise_option_cruise_id_foreign` 
                            FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`) 
                            ON DELETE CASCADE ON UPDATE CASCADE);")
                ->execute();

            $this->insertDefaultValue();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance(): CruiseOptionRepository
    {
        if (self::$instance === null) {
            self::$instance = new CruiseOptionRepository();
        }
        return self::$instance;
    }

    public function insertDefaultValue(): void
    {
        $this->insertForce(1, 1, "MEAL", "All inclusive", 150.50, true);
        $this->insertForce(2, 1, "MEAL", "Breakfast", 50.50, false);
        $this->insertForce(3, 1, "MEAL", "Lunch", 75.50, false);
        $this->insertForce(4, 1, "MEAL", "Dinner", 100.50, false);
        $this->insertForce(5, 1, "EXCURSION", "Barcelone", 50.50, true);
        $this->insertForce(6, 1, "EXCURSION", "Marseille", 75.50, false);
        $this->insertForce(7, 1, "EXCURSION", "Gênes", 100.50, false);
        $this->insertForce(8, 1, "EXCURSION", "Toute", 300.00, false);
        $this->insertForce(9, 1, "CABIN", "Suite", 500.00, true);
        $this->insertForce(10, 1, "CABIN", "Balcony", 300.00, false);
        $this->insertForce(11, 1, "CABIN", "Ocean View", 200.00, false);
        $this->insertForce(12, 1, "CABIN", "Interior", 100.00, false);
    }


    public function insertForce(int $id, int $cruise_id, string $type, string $name, float $price, bool $default): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT IGNORE INTO cruise_option (id, cruise_id, type, name, price, is_default) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("iisssi", $id, $cruise_id, $type, $name, $price, $default);
            return $stmt->execute();
        } catch (Exception $e) {
            die("Error while inserting cruise option: " . $e->getMessage());
        }
    }


    public function selectAllByCruiseId(int $cruise_id): array
    {
        $cruiseOption = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise_option WHERE cruise_id = ?");

            $stmt->bind_param("i", $cruise_id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    $cruiseOption[] = new CruiseOption($row['id'], $row['type'], $row['name'], $row['price'], $row['is_default']);
                }
            }
        } catch (Exception $e) {
        }


        return $cruiseOption;
    }



}
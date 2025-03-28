<?php

require_once __DIR__ . "/../Models/CruiseStage.php";
require_once __DIR__ . "/../Models/Database.php";

class CruiseStageRepository
{
    private static ?CruiseStageRepository $instance = null;
    private Database $database;

    private function __construct()
    {
        $this->database = Database::getInstance();

        try {
            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `cruise_stage`(
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
                            ON DELETE CASCADE ON UPDATE CASCADE);")
                ->execute();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }


    public static function getInstance(): CruiseStageRepository
    {
        if (self::$instance === null) {
            self::$instance = new CruiseStageRepository();
        }
        return self::$instance;
    }

    public function insert(int $cruise_id, string $name, string $description, string $start_date, string $end_date, float $latitude, float $longitude): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO cruise_stage (cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("issssdd", $cruise_id, $name, $description, $start_date, $end_date, $latitude, $longitude);

            return $stmt->execute();
        } catch (Exception $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function selectAllByCruiseId(int $id): array
    {
        $stageListe = [];
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise_stage WHERE cruise_id = ?");
            $stmt->bind_param("i", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    $stageListe[] = new CruiseStage($row['id'], $row['name'], $row['description'], $row['start_date'], $row['end_date'], $row['latitude'], $row['longitude']);
                }
            }
        } catch (Exception $e) {
        }

        return $stageListe;
    }

}
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

            $this->insertDefaultValue();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public function insertDefaultValue(): void
    {
        $this->insertForce(1, 1, "Barcelone", "Visite de Barcelone", "2025-06-01", "2025-06-02", 41.3851, 2.1734);
        $this->insertForce(2, 1, "Marseille", "Visite de Marseille", "2025-06-03", "2025-06-04", 43.2965, 5.3698);
        $this->insertForce(3, 1, "Gênes", "Visite de Gênes", "2025-06-05", "2025-06-06", 44.4056, 8.9463);
        $this->insertForce(4, 1, "Rome", "Visite de Rome", "2025-06-07", "2025-06-08", 41.9028, 12.4964);
        $this->insertForce(5, 1, "Naples", "Visite de Naples", "2025-06-09", "2025-06-10", 40.8518, 14.2681);
        $this->insertForce(6, 1, "Palermo", "Visite de Palermo", "2025-06-11", "2025-06-12", 38.1157, 13.3615);
        $this->insertForce(7, 1, "Tunis", "Visite de Tunis", "2025-06-13", "2025-06-14", 36.8065, 10.1815);
    }

    public static function getInstance(): CruiseStageRepository
    {
        if (self::$instance === null) {
            self::$instance = new CruiseStageRepository();
        }
        return self::$instance;
    }

    public function insertForce(int $id, int $cruise_id, string $name, string $description, string $start_date, string $end_date, float $latitude, float $longitude): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT IGNORE INTO cruise_stage (id, cruise_id, name, description, start_date, end_date, latitude, longitude) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("iissssdd", $id, $cruise_id, $name, $description, $start_date, $end_date, $latitude, $longitude);
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
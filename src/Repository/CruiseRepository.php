<?php

require_once __DIR__ . "/../Models/Database.php";
require_once __DIR__ . "/../Models/Cruise.php";
require_once "BoatRepository.php";
require_once "CruiseStageRepository.php";
require_once "CruiseOptionRepository.php";

class CruiseRepository
{

    private static ?CruiseRepository $instance = null;
    private Database $database;
    private BoatRepository $boatRepository;
    private CruiseStageRepository $cruiseStageRepository;
    private CruiseOptionRepository $cruiseOptionRepository;

    private function __construct()
    {
        $this->database = Database::getInstance();
        $this->boatRepository = BoatRepository::getInstance();

        try {
            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `cruise`(
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
                                ON DELETE CASCADE ON UPDATE CASCADE);")
                ->execute();

        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }

        $this->cruiseStageRepository = CruiseStageRepository::getInstance();
        $this->cruiseOptionRepository = CruiseOptionRepository::getInstance();


        if (!$this->insertDefaultValue()) {
           // die("Error while inserting default values");
        }
    }

    public static function getInstance(): CruiseRepository
    {
        if (self::$instance === null) {
            self::$instance = new CruiseRepository();
        }
        return self::$instance;
    }

    public function insertDefaultValue(): bool
    {
        if (!$this->database->executeSqlFile("../cruises_sql.sql")) {
            if (!$this->database->executeSqlFile("../../cruises_sql.sql")) {
                return false;
            }
        }

        return true;
    }


    public function insert(string $name, string $descriptions, string $short_descriptions, string $img,
                           string $start_date, string $end_date, int $duration,
                           Boat   $boat, float $price): int
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO cruise (name, description, short_descriptions, img, start_date, end_date, duration, boat_id, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $boat_id = $boat->getId();
            $stmt->bind_param("ssssssiid", $name, $descriptions, $short_descriptions, $img, $start_date, $end_date, $duration, $boat_id, $price);

            if ($stmt->execute()) {
                return $this->database->getConnection()->insert_id;
            } else {
                return -1;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    public function delete(int $id): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("DELETE FROM cruise WHERE id = ?");
            $stmt->bind_param("i", $id);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function findById(int $id): ?Cruise
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result = $stmt->get_result();
            $data = $result->fetch_assoc();
            return new Cruise(
                $data['id'],
                $data['name'],
                $data['description'],
                $data['short_descriptions'],
                $data['img'],
                $data['start_date'],
                $data['end_date'],
                $data['duration'],
                $this->boatRepository->selectById($data['boat_id']),
                $this->cruiseStageRepository->selectAllByCruiseId($data['id']),
                $this->cruiseOptionRepository->selectAllByCruiseId($data['id']),
                $data['price']
            );
        } catch (Exception $e) {
            return null;
        }
    }

    public function findAll(): array
    {
        $cruiseList = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise");
            $stmt->execute();
            $result = $stmt->get_result();
            while ($data = $result->fetch_assoc()) {
                $cruiseList[] = new Cruise(
                    $data['id'],
                    $data['name'],
                    $data['description'],
                    $data['short_descriptions'],
                    $data['img'],
                    $data['start_date'],
                    $data['end_date'],
                    $data['duration'],
                    $this->boatRepository->selectById($data['boat_id']),
                    $this->cruiseStageRepository->selectAllByCruiseId($data['id']),
                    $this->cruiseOptionRepository->selectAllByCruiseId($data['id']),
                    $data['price']
                );
            }
        } catch (Exception $e) {
        }

        return $cruiseList;
    }

    public function findAllByNameContainAndBoatIdAndStartDate(string $name, int $boatId, string $startDate): array
    {
        $cruiseList = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise WHERE boat_id = ? AND start_date >= ?");
            $name = "%$name%";
            $stmt->bind_param("is", $boatId, $startDate);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($data = $result->fetch_assoc()) {
                $cruiseList[] = new Cruise(
                    $data['id'],
                    $data['name'],
                    $data['description'],
                    $data['short_descriptions'],
                    $data['img'],
                    $data['start_date'],
                    $data['end_date'],
                    $data['duration'],
                    $this->boatRepository->selectById($data['boat_id']),
                    $this->cruiseStageRepository->selectAllByCruiseId($data['id']),
                    $this->cruiseOptionRepository->selectAllByCruiseId($data['id']),
                    $data['price']
                );
            }
        } catch (Exception $e) {
        }

        return $cruiseList;
    }

    public function findAllByNameContainAndStartDate(string $name, string $startDate): array
    {
        $cruiseList = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise WHERE start_date >= ?");
            $name = "%$name%";
            $stmt->bind_param("s", $startDate);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($data = $result->fetch_assoc()) {
                $cruiseList[] = new Cruise(
                    $data['id'],
                    $data['name'],
                    $data['description'],
                    $data['short_descriptions'],
                    $data['img'],
                    $data['start_date'],
                    $data['end_date'],
                    $data['duration'],
                    $this->boatRepository->selectById($data['boat_id']),
                    $this->cruiseStageRepository->selectAllByCruiseId($data['id']),
                    $this->cruiseOptionRepository->selectAllByCruiseId($data['id']),
                    $data['price']
                );
            }
        } catch (Exception $e) {
        }

        return $cruiseList;
    }

}
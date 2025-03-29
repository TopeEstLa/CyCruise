<?php
require_once "CruiseRepository.php";


class HighlightedCruiseRepository
{
    private static ?HighlightedCruiseRepository $instance = null;
    private Database $database;

    private CruiseRepository $cruiseRepository;

    public function __construct()
    {
        try {
            $this->database = Database::getInstance();

            $this->cruiseRepository = CruiseRepository::getInstance();


            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `highlighted_cruise`(
                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `cruise_id` BIGINT NOT NULL,
                            CONSTRAINT `highlighted_cruise_cruise_id_foreign` 
                            FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`) 
                            ON DELETE CASCADE ON UPDATE CASCADE);")
                ->execute();

            $this->insertForce(1, 1);
            $this->insertForce(2, 2);
            $this->insertForce(3, 3);
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance(): HighlightedCruiseRepository
    {
        if (self::$instance === null) {
            self::$instance = new HighlightedCruiseRepository();
        }
        return self::$instance;
    }

    public function insertForce(int $id, int $cruiseId): bool
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("INSERT IGNORE INTO highlighted_cruise (id, cruise_id) VALUES (?, ?)");

            $stmt->bind_param("ii", $id, $cruiseId);

            if ($stmt->execute()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    public function insert(int $cruiseId): bool
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("INSERT INTO highlighted_cruise (cruise_id) VALUES (?)");

            $stmt->bind_param("i", $cruiseId);

            if ($stmt->execute()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    public function delete(int $id): bool
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("DELETE FROM highlighted_cruise WHERE id = ?");

            $stmt->bind_param("i", $id);

            if ($stmt->execute()) {
                return true;
            } else {
                return false;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    public function findAll(): array
    {
        $cruises = [];

        try {
            $stmt = $this->database->getConnection()
                ->prepare("SELECT cruise_id FROM highlighted_cruise");

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                if ($result->num_rows === 0) {
                    return $cruises;
                }

                while ($row = $result->fetch_assoc()) {
                    $cruiseId = $row['cruise_id'];
                    $cruise = $this->cruiseRepository->findById($cruiseId);
                    if ($cruise) {
                        $cruises[] = $cruise;
                    }
                }
            }


        } catch (Exception $e) {
        }

        return $cruises;
    }


}
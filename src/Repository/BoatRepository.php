<?php

require_once __DIR__ . "/../Models/Boat.php";
require_once __DIR__ . "/../Models/Database.php";

class BoatRepository
{

    private static ?BoatRepository $instance = null;
    private Database $database;

    private function __construct()
    {
        $this->database = Database::getInstance();

        try {
            $this->database->getConnection()->prepare("CREATE TABLE IF NOT EXISTS `boats`(
                                                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                            `type` VARCHAR(255) NOT NULL,
                                                            `name` VARCHAR(255) UNIQUE NOT NULL,
                                                            `img` VARCHAR(255) NOT NULL,
                                                            `descriptions` LONGTEXT NOT NULL,
                                                            `capacity` BIGINT,
                                                            `length` BIGINT);")
                ->execute();


            $this->insertForce("Cy Armonia", BoatType::DEFAULT->toString(), "assets/img/fleet/armonia_minuature.png", "Cy Armonia is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Bellissima", BoatType::DEFAULT->toString(), "assets/img/fleet/bellissima_miniature.png", "Cy Bellissima is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Divina", BoatType::DEFAULT->toString(), "assets/img/fleet/di_miniature.png", "Cy Divina is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Euribia", BoatType::DEFAULT->toString(), "assets/img/fleet/er_miniature.png", "Cy Euribia is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Fantasia", BoatType::DEFAULT->toString(), "assets/img/fleet/fa_miniature.png", "Cy Fantasia is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Grandiosa", BoatType::DEFAULT->toString(), "assets/img/fleet/gr_miniature.png", "Cy Grandiosa is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Preziosa", BoatType::DEFAULT->toString(), "assets/img/fleet/pr_miniature.png", "Cy Preziosa is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Seascape", BoatType::DEFAULT->toString(), "assets/img/fleet/sh_miniature.png", "Cy Seascape is a beautiful boat.", 1000, 300);
            $this->insertForce("Cy Orchestra", BoatType::DEFAULT->toString(), "assets/img/fleet/or_miniature.png", "Cy Orchestra is a beautiful boat.", 1000, 300);

            $this->insertForce("Armonia", BoatType::EXPLORA->toString(), "assets/img/fleet/explora-i-cruise-ship.png", "Armonia is a beautiful boat.", 1000, 300);
            $this->insertForce("Bellissima", BoatType::EXPLORA->toString(), "assets/img/fleet/explora-ii-cruise-ship.png", "Armonia is a beautiful boat.", 1000, 300);
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance(): BoatRepository
    {
        if (self::$instance === null) {
            self::$instance = new BoatRepository();
        }
        return self::$instance;
    }

    public function insertForce(string $name, string $type, string $img, string $descriptions, int $capacity, int $length): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT IGNORE INTO boats (type, name, img, descriptions, capacity, length) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssii", $type, $name, $img, $descriptions, $capacity, $length);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function insert(string $name, string $type, string $img, string $descriptions, int $capacity, int $length): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO boats (type, name, img, descriptions, capacity, length) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssii", $type, $name, $img, $descriptions, $capacity, $length);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function delete(int $id): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("DELETE FROM boats WHERE id = ?");
            $stmt->bind_param("i", $id);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function selectById(int $id): ?Boat
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM boats WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();

            $result = $stmt->get_result();

            $row = $result->fetch_assoc();
            return new Boat($row['id'], BoatType::from($row['type']), $row['name'], $row['img'], $row['descriptions'], $row['capacity'], $row['length']);
        } catch (Exception $e) {
            return null;
        }
    }

    public function selectAllByType(BoatType $type): array
    {
        $boats = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM boats WHERE type = ?");
            $type = $type->toString();
            $stmt->bind_param("s", $type);

            $stmt->execute();

            $result = $stmt->get_result();

            while ($row = $result->fetch_assoc()) {
                $boats[] = new Boat($row['id'], BoatType::from($row['type']), $row['name'], $row['img'], $row['descriptions'], $row['capacity'], $row['length']);
            }
        } catch (Exception $err) {
        }

        return $boats;
    }

    public function selectAll(): array
    {
        $boats = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM boats");
            $stmt->execute();
            $result = $stmt->get_result();

            while ($row = $result->fetch_assoc()) {
                $boats[] = new Boat($row['id'], BoatType::from($row['type']), $row['name'], $row['img'], $row['descriptions'], $row['capacity'], $row['length']);
            }
            $stmt->close();
        } catch (Exception $e) {
        }

        return $boats;
    }
}
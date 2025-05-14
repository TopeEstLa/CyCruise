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
    }

    public static function getInstance(): BoatRepository
    {
        if (self::$instance === null) {
            self::$instance = new BoatRepository();
        }
        return self::$instance;
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
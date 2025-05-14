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
    }

    public static function getInstance(): CruiseOptionRepository
    {
        if (self::$instance === null) {
            self::$instance = new CruiseOptionRepository();
        }
        return self::$instance;
    }


    public function insert(int $cruise_id, string $type, string $name, float $price, bool $default, bool $perPassenger): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO cruise_option (cruise_id, type, name, price, is_default, per_passenger) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("isssii", $cruise_id, $type, $name, $price, $default, $perPassenger);
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
                    $cruiseOption[] = new CruiseOption($row['id'], $row['type'], $row['name'], $row['price'], $row['is_default'], $row['per_passenger']);
                }
            }
        } catch (Exception $e) {
        }


        return $cruiseOption;
    }

    public function findById(int $id): ?CruiseOption
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM cruise_option WHERE id = ?");
            $stmt->bind_param("i", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                if ($row = $result->fetch_assoc()) {
                    return new CruiseOption($row['id'], $row['type'], $row['name'], $row['price'], $row['is_default'], $row['per_passenger']);
                }
            }
        } catch (Exception $e) {

        }

        return null;
    }


}
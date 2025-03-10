<?php

class Database
{

    private static ?Database $instance = null;
    private mysqli $conn;

    private function __construct()
    {
        try {
            $this->conn = new mysqli(getenv("DB_HOST"), getenv("DB_USER"), getenv("DB_PASS"), getenv("DB_NAME"));
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }

        if ($this->conn->connect_error) {
            die("Database connection failed: " . $this->conn->connect_error);
        }
    }

    public static function getInstance(): Database
    {
        if (self::$instance === null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    public function getConnection(): mysqli
    {
        return $this->conn;
    }
}


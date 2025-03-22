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

    public function executeSqlFile(string $filePath): bool
    {
        if (!file_exists($filePath)) {
            die("SQL file not found: " . $filePath);
        }

        $sql = file_get_contents($filePath);
        if ($sql === false) {
            die("Failed to read SQL file: " . $filePath);
        }

        $queries = explode(";", $sql);

        foreach ($queries as $query) {
            $trimmedQuery = trim($query);
            if (!empty($trimmedQuery)) {
                if (!$this->conn->query($trimmedQuery)) {
                    die("Error executing query: " . $this->conn->error);
                }
            }
        }

        return true;
    }

    public function getConnection(): mysqli
    {
        return $this->conn;
    }
}


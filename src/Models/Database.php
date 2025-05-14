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

        if (!$this->checkIfTableExist()) {
            //die("Some tables are missing, please run the init.sql file");
            if ($this->executeSqlFile(__DIR__ . '/../../sql/schem.sql')) {
                $this->executeSqlFile(__DIR__ . '/../../sql/default_user.sql');
                $this->executeSqlFile(__DIR__ . '/../../sql/default_boat.sql');
                $this->executeSqlFile(__DIR__ . '/../../sql/default_cruises.sql');
            } else {
                die("Error while executing the SQL file");
            }
        }
    }

    public static function getInstance(): Database
    {
        if (self::$instance === null) {
            self::$instance = new Database();
        }
        return self::$instance;
    }

    public function checkIfTableExist()
    {
        $tables = [ //why just these tables ? cause they are using relation for the other tables, if they exist, the others will exist too
            'invoices_option',
            'users',
            'cruise_option',
            'contact_request',
        ];

        foreach ($tables as $table) {
            $result = $this->conn->query("SHOW TABLES LIKE '$table'");
            if ($result->num_rows == 0) {
                return false;
            }
        }

        return true;
    }

    public function executeSqlFile(string $filePath): bool
    {
        if (!file_exists($filePath)) {
            return false;
        }

        $sql = file_get_contents($filePath);
        if ($sql === false) {
            return false;
        }

        $queries = explode(";", $sql);

        foreach ($queries as $query) {
            $trimmedQuery = trim($query);
            if (!empty($trimmedQuery)) {
                if (!$this->conn->query($trimmedQuery)) {
                    return false;
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


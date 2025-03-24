<?php

require_once __DIR__ . "/../Models/ContactRequest.php";
require_once __DIR__ . "/../Models/Database.php";


class ContactRepository
{

    private static ?ContactRepository $instance = null;
    private Database $database;

    private function __construct()
    {
        $this->database = Database::getInstance();

        try {
            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `contact_request`(
                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `firstname` VARCHAR(255) NOT NULL,
                            `lastname` VARCHAR(255) NOT NULL,
                            `email` VARCHAR(255) NOT NULL,
                            `phone` VARCHAR(255) NOT NULL,
                            `subject` VARCHAR(255) NOT NULL,
                            `content` LONGTEXT NOT NULL);")
                ->execute();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }

    }

    public static function getInstance(): ContactRepository
    {
        if (self::$instance == null) {
            self::$instance = new ContactRepository();
        }
        return self::$instance;
    }

    public function insert(string $firstname, string $lastname, string $email, string $phone, string $subject, string $content): bool
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("INSERT INTO `contact_request`(`firstname`, `lastname`, `email`, `phone`, `subject`, `content`) VALUES (?, ?, ?, ?, ?, ?)");

            $stmt->bind_param("ssssss", $firstname, $lastname, $email, $phone, $subject, $content);
            return $stmt->execute();
        } catch (Exception $e) {

        }

        return false;
    }

    public function findById(int $id): ?ContactRequest
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("SELECT * FROM `contact_request` WHERE `id` = ?");

            $stmt->bind_param("i", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();

                if ($result->num_rows === 1) {
                    $row = $result->fetch_assoc();

                    return new ContactRequest(
                        $row['id'],
                        $row['firstname'],
                        $row['lastname'],
                        $row['email'],
                        $row['phone'],
                        $row['subject'],
                        $row['content']
                    );
                }
            }
        } catch (Exception $e) {
        }

        return null;
    }

    public function findAll(): array
    {
        $contactRequests = [];

        try {
            $stmt = $this->database->getConnection()
                ->prepare("SELECT * FROM `contact_request`");

            if ($stmt->execute()) {
                $result = $stmt->get_result();

                while ($row = $result->fetch_assoc()) {
                    $contactRequest = new ContactRequest(
                        $row['id'],
                        $row['firstname'],
                        $row['lastname'],
                        $row['email'],
                        $row['phone'],
                        $row['subject'],
                        $row['content']
                    );

                    $contactRequests[] = $contactRequest;
                }
            }
        } catch (Exception $e) {
        }

        return $contactRequests;
    }

}
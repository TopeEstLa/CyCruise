<?php

class InvoicePassengerRepository
{

    private static ?InvoicePassengerRepository $instance = null;
    private Database $database;

    public function __construct()
    {
        try {
            $this->database = Database::getInstance();

            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `invoices_passenger`(
                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `invoice_id` CHAR(36) NOT NULL,
                            `first_name` VARCHAR(255) NOT NULL,
                            `last_name` VARCHAR(255) NOT NULL,
                            CONSTRAINT `invoice_passenger_invoice_id_foreign` 
                            FOREIGN KEY (`invoice_id`) REFERENCES `invoices`(`id`) 
                            ON DELETE CASCADE ON UPDATE CASCADE);")->execute();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }


    public static function getInstance(): InvoicePassengerRepository
    {
        if (self::$instance === null) {
            self::$instance = new InvoicePassengerRepository();
        }

        return self::$instance;
    }

    public function insert(string $invoice_id, string $first_name, string $last_name): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO `invoices_passenger`(`invoice_id`, `first_name`, `last_name`) VALUES (?, ?, ?)");

            $stmt->bind_param("sss", $invoice_id, $first_name, $last_name);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }


    public function findByInvoiceId(string $id): array
    {
        $passengers = [];
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM `invoices_passenger` WHERE `invoice_id` = ?");
            $stmt->bind_param("s", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    $passengers[] = $row;
                }
            }
        } catch (Exception $e) {
        }

        return $passengers;
    }

    public function countByCruiseId(int $cruise_id): int
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT COUNT(*) FROM `invoices_passenger` JOIN `invoices` ON `invoice_passenger`.`invoice_id` = `invoices`.`id` WHERE `invoices`.`cruise_id` = ?");

            $stmt->bind_param("i", $cruise_id);
            if ($stmt->execute()) {
                $result = $stmt->get_result();
                $row = $result->fetch_assoc();
                return $row['COUNT(*)'];
            }
        } catch (Exception $e) {
            return 0;
        }

        return 0;
    }

}
<?php

class InvoiceOptionRepository
{

    private static ?InvoiceOptionRepository $instance = null;
    private Database $database;

    private CruiseOptionRepository $cruiseOptionRepository;

    public function __construct()
    {
        try {
            $this->database = Database::getInstance();

            $this->database->getConnection()
                ->prepare("CREATE TABLE IF NOT EXISTS `invoices_option`(
                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                            `invoice_id` CHAR(36) NOT NULL,
                            `option_id` BIGINT NOT NULL,
                            CONSTRAINT `invoice_option_invoice_id_foreign` 
                            FOREIGN KEY (`invoice_id`) REFERENCES `invoices`(`id`) 
                            ON DELETE CASCADE ON UPDATE CASCADE,
                            CONSTRAINT `invoice_option_option_id_foreign` 
                            FOREIGN KEY (`option_id`) REFERENCES `cruise_option`(`id`) 
                            ON DELETE CASCADE ON UPDATE CASCADE);")->execute();

            $this->cruiseOptionRepository = CruiseOptionRepository::getInstance();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }


    public static function getInstance(): InvoiceOptionRepository
    {
        if (self::$instance === null) {
            self::$instance = new InvoiceOptionRepository();
        }

        return self::$instance;
    }

    public function insert(string $invoice_id, int $option_id): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO `invoices_option`(`invoice_id`, `option_id`) VALUES (?, ?)");

            $stmt->bind_param("si", $invoice_id, $option_id);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function findByInvoiceId(string $id): array
    {
        $options = [];
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM `invoices_option` WHERE `invoice_id` = ?");
            $stmt->bind_param("s", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    $options[] = $this->cruiseOptionRepository->findById($row['option_id']);
                }
            }
        } catch (Exception $e) {
            return [];
        }
        return $options;
    }


}
<?php

class InvoiceOptionRepository
{

    private static ?InvoiceOptionRepository $instance = null;
    private Database $database;

    private CruiseOptionRepository $cruiseOptionRepository;

    public function __construct()
    {
        $this->database = Database::getInstance();
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
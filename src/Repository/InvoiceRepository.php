<?php
require_once __DIR__ . "/../Models/Invoice.php";
require_once __DIR__ . "/../Models/Database.php";

class InvoiceRepository
{

    private static ?InvoiceRepository $instance = null;
    private Database $database;

    private InvoicePassengerRepository $invoicePassengerRepository;
    private InvoiceOptionRepository $invoiceOptionRepository;

    public function __construct()
    {
        try {
            $this->database = Database::getInstance();

            $this->database->getConnection()->prepare("CREATE TABLE IF NOT EXISTS `invoices`(
                                `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                `user_id` BIGINT NOT NULL,
                                `cruise_id` BIGINT NOT NULL,
                                `total_prices` FLOAT(53) NOT NULL,
                                `state` VARCHAR(255) NOT NULL,
                                CONSTRAINT `invoices_user_id_foreign` 
                                FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) 
                                ON DELETE CASCADE ON UPDATE CASCADE,
                                CONSTRAINT `invoices_cruise_id_foreign`
                                FOREIGN KEY (`cruise_id`) REFERENCES `cruise`(`id`)
                                ON DELETE CASCADE ON UPDATE CASCADE);")
                ->execute();

            $this->invoicePassengerRepository = InvoicePassengerRepository::getInstance();
            $this->invoiceOptionRepository = InvoiceOptionRepository::getInstance();
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance(): InvoiceRepository
    {
        if (self::$instance === null) {
            self::$instance = new InvoiceRepository();
        }

        return self::$instance;
    }

    public function insert(int $userId, int $cruiseId, float $totalPrices, InvoiceState $state): int
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO `invoices`(`user_id`, `cruise_id`, `total_prices`, `state`) VALUES (?, ?, ?, ?)");

            $stateString = $state->toString();
            $stmt->bind_param("iiis", $userId, $cruiseId, $totalPrices, $stateString);
            if ($stmt->execute()) {
                return $stmt->insert_id;
            }
        } catch (Exception $e) {
            return -1;
        }

        return -1;
    }

    public function selectById(int $id): ?Invoice
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM `invoices` WHERE `id` = ?");
            $stmt->bind_param("i", $id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                if ($result->num_rows === 0) {
                    return null;
                }

                $passengers = $this->invoicePassengerRepository->findByInvoiceId($id);
                $passengerCount = count($passengers);

                $options = $this->invoiceOptionRepository->findByInvoiceId($id);

                $row = $result->fetch_assoc();
                return new Invoice(
                    $row['id'],
                    UserRepository::getInstance()->findById($row['user_id']),
                    CruiseRepository::getInstance()->findById($row['cruise_id']),
                    $options,
                    $passengerCount,
                    $passengers,
                    $row['total_prices'],
                    InvoiceState::from($row['state']),
                    ""
                );
            }
        } catch (Exception $e) {
            return null;
        }

        return null;
    }
}
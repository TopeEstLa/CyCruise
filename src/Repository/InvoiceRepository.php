<?php
require_once __DIR__ . "/../Models/Invoice.php";
require_once __DIR__ . "/../Models/Database.php";
require_once __DIR__ . "/../Enums/InvoiceState.php";
require_once __DIR__ . "/CruiseOptionRepository.php";
require_once __DIR__ . "/InvoicePassengerRepository.php";
require_once __DIR__ . "/InvoiceOptionRepository.php";
require_once __DIR__ . "/CruiseRepository.php";
require_once __DIR__ . "/UserRepository.php";

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
                                `id` CHAR(24) PRIMARY KEY DEFAULT (SUBSTRING(REPLACE(UUID(), '-', ''), 1, 24)),
                                `user_id` BIGINT NOT NULL,
                                `cruise_id` BIGINT NOT NULL,
                                `total_prices` FLOAT(53) NOT NULL,
                                `state` VARCHAR(255) NOT NULL,
                                `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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

    public function insert(int $userId, int $cruiseId, float $totalPrices, InvoiceState $state): ?string
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO `invoices`(`user_id`, `cruise_id`, `total_prices`, `state`) VALUES (?, ?, ?, ?) RETURNING id");

            $stateString = $state->toString();
            $stmt->bind_param("iiis", $userId, $cruiseId, $totalPrices, $stateString);

            $uuid = null;
            if (!$stmt->execute()) {
                return null;
            }

            $stmt->bind_result($uuid);
            $stmt->fetch();

            return $uuid;
        } catch (Exception $e) {
            return null;
        }
    }

    public function update(string $id, int $totalPrices, InvoiceState $state): bool
    {
        try {
            $stmt = $this->database->getConnection()
                ->prepare("UPDATE `invoices` SET `total_prices` = ?, `state` = ? WHERE `id` = ?");

            $stateString = $state->toString();

            $stmt->bind_param("iss", $totalPrices, $stateString, $id);
            return $stmt->execute();
        } catch (Exception $e) {
        }

        return false;
    }

    public function findById(string $id): ?Invoice
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM `invoices` WHERE `id` = ?");
            $stmt->bind_param("s", $id);

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
                    $row['created_at'],
                    $row['updated_at']);
            }
        } catch (Exception $e) {
            return null;
        }

        return null;
    }


    public function findByUserId(int $user_id): ?Invoice
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM `invoices` WHERE `user_id` = ?");

            $stmt->bind_param("i", $user_id);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                if ($result->num_rows === 0) {
                    return null;
                }


                $row = $result->fetch_assoc();

                $id = $row['id'];

                $passengers = $this->invoicePassengerRepository->findByInvoiceId($id);
                $passengerCount = count($passengers);

                $options = $this->invoiceOptionRepository->findByInvoiceId($id);
                return new Invoice(
                    $row['id'],
                    UserRepository::getInstance()->findById($row['user_id']),
                    CruiseRepository::getInstance()->findById($row['cruise_id']),
                    $options,
                    $passengerCount,
                    $passengers,
                    $row['total_prices'],
                    InvoiceState::from($row['state']),
                    $row['created_at'],
                    $row['updated_at']);
            }
        } catch (Exception $e) {
        }

        return null;
    }

    public function findAllCurrentByUserIdOrderByCreatedAt(int $userId)
    {
        $array = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT i.* 
                                                                FROM invoices i
                                                                JOIN cruise c ON i.cruise_id = c.id
                                                                WHERE i.user_id = ? 
                                                                AND c.end_date > CURRENT_TIMESTAMP()
                                                                ORDER BY i.created_at DESC;");

            $stmt->bind_param("i", $userId);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($data = $result->fetch_assoc()) {
                    $passengers = $this->invoicePassengerRepository->findByInvoiceId($data['id']);
                    $passengerCount = count($passengers);

                    $options = $this->invoiceOptionRepository->findByInvoiceId($data['id']);
                    $array[] = new Invoice(
                        $data['id'],
                        UserRepository::getInstance()->findById($data['user_id']),
                        CruiseRepository::getInstance()->findById($data['cruise_id']),
                        $options,
                        $passengerCount,
                        $passengers,
                        $data['total_prices'],
                        InvoiceState::from($data['state']),
                        $data['created_at'],
                        $data['updated_at']);
                }
            }
        } catch (Exception $e) {}

        return $array;
    }

    public function findAllOldByUserAndStateIdOrderByCreatedAt(int $userId, InvoiceState $state)
    {
        $array = [];

        $stateString = $state->toString();

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT i.* 
                                                                FROM invoices i
                                                                JOIN cruise c ON i.cruise_id = c.id
                                                                WHERE i.user_id = ? AND i.state = ?
                                                                AND c.end_date < CURRENT_TIMESTAMP()
                                                                ORDER BY i.created_at DESC;");

            $stmt->bind_param("is", $userId, $stateString);

            if ($stmt->execute()) {
                $result = $stmt->get_result();
                while ($data = $result->fetch_assoc()) {
                    $passengers = $this->invoicePassengerRepository->findByInvoiceId($data['id']);
                    $passengerCount = count($passengers);

                    $options = $this->invoiceOptionRepository->findByInvoiceId($data['id']);
                    $array[] = new Invoice(
                        $data['id'],
                        UserRepository::getInstance()->findById($data['user_id']),
                        CruiseRepository::getInstance()->findById($data['cruise_id']),
                        $options,
                        $passengerCount,
                        $passengers,
                        $data['total_prices'],
                        InvoiceState::from($data['state']),
                        $data['created_at'],
                        $data['updated_at']);
                }
            }
        } catch (Exception $e) {}

        return $array;
    }
}
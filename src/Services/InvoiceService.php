<?php

require_once __DIR__ . '/../Models/User.php';
require_once __DIR__ . '/../Models/Cruise.php';
require_once __DIR__ . '/../Models/Invoice.php';
require_once __DIR__ . '/../Repository/InvoiceRepository.php';
require_once __DIR__ . '/../Repository/InvoiceOptionRepository.php';
require_once __DIR__ . '/../Repository/InvoicePassengerRepository.php';
require_once __DIR__ . '/../Enums/InvoiceState.php';

class InvoiceService
{

    private InvoiceRepository $invoiceRepository;
    private InvoicePassengerRepository $invoicePassengerRepository;
    private InvoiceOptionRepository $invoiceOptionRepository;

    public function __construct()
    {
        $this->invoiceRepository = InvoiceRepository::getInstance();
        $this->invoicePassengerRepository = InvoicePassengerRepository::getInstance();
        $this->invoiceOptionRepository = InvoiceOptionRepository::getInstance();
    }

    public function createInvoice(User $user, Cruise $cruise, array $options, int $passengerCount, array $passengerData): ?Invoice
    {

        $totalPrice = $this->calculatePrice($cruise, $passengerCount, $options);
        $id = $this->invoiceRepository->insert($user->getId(), $cruise->getId(), $totalPrice, InvoiceState::PENDING);

        if ($id === -1) {
            return null;
        }

        $invoice = new Invoice($id, $user, $cruise, $options, $passengerCount, $passengerData, $totalPrice, InvoiceState::PENDING);

        for ($i = 0; $i < $passengerCount; $i++) {
            $passenger = $passengerData[$i];
            print_r($passenger);
            if (!$this->invoicePassengerRepository->insert($id, $passenger['firstname'], $passenger['lastname'])) {
                return null;
            }
        }

        for ($i = 0; $i < count($options); $i++) {
            $option = $options[$i];
            if (!$this->invoiceOptionRepository->insert($id, $option->getId())) {
                return null;
            }
        }

        return $invoice;
    }

    public function calculatePrice(Cruise $cruise, int $passengerCount, array $options): float
    {
        $totalPrice = $cruise->getPrice();

        for ($i = 0; $i < count($options); $i++) {
            $option = $options[$i];
            if ($option->isPerPassenger()) {
                $totalPrice += $option->getPrice() * $passengerCount;
            } else {
                $totalPrice += $option->getPrice();
            }
        }

        return $totalPrice;
    }

    public function generatePaymentSalt(Invoice $invoice): string
    {
        $apiKey = $this->generateBankAPIKey();

        $salt = $apiKey . "#" . $invoice->getId() . "#" . $invoice->getTotalPrice() . "#" . "MI-1_A" . "#" . "localhost:9000";

        return md5($salt);
    }

    public function generateBankAPIKey(): string
    {
        return substr(md5("MI-1_A"), 1, 15);
    }


}
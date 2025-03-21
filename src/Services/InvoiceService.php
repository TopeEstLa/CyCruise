<?php

require_once __DIR__ . '/../Models/User.php';
require_once __DIR__ . '/../Models/Cruise.php';
require_once __DIR__ . '/../Models/Invoice.php';
require_once __DIR__ . '/../Repository/InvoiceRepository.php';
require_once __DIR__ . '/../Repository/InvoiceOptionRepository.php';
require_once __DIR__ . '/../Repository/InvoicePassengerRepository.php';
require_once __DIR__ . '/../Enums/InvoiceState.php';
require_once __DIR__ . '/../Utils/getapikey.php';

class InvoiceService
{

    private InvoiceRepository $invoiceRepository;
    private InvoicePassengerRepository $invoicePassengerRepository;
    private InvoiceOptionRepository $invoiceOptionRepository;

    public function __construct()
    {
        $GLOBALS["SELLER"] = "MI-1_J";
        $GLOBALS["CALLBACK_URL"] = "http://localhost:9090/payment-callback.php";
        $this->invoiceRepository = InvoiceRepository::getInstance();
        $this->invoicePassengerRepository = InvoicePassengerRepository::getInstance();
        $this->invoiceOptionRepository = InvoiceOptionRepository::getInstance();
    }

    public function createInvoice(User $user, Cruise $cruise, array $options, int $passengerCount, array $passengerData): ?Invoice
    {

        $totalPrice = $this->calculatePrice($cruise, $passengerCount, $options);
        $id = $this->invoiceRepository->insert($user->getId(), $cruise->getId(), $totalPrice, InvoiceState::PENDING);

        if ($id === null) {
            return null;
        }

        $invoice = new Invoice($id, $user, $cruise, $options, $passengerCount, $passengerData, $totalPrice, InvoiceState::PENDING, date("Y-m-d H:i:s"), date("Y-m-d H:i:s"));

        for ($i = 0; $i < $passengerCount; $i++) {
            $passenger = $passengerData[$i];
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

    public function getInvoice(string $id, User $user): ?Invoice
    {
        $invoice = $this->invoiceRepository->findById($id);

        if ($invoice === null) {
            return null;
        }

        if ($invoice->getUser()->getId() !== $user->getId()) {
            return null;
        }

        return $invoice;
    }

    public function updateInvoice(Invoice $invoice): bool
    {
        return $this->invoiceRepository->update($invoice->getId(), $invoice->getTotalPrice(), $invoice->getState());
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

        $salt = $apiKey . "#" . $invoice->getId() . "#" . $invoice->getTotalPrice() . "#" . $GLOBALS["SELLER"] . "#" . $GLOBALS["CALLBACK_URL"] . "#";
        return md5($salt);
    }


    public function generateBankAPIKey(): string
    {
        return substr(md5($GLOBALS["SELLER"]), 1, 15);
    }


}
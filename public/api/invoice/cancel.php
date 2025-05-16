<?php
require_once "../../../src/Services/AuthService.php";
require_once "../../../src/Services/InvoiceService.php";
require_once "../../../src/Repository/InvoiceRepository.php";
require_once "../../../src/Enums/InvoiceState.php";

session_start();

$authService = new AuthService();
$invoiceService = new InvoiceService();

if (!$authService->isLoggedIn()) {
    header("Location: ../../login.php");
    exit();
}

$user = $authService->getUser();

if ($_SERVER['REQUEST_METHOD'] !== 'POST' || !isset($_POST['invoice_id'])) {
    header("Location: ../../index.php");
    exit();
}

$invoiceId = $_POST['invoice_id'];
$invoice = $invoiceService->getInvoice($invoiceId, $user);

if ($invoice === null) {
    header("Location: ../../basket.php");
    exit();
}

if ($invoice->getState() === InvoiceState::PENDING) {
    $invoice->setState(InvoiceState::CANCELED);
    $invoiceService->updateInvoice($invoice);
}

header("Location: ../../basket.php");
exit();
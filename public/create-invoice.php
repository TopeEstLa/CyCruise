<?php

require_once "../src/Services/AuthService.php";
require_once "../src/Services/InvoiceService.php";
require_once "../src/Repository/CruiseRepository.php";
require_once "../src/Repository/CruiseOptionRepository.php";
require_once "../src/Models/Invoice.php";

$authService = new AuthService();
$invoiceService = new InvoiceService();

session_start();

if (!$authService->isLoggedIn()) {
    header("Location: login.php");
    exit();
}

if (!isset($_POST['cruise_id'])) {
    header("Location: cruise-list.php");
    exit();
}

$cruise = CruiseRepository::getInstance()->findById($_POST['cruise_id']);

if ($cruise === null) {
    header("Location: cruise-list.php");
    exit();
}

if (!isset($_POST['passengers'])) {
    header("Location: cruise-list.php");
    exit();
}

$passengerCount = $_POST['passengers'];

$passengerData = [];

for ($i = 0; $i < $passengerCount; $i++) {
    if (!isset($_POST['first_name_' . $i]) || !isset($_POST['last_name_' . $i])) {
        header("Location: cruise-list.php");
        exit();
    }

    $passengerData[] = [
        'firstname' => $_POST['first_name_' . $i],
        'lastname' => $_POST['last_name_' . $i],
    ];
}

$optionsByType = $cruise->mapOptionsByType();

$selectedOptions = [];

for ($i = 0; $i < count($optionsByType); $i++) {
    $type = array_keys($optionsByType)[$i];
    $options = $optionsByType[$type];
    $option_str = 'option_' . $type;
    if (isset($_POST[$option_str])) {
        $selectedOptionId = $_POST[$option_str];
        $cruiseOption = CruiseOptionRepository::getInstance()->findById($selectedOptionId);
        if ($cruiseOption !== null) {
            $selectedOptions[] = $cruiseOption;
        }
    } else {
        header("Location: cruise-list.php");
    }
}


$invoice = $invoiceService->createInvoice($authService->getUser(), $cruise, $selectedOptions, $passengerCount, $passengerData);

if ($invoice === null) {
    header("Location: cruise-list.php");
    exit();
}

header("Location: invoice.php?id=" . $invoice->getId());
?>
<?php
require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/BoatRepository.php";
require_once "../../src/Repository/CruiseRepository.php";

session_start();

$authService = new AuthService();
if (!$authService->isLoggedIn()) {
    header("Location: ../login.php");
    exit;
}

if (!$authService->isAdmin()) {
    header("Location: ../index.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    header("Location: ../index.php");
    exit;
}


if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    header("Location: ../index.php");
    exit;
}

if (!isset($_POST["id"])) {
    header("Location: ../index.php");
    exit;
}

$cruiseId = $_POST["id"];

CruiseRepository::getInstance()->delete($cruiseId);

header("Location: list-cruise.php");
exit;

?>
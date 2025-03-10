<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/UserRepository.php";

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


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $userId = $_POST['user_id'];

    UserRepository::getInstance()->delete($userId);

    header('Location: list-user.php');
    exit();
}

?>
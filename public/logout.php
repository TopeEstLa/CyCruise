<?php

session_start();

require_once "../src/Services/AuthService.php";

$authService = new AuthService();
if ($authService->isLoggedIn()) {
    $authService->logout();
}
header("Location: index.php");
exit;

?>
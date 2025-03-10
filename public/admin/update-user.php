<?php

require_once "../../src/Services/AuthService.php";
require_once "../../src/Repository/UserRepository.php";

$authService = new AuthService();

session_start();

if (!$authService->isLoggedIn()) {
    header("Location: ../login.php");
    exit;
}

if (!$authService->isAdmin()) {
    header("Location: ../index.php");
    exit;
}

if (isset($_POST['target_user_id'])) {
    $user = UserRepository::getInstance()->findById($_POST['target_user_id']);

    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $role = UserRole::from($_POST['role']);


    $user->setFirstname($firstname);
    $user->setLastname($lastname);
    $user->setEmail($email);
    $user->setPassword($password);
    $user->setRole($role);


    UserRepository::getInstance()->update($user);

    header("Location: list-user.php");
    exit;
}

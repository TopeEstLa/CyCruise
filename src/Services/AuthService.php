<?php

require_once __DIR__ . '/../Models/User.php';
require_once __DIR__ . '/../Repository/UserRepository.php';

class AuthService
{

    public function __construct()
    {
        UserRepository::getInstance();
    }

    public function register($email, $password, $firstname, $lastname, $birth): bool
    {
        $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
        $result = UserRepository::getInstance()->insert($email, $hashedPassword, UserRole::DEFAULT->toString(), $firstname, $lastname, $birth);

        if ($result) {
            $user = UserRepository::getInstance()->findByEmail($email);
            $_SESSION['user_id'] = $user->getId();
        }

        return $result;
    }

    public function login(string $email, string $password): bool
    {
        $user = UserRepository::getInstance()->findByEmail($email);

        if ($user && password_verify($password, $user->getPassword())) {
            $_SESSION['user_id'] = $user->getId();
            return true;
        }
        return false;
    }

    public function hasAccount(string $email): bool
    {
        return UserRepository::getInstance()->findByEmail($email) !== null;
    }

    public function logout(): void
    {
        session_destroy();
    }

    public function isLoggedIn(): bool
    {
        if (!isset($_SESSION['user_id'])) return false;
        $user_id = $_SESSION['user_id'];
        return UserRepository::getInstance()->findById($user_id) !== null;
    }

    public function isAdmin(): bool
    {
        $user = UserRepository::getInstance()->findById($_SESSION['user_id']);
        return $user->getRole() === UserRole::ADMIN;
    }

}
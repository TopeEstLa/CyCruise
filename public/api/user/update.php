<?php
require_once "../../../src/Services/AuthService.php";
require_once "../../../src/Repository/UserRepository.php";
require_once "../../../src/Repository/InvoiceRepository.php";

session_start();

$authService = new AuthService();
if (!$authService->isLoggedIn()) {
    header("Location: ../../login.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);

    if ($input) {
        $user = UserRepository::getInstance()->findById($_SESSION['user_id']);

        if (isset($input['firstname']) && isset($input['lastname']) && isset($input['email']) && isset($input['birth'])) {
            $user->setFirstname($input['firstname']);
            $user->setLastname($input['lastname']);
            $user->setEmail($input['email']);
            $user->setBirth($input['birth']);

            UserRepository::getInstance()->update($user);

            header('Content-Type: application/json; charset=utf-8');
            http_response_code(200);
            echo json_encode(["firstname" => $user->getFirstname(), "lastname" => $user->getLastname(), "email" => $user->getEmail(), "birth" => $user->getBirth()]);
        } else {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid input']);
            exit;
        }
    } else {
        http_response_code(400);
        echo json_encode(['error' => 'Invalid input']);
    }
}
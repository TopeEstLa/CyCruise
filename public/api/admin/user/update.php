<?php
require_once "../../../../src/Services/AuthService.php";
require_once "../../../../src/Repository/UserRepository.php";

$authService = new AuthService();

session_start();

if (!$authService->isLoggedIn()) {
    http_response_code(403);
    echo json_encode(['error' => 'Forbidden']);
    exit;
}

if (!$authService->isAdmin()) {
    http_response_code(403);
    echo json_encode(['error' => 'Forbidden']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $input = json_decode(file_get_contents('php://input'), true);
    if ($input) {
        if (isset($input['target_user_id']) && isset($input['firstname']) && isset($input['lastname']) && isset($input['email']) && isset($input['role']) && isset($input['password'])) {
            $user = UserRepository::getInstance()->findById($input['target_user_id']);

            if ($user == null) {
                http_response_code(404);
                echo json_encode(['error' => 'User not found']);
                exit;
            }

            $user->setFirstname($input['firstname']);
            $user->setLastname($input['lastname']);
            $user->setEmail($input['email']);
            if ($input['password'] != "") {
                $user->setPassword(password_hash($input['password'], PASSWORD_DEFAULT));
            }

            $role = UserRole::from($input['role']);

            $user->setRole($role);

            UserRepository::getInstance()->update($user);


            header('Content-Type: application/json; charset=utf-8');

            http_response_code(200);
            echo json_encode(["firstname" => $user->getFirstname(), "lastname" => $user->getLastname(), "email" => $user->getEmail(), "password" => $user->getPassword(), "role" => $user->getRole()->toString()]);
        } else {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid input']);
        }
    } else {
        http_response_code(400);
        echo json_encode(['error' => 'Invalid input']);
    }
} else {
    http_response_code(400);
    echo json_encode(['error' => 'Invalid request method']);
}

?>
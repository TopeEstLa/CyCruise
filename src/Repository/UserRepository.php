<?php

require_once __DIR__ . "/../Models/User.php";
require_once __DIR__ . "/../Models/Database.php";


class UserRepository
{

    private static ?UserRepository $instance = null;

    private Database $database;

    private function __construct()
    {
        $this->database = Database::getInstance();


        try {
            $this->database->getConnection()->prepare("CREATE TABLE IF NOT EXISTS `users`(
                                                            `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                                                            `email` VARCHAR(255) NOT NULL UNIQUE,
                                                            `password` VARCHAR(255) NOT NULL,
                                                            `role` VARCHAR(255) NOT NULL,
                                                            `firstname` VARCHAR(255) NOT NULL,
                                                            `lastname` VARCHAR(255) NOT NULL,
                                                            `birth` DATE NOT NULL,
                                                            `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                                            `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
                                                            ")
                ->execute();

            $this->insertForce("test.admin@localhost", password_hash("password", PASSWORD_BCRYPT), UserRole::ADMIN->toString(), "admin", "admin", "2000-01-01");
            $this->insertForce("test1.admin@localhost", password_hash("password", PASSWORD_BCRYPT), UserRole::ADMIN->toString(), "admin", "admin", "2000-01-01");

            $this->insertForce("test.user@localhost", password_hash("password", PASSWORD_BCRYPT), UserRole::DEFAULT->toString(), "user", "user", "2000-01-01");
            $this->insertForce("test.vip@localhost", password_hash("password", PASSWORD_BCRYPT), UserRole::VIP->toString(), "user", "user", "2000-01-01");
            $this->insertForce("test.premium@localhost", password_hash("password", PASSWORD_BCRYPT), UserRole::PREMIUM->toString(), "user", "user", "2000-01-01");
        } catch (Exception $e) {
            die("Database connection failed: " . $e->getMessage());
        }
    }

    public static function getInstance(): UserRepository
    {
        if (self::$instance === null) {
            self::$instance = new UserRepository();
        }
        return self::$instance;
    }

    public function insertForce(string $email, string $password, string $role, string $firstname, string $lastname, string $birth): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT IGNORE INTO users (email, password, role, firstname, lastname, birth) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssss", $email, $password, $role, $firstname, $lastname, $birth);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function insert(string $email, string $password, string $role, string $firstname, string $lastname, string $birth): bool
    {
        try {
            $stmt = $this->database->getConnection()->prepare("INSERT INTO users (email, password, role, firstname, lastname, birth) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssss", $email, $password, $role, $firstname, $lastname, $birth);
            return $stmt->execute();
        } catch (Exception $e) {
            return false;
        }
    }

    public function update(User $user): void
    {
        try {
            $stmt = $this->database->getConnection()->prepare("UPDATE users SET email = ?, password = ?, firstname = ?, lastname = ?, role = ?, birth = ? WHERE id = ?");

            $id = $user->getId();
            $email = $user->getEmail();
            $password = $user->getPassword();
            $firstname = $user->getFirstname();
            $lastname = $user->getLastname();
            $birth = $user->getBirth();
            $role = $user->getRole()->toString();

            $stmt->bind_param("ssssssi", $email, $password, $firstname, $lastname, $role, $birth, $id);
            $stmt->execute();
            $stmt->close();
        } catch (Exception $ignored) {
        }
    }

    public function delete(int $id): void
    {
        try {
            $stmt = $this->database->getConnection()->prepare("DELETE FROM users WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $stmt->close();
        } catch (Exception $ignored) {
        }
    }

    public function findById(int $id): ?User
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM users WHERE id = ?");
            $stmt->bind_param("i", $id);
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();

            if ($result->num_rows === 0) {
                return null;
            }

            $data = $result->fetch_assoc();
            return new User(
                $data['id'],
                $data['email'],
                $data['password'],
                UserRole::from($data['role']),
                $data['firstname'],
                $data['lastname'],
                $data['birth'],
                $data['created_at'],
                $data['updated_at']
            );
        } catch (Exception $e) {
            return null;
        }
    }

    public function findByEmail(string $email): ?User
    {
        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM users WHERE email = ?");
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();

            if ($result->num_rows === 0) {
                return null;
            }

            $data = $result->fetch_assoc();
            return new User(
                $data['id'],
                $data['email'],
                $data['password'],
                UserRole::from($data['role']),
                $data['firstname'],
                $data['lastname'],
                $data['birth'],
                $data['created_at'],
                $data['updated_at']
            );
        } catch (Exception $e) {
            return null;
        }
    }

    public function findAll(): array
    {
        $users = [];

        try {
            $stmt = $this->database->getConnection()->prepare("SELECT * FROM users");
            $stmt->execute();
            $result = $stmt->get_result();
            $stmt->close();

            while ($data = $result->fetch_assoc()) {
                $users[] = new User(
                    $data['id'],
                    $data['email'],
                    $data['password'],
                    UserRole::from($data['role']),
                    $data['firstname'],
                    $data['lastname'],
                    $data['birth'],
                    $data['created_at'],
                    $data['updated_at']
                );
            }
            return $users;
        } catch (Exception $e) {
            return $users;
        }
    }

}
<?php

require_once __DIR__ . '/../Enums/UserRole.php';

class User
{

    private int $id;

    private string $email;
    private string $password;
    private UserRole $role;

    private string $firstname;
    private string $lastname;

    private string $birth;

    private string $created_at;
    private string $updated_at;


    public function __construct(string $id, string $email, string $password, UserRole $role, string $firstname, string $lastname, string $birth, string $created_at, string $updated_at)
    {
        $this->id = $id;
        $this->email = $email;
        $this->password = $password;
        $this->role = $role;
        $this->firstname = $firstname;
        $this->lastname = $lastname;
        $this->birth = $birth;
        $this->created_at = $created_at;
        $this->updated_at = $updated_at;
    }


    public function getId(): int
    {
        return $this->id;
    }

    public function getEmail(): string
    {
        return $this->email;
    }

    public function setEmail(string $email): void
    {
        $this->email = $email;
    }

    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): void
    {
        $this->password = $password;
    }

    public function getRole(): UserRole
    {
        return $this->role;
    }

    public function setRole(UserRole $role): void
    {
        $this->role = $role;
    }

    public function getFirstname(): string
    {
        return $this->firstname;
    }

    public function setFirstname(string $firstname): void
    {
        $this->firstname = $firstname;
    }


    public function getLastname(): string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): void
    {
        $this->lastname = $lastname;
    }


    public function getBirth(): string
    {
        return $this->birth;
    }

    public function setBirth(string $birth): void
    {
        $this->birth = $birth;
    }


    public function getCreatedAt(): string
    {
        return $this->created_at;
    }

    public function getUpdatedAt(): string
    {
        return $this->updated_at;
    }


}
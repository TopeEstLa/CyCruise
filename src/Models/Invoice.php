<?php

class Invoice
{

    private string $id;

    private User $user;
    private Cruise $cruise;

    private array $options;

    private int $passengerCount;
    private array $passengerData;

    private float $totalPrice;


    private InvoiceState $state;

    private string $createdAt;
    private string $updatedAt;


    public function __construct(string   $id, User $user, Cruise $cruise, array $options, int $passengerCount, array $passengerData,
                                float $totalPrice, InvoiceState $state, string $createdAt, string $updatedAt)
    {
        $this->id = $id;
        $this->user = $user;
        $this->cruise = $cruise;
        $this->options = $options;
        $this->passengerCount = $passengerCount;
        $this->passengerData = $passengerData;
        $this->totalPrice = $totalPrice;
        $this->state = $state;

        $this->createdAt = $createdAt;
        $this->updatedAt = $updatedAt;
    }

    public function getId(): string
    {
        return $this->id;
    }

    public function getUser(): User
    {
        return $this->user;
    }


    public function getCruise(): Cruise
    {
        return $this->cruise;
    }


    public function getOptions(): array
    {
        return $this->options;
    }

    public function setOptions(array $options): void
    {
        $this->options = $options;
    }

    public function getPassengerCount(): int
    {
        return $this->passengerCount;
    }

    public function setPassengerCount(int $passengerCount): void
    {
        $this->passengerCount = $passengerCount;
    }

    public function getPassengerData(): array
    {
        return $this->passengerData;
    }

    public function setPassengerData(array $passengerData): void
    {
        $this->passengerData = $passengerData;
    }

    public function getTotalPrice(): float
    {
        return $this->totalPrice;
    }

    public function setTotalPrice(float $totalPrice): void
    {
        $this->totalPrice = $totalPrice;
    }

    public function getState(): InvoiceState
    {
        return $this->state;
    }

    public function setState(InvoiceState $state): void
    {
        $this->state = $state;
    }

    public function getUpdatedAt(): string
    {
        return $this->updatedAt;
    }

    public function getCreatedAt(): string
    {
        return $this->createdAt;
    }
}
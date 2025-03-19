<?php

class CruiseOption
{

    private int $id;

    private string $type;

    private string $name;
    private float $price;

    private bool $default;
    private bool $perPassenger;


    public function __construct(int $id, string $type, string $name, float $price, bool $default, bool $perPassenger)
    {
        $this->id = $id;
        $this->type = $type;
        $this->name = $name;
        $this->price = $price;
        $this->default = $default;
        $this->perPassenger = $perPassenger;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getType(): string
    {
        return $this->type;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getPrice(): float
    {
        return $this->price;
    }

    public function isDefault(): bool
    {
        return $this->default;
    }

    public function isPerPassenger(): bool
    {
        return $this->perPassenger;
    }



}
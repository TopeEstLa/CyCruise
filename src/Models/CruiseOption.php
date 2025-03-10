<?php

class CruiseOption
{

    private int $id;

    private string $type;

    private string $name;
    private float $price;

    private bool $default;


    public function __construct(int $id, string $type, string $name, float $price, bool $default)
    {
        $this->id = $id;
        $this->type = $type;
        $this->name = $name;
        $this->price = $price;
        $this->default = $default;
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

}
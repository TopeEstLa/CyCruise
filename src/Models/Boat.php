<?php

require_once __DIR__ . '/../Enums/BoatType.php';

class Boat
{

    private int $id;
    private BoatType $type;

    private string $name;

    private string $img;

    private string $descriptions;

    private int $capacity;
    private int $length;

    public function __construct(int $id, BoatType $type, string $name, string $img, string $descriptions, int $capacity, int $length)
    {
        $this->id = $id;
        $this->type = $type;
        $this->name = $name;
        $this->img = $img;
        $this->descriptions = $descriptions;
        $this->capacity = $capacity;
        $this->length = $length;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getType(): BoatType
    {
        return $this->type;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name): void
    {
        $this->name = $name;
    }

    public function getImg(): string
    {
        return $this->img;
    }

    public function setImg(string $img): void
    {
        $this->img = $img;
    }

    public function getDescriptions(): string
    {
        return $this->descriptions;
    }

    public function setDescriptions(string $descriptions): void
    {
        $this->descriptions = $descriptions;
    }

    public function getCapacity(): int
    {
        return $this->capacity;
    }

    public function setCapacity(int $capacity): void
    {
        $this->capacity = $capacity;
    }

    public function getLength(): int
    {
        return $this->length;
    }

    public function setLength(int $length): void
    {
        $this->length = $length;
    }

    public function toJson(): string
    {
        return json_encode([
            'id' => $this->id,
            'type' => $this->type->name,
            'name' => $this->name,
            'img' => $this->img,
            'descriptions' => $this->descriptions,
            'capacity' => $this->capacity,
            'length' => $this->length
        ]);
    }
}
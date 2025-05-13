<?php

class Cruise
{

    private int $id;

    private string $name;
    private string $description;
    private string $short_descriptions;

    private string $img;

    private string $start_date;
    private string $end_date;

    private int $duration;

    private Boat $boat;
    private array $stages;
    private array $options;

    private float $price;


    public function __construct(int $id, string $name, string $description, string $short_descriptions, string $img, string $start_date, string $end_date, int $duration, Boat $boat, array $stage, array $options, float $price)
    {
        $this->id = $id;
        $this->name = $name;
        $this->description = $description;
        $this->short_descriptions = $short_descriptions;
        $this->img = $img;
        $this->start_date = $start_date;
        $this->end_date = $end_date;
        $this->duration = $duration;
        $this->boat = $boat;
        $this->stages = $stage;
        $this->options = $options;

        $this->price = $price;
    }

    public function mapOptionsByType(): array
    {
        $optionsByType = [];
        foreach ($this->options as $option) {
            $optionsByType[$option->getType()][] = $option;
        }
        return $optionsByType;
    }

    public function getId(): int
    {
        return $this->id;
    }


    public function getName(): string
    {
        return $this->name;
    }

    public function getDescription(): string
    {
        return $this->description;
    }

    public function getShortDescriptions(): string
    {
        return $this->short_descriptions;
    }

    public function getImg(): string
    {
        return $this->img;
    }

    public function getStartDate(): string
    {
        return $this->start_date;
    }

    public function getEndDate(): string
    {
        return $this->end_date;
    }

    public function getDuration(): int
    {
        return $this->duration;
    }

    public function getBoat(): Boat
    {
        return $this->boat;
    }

    public function getStages(): array
    {
        return $this->stages;
    }

    public function getOptions(): array
    {
        return $this->options;
    }


    public function getPrice(): float
    {
        return $this->price;
    }

    public function toJson(): string
    {
        $stagesJson = [];
        foreach ($this->stages as $stage) {
            $stagesJson[] = json_decode($stage->toJson(), true);
        }

        $optionsByType = [];
        foreach ($this->options as $option) {
            $optionsByType[$option->getType()][] = json_decode($option->toJson(), true);
        }

        return json_encode([
            'id' => $this->id,
            'name' => $this->name,
            'description' => $this->description,
            'short_descriptions' => $this->short_descriptions,
            'img' => $this->img,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'duration' => $this->duration,
            'boat' => json_decode($this->boat->toJson(), true),
            'stages' => $stagesJson,
            'options' => $optionsByType,
            'price' => $this->price
        ]);
    }
}
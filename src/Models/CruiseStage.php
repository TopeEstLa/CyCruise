<?php

class CruiseStage
{

    private int $id;

    private string $name;
    private string $descriptions;

    private string $start_date;
    private string $end_date;

    private float $latitude;
    private float $longitude;


    public function __construct(int $id, string $name, string $descriptions, string $start_date, string $end_date, float $latitude, float $longitude)
    {
        $this->id = $id;
        $this->name = $name;
        $this->descriptions = $descriptions;
        $this->start_date = $start_date;
        $this->end_date = $end_date;
        $this->latitude = $latitude;
        $this->longitude = $longitude;
    }

    public function buildGoogleMapUrl(): string
    {
        $url = "https://www.google.com/maps?q={$this->latitude},{$this->longitude}&t=k&z=5&output=embed";

        return $url;
    }

    public function getId(): int
    {
        return $this->id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function getDescriptions(): string
    {
        return $this->descriptions;
    }

    public function getStartDate(): string
    {
        return $this->start_date;
    }

    public function getEndDate(): string
    {
        return $this->end_date;
    }

    public function getLatitude(): float
    {
        return $this->latitude;
    }

    public function getLongitude(): float
    {
        return $this->longitude;
    }

    public function toJson(): string
    {
        return json_encode([
            'id' => $this->id,
            'name' => $this->name,
            'descriptions' => $this->descriptions,
            'start_date' => $this->start_date,
            'end_date' => $this->end_date,
            'latitude' => $this->latitude,
            'longitude' => $this->longitude,
            'google_map_url' => $this->buildGoogleMapUrl()
        ]);
    }
}
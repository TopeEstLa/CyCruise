<?php

enum InvoiceState
{

    case CANCELED;
    case PENDING;
    case CONFIRMED;

    public static function from(mixed $state)
    {
        return match ($state) {
            'CANCELED' => self::CANCELED,
            'PENDING' => self::PENDING,
            'CONFIRMED' => self::CONFIRMED,
            default => throw new \InvalidArgumentException("Invalid account state")
        };
    }

    public function toString(): string
    {
        return match ($this) {
            self::CANCELED => 'CANCELED',
            self::PENDING => 'PENDING',
            self::CONFIRMED => 'CONFIRMED',
        };
    }
}

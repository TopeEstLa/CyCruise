<?php

enum UserRole
{
    case DEFAULT;
    case VIP;
    case PREMIUM;
    case ADMIN;
    case BAN;

    public static function from(mixed $state)
    {
        return match ($state) {
            'DEFAULT' => self::DEFAULT,
            'VIP' => self::VIP,
            'PREMIUM' => self::PREMIUM,
            'ADMIN' => self::ADMIN,
            'BAN' => self::BAN,
            default => throw new \InvalidArgumentException("Invalid account state")
        };
    }

    public function toString(): string
    {
        return match ($this) {
            self::DEFAULT => 'DEFAULT',
            self::VIP => 'VIP',
            self::PREMIUM => 'PREMIUM',
            self::BAN => 'BAN',
            self::ADMIN => 'ADMIN',
        };
    }
}

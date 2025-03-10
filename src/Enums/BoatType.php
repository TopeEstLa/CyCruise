<?php

enum BoatType
{

    case DEFAULT;
    case EXPLORA;

    public static function from(mixed $state)
    {
        return match ($state) {
            'DEFAULT' => self::DEFAULT,
            'EXPLORA' => self::EXPLORA,
            default => throw new \InvalidArgumentException("Invalid boat type")
        };
    }

    public function toString(): string
    {
        return match ($this) {
            self::DEFAULT => 'DEFAULT',
            self::EXPLORA => 'EXPLORA',
        };
    }

}

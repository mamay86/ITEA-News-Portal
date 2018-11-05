<?php

namespace App\Util;

final class PasswordUtil
{
    private function __construct()
    {
    }

    public static function generateRandom(int $length = 8): string
    {
        return \bin2hex(\random_bytes($length));
    }
}

<?php

namespace App\Util;

/**
 * Provides useful methods for working with passwords.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class PasswordUtil
{
    /**
     * This class should not be instantiated.
     */
    private function __construct()
    {
    }

    /**
     * Generates random password with needed length.
     *
     * @param int $length
     *
     * @return string
     */
    public static function generateRandom(int $length = 8): string
    {
        return \bin2hex(\random_bytes($length));
    }
}

<?php

namespace App\Api\Entity;

/**
 * Contract for entities.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
interface EntityInterface
{
    /**
     * Gets unique ID of entity.
     *
     * @return mixed
     */
    public function getId();
}

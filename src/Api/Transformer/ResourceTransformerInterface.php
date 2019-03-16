<?php

namespace App\Api\Transformer;

/**
 * Interface of transformer for getting data from concrete entity for resource.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
interface ResourceTransformerInterface
{
    /**
     * Gets type of resource.
     *
     * @return string
     */
    public function getType(): string;

    /**
     * Gets resource attributes.
     *
     * @param $entity
     *
     * @return iterable
     */
    public function getAttributes($entity): iterable;

    /**
     * Gets resource links.
     *
     * @param $entity
     *
     * @return iterable
     */
    public function getLinks($entity): iterable;
}

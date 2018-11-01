<?php


namespace App\Api\Document;

/**
 * Represents API response.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class Document implements \JsonSerializable
{
    private $links = [];
    private $data = [];

    public function setLinks(array $links): void
    {
        $this->links = $links;
    }

    public function setData($data): void
    {
        $this->data = $data;
    }

    /**
     * {@inheritdoc}
     */
    public function jsonSerialize()
    {
        return [
            'links' => $this->links,
            'data' => $this->data,
        ];
    }
}

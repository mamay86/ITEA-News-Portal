<?php

namespace App\Service\Post;

use App\Api\Document\Document;
use App\Api\Document\DocumentBuilder;
use App\Api\Transformer\PostResourceTransformer;

/**
 * Provides post resource for using in API.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class ApiPostService extends PostService implements PostServiceInterface
{
    /**
     * {@inheritdoc}
     */
    public function findOne(int $id): Document
    {
        $post = parent::findOne($id);

        return DocumentBuilder::getInstance(new PostResourceTransformer())
            ->setEntity($post)
            ->getDocument()
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function create(array $data): Document
    {
        $post = parent::create($data['attributes']);

        return DocumentBuilder::getInstance(new PostResourceTransformer())
            ->setEntity($post)
            ->getDocument()
        ;
    }
}

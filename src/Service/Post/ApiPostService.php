<?php

namespace App\Service\Post;

use App\Api\Resource\Post;
use App\Repository\CategoryRepositoryInterface;
use App\Repository\PostRepositoryInterface;

/**
 * Provides post resource for using in API.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class ApiPostService extends PostService implements PostServiceInterface
{
    private $categoryRepository;

    public function __construct(
        CategoryRepositoryInterface $categoryRepository,
        PostRepositoryInterface $postRepository
    ) {
        parent::__construct($postRepository);

        $this->categoryRepository = $categoryRepository;
    }

    /**
     * {@inheritdoc}
     */
    public function findOne(int $id): Post
    {
        $post = parent::findOne($id);

        return $this->entityToResource($post);
    }

    /**
     * {@inheritdoc}
     */
    public function create(array $data): Post
    {
        $attributes = $data['attributes'];

        // TODO: move create entity logic to PostService
        $category = $this->categoryRepository->findBySlug($attributes['category']);

        $post = new \App\Entity\Post();
        $post->setCategory($category);
        $post->setTitle($attributes['title']);
        $post->setBody($attributes['content']);

        $this->postRepository->save($post);

        return $this->entityToResource($post);
    }

    /**
     * @todo Move this logic to resource transformer class
     */
    private function entityToResource(\App\Entity\Post $entity): Post
    {
        $resource = new Post();
        $resource->setId($entity->getId());
        $resource->setCategory($entity->getCategory()->getTitle());
        $resource->setTitle($entity->getTitle());
        $resource->setContent($entity->getBody());
        $resource->setCreatedAt($entity->getCreatedAt());
        $resource->setUpdatedAt($entity->getUpdatedAt());

        return $resource;
    }
}

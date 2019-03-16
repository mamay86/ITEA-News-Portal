<?php

namespace App\Service\Post;

use App\Entity\Post;
use App\Repository\CategoryRepositoryInterface;
use App\Repository\PostRepositoryInterface;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

/**
 * Service provides post data from the storage.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
class PostService implements PostServiceInterface
{
    private $postRepository;
    private $categoryRepository;

    public function __construct(
        CategoryRepositoryInterface $categoryRepository,
        PostRepositoryInterface $postRepository
    ) {
        $this->categoryRepository = $categoryRepository;
        $this->postRepository = $postRepository;
    }

    /**
     * {@inheritdoc}
     */
    public function findOne(int $id)
    {
        $post = $this->postRepository->findOne($id);

        if (null === $post) {
            throw new NotFoundHttpException(\sprintf('Post with ID %d not found', $id));
        }

        return $post;
    }

    /**
     * Creates new post.
     *
     * @param array $data
     *
     * @return Post
     */
    public function create(array $data)
    {
        $category = $this->categoryRepository->findBySlug($data['category']);

        $post = new Post();
        $post->setCategory($category);
        $post->setTitle($data['title']);
        $post->setBody($data['content']);

        $this->postRepository->save($post);

        return $post;
    }

    public function delete(int $id): void
    {
        $this->postRepository->delete($id);
    }
}

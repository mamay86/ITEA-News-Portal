<?php

namespace App\Command;

use App\Entity\Post;
use App\Repository\CategoryRepositoryInterface;
use App\Repository\PostRepositoryInterface;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

/**
 * Command for generating fake posts for development purposes.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class PostsGeneratorCommand extends Command
{
    private $categoryRepository;
    private $postRepository;

    public function __construct(
        CategoryRepositoryInterface $categoryRepository,
        PostRepositoryInterface $postRepository,
        string $name = null
    ) {
        parent::__construct($name);

        $this->categoryRepository = $categoryRepository;
        $this->postRepository = $postRepository;
    }

    /**
     * {@inheritdoc}
     */
    protected function configure()
    {
        $this
            ->setName('app:posts:generate')
            ->setDescription('Generate fake posts for development purposes.')
            ->addArgument(
                'count',
                InputArgument::OPTIONAL,
                'Set count of posts to generate',
                1
            )
        ;
    }

    /**
     * {@inheritdoc}
     */
    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $count = $input->getArgument('count');
        $faker = \Faker\Factory::create();

        $categories = $this->categoryRepository->findAllCategories();
        $posts = [];

        for ($i = 0; $i < $count; $i++) {
            $post = new Post();
            $post
                ->setCategory($categories[\array_rand($categories, 1)])
                ->setTitle($faker->sentence)
                ->setBody($faker->text)
            ;
            $posts[] = $post;
        }

        $this->postRepository->saveAll($posts);

        $output->writeln(\sprintf('%d posts were successfully created!', $count));
    }
}

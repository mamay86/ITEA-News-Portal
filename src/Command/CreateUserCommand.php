<?php

namespace App\Command;

use App\Entity\User;
use App\Repository\UserRepositoryInterface;
use App\Util\PasswordUtil;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

final class CreateUserCommand extends Command
{
    private $passwordEncoder;
    private $userRepository;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder, UserRepositoryInterface $userRepository, string $name = null)
    {
        parent::__construct($name);

        $this->passwordEncoder = $passwordEncoder;
        $this->userRepository = $userRepository;
    }

    protected function configure()
    {
        $this
            ->setName('app:create-user')
            ->setDescription('Create new user.')
            ->addArgument('username', InputArgument::REQUIRED, 'Username')
            ->addArgument('email', InputArgument::REQUIRED, 'User\'s email address')
            ->addArgument('password', InputArgument::OPTIONAL,'User\'s password')
        ;
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $output->writeln('<info>Creating new user...</info>');

        $user = new User();

        $plainPassword = $input->getArgument('password') ?? PasswordUtil::generateRandom();
        $password = $this->passwordEncoder->encodePassword($user, $plainPassword);

        $username = $input->getArgument('username');

        $user
            ->setUsername($username)
            ->setEmail($input->getArgument('email'))
            ->setPassword($password)
        ;

        try {
            $this->userRepository->save($user);

            if (null === $input->getArgument('password')) {
                $output->writeln(\sprintf('<info>Generated password: %s</info>', $plainPassword));
            }

            $output->writeln(\sprintf('<info>User %s was successfully created</info>', $username));
        } catch (\Exception $e) {
            $output->writeln(
                \sprintf('<error>Cannot create user. Details: %s</error>', $e->getMessage())
            );
        }
    }
}

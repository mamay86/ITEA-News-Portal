<?php

namespace App\Service;

use Greeflas\Bundle\NewsletterBundle\Dto\Subscriber;
use Greeflas\Bundle\NewsletterBundle\Service\NewsletterSubscriberInterface;

final class NewsletterSubscriber implements NewsletterSubscriberInterface
{
    public function save(Subscriber $subscriber)
    {
        die(var_dump($subscriber->getEmail()));
    }
}

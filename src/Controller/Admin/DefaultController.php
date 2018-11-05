<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

final class DefaultController extends AbstractController
{
    public function index()
    {
        return $this->render('admin/default/index.html.twig');
    }
}

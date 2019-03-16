<?php

namespace App\Controller\Admin;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

/**
 * Default controller for admin panel.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
final class DefaultController extends AbstractController
{
    /**
     * Dashboard page.
     *
     * @return Response
     */
    public function index(): Response
    {
        return $this->render('admin/default/index.html.twig');
    }
}

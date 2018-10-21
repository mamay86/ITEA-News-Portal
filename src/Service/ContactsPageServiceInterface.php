<?php

namespace App\Service;

use App\Model\ContactsPage;

/**
 * Contract for contacts page.
 *
 * @author Vladimir Kuprienko <vldmr.kuprienko@gmail.com>
 */
interface ContactsPageServiceInterface extends PageServiceInterface
{
    /**
     * Gets contacts page data.
     *
     * @return ContactsPage
     */
    public function getData(): ContactsPage;
}

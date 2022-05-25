<?php

namespace App\Repositories\Location;

use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Interface LocationRepository.
 *
 * @package namespace App\Repositories\Location;
 */
interface LocationRepository extends RepositoryInterface
{
    public function getAll();
}

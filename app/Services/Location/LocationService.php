<?php

namespace App\Services\Location;

use App\Repositories\Location\LocationRepository;
use App\Services\BaseService;

class LocationService extends BaseService
{
    public function repository(): string
    {
        return LocationRepository::class;
    }
}


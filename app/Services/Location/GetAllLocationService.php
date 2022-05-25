<?php

namespace App\Services\Location;

use Exception;
use Illuminate\Http\JsonResponse;

class GetAllLocationService extends LocationService
{
    public function getAll()
    {
        try
        {
            $location=$this->repository->getAll();
            return $location;
        }
        catch(\Exception $e)
        {
            report($e);
            return $this->sendError(trans('error.E002.message'),trans('error.E002.status'));
        }

    }
}


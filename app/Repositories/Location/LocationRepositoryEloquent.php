<?php

namespace App\Repositories\Location;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use App\Repositories\Location\LocationRepository;
use App\Models\Location;
use App\Validators\Location\LocationValidator;

/**
 * Class LocationRepositoryEloquent.
 *
 * @package namespace App\Repositories\Location;
 */
class LocationRepositoryEloquent extends BaseRepository implements LocationRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    protected $locations;
    
    public function __construct(Location $locations)
    {
        $this->locations=$locations;
    }
    public function model()
    {
        return Location::class;
    }



    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }

    public function getAll()
    {
        return $this->locations->get();
    }
}

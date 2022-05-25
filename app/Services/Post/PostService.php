<?php

namespace App\Services\Post;

use App\Repositories\Post\PostRepository;
use App\Services\BaseService;

class PostService extends BaseService
{
    public function repository(): string
    {
        return PostRepository::class;
    }
}

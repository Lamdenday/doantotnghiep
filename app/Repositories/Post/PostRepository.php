<?php

namespace App\Repositories\Post;

use Prettus\Repository\Contracts\RepositoryInterface;

/**
 * Interface PostRepository.
 *
 * @package namespace App\Repositories\Post;
 */
interface PostRepository extends RepositoryInterface
{
    public function getPostById($id);

    public function getAll();

    public function storePost($params);

    public function updatePost($params,$id);

    public function deletePost($id);
}

<?php

namespace App\Repositories\Post;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use App\Repositories\Post\PostRepository;
use App\Models\Post;
use App\Validators\Post\PostValidator;

/**
 * Class PostRepositoryEloquent.
 *
 * @package namespace App\Repositories\Post;
 */
class PostRepositoryEloquent extends BaseRepository implements PostRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    protected $post;

    public function __construct(Post $post)
    {
        $this->post=$post;
    }

    public function model()
    {
        return Post::class;
    }



    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }

    public function getPostById($id)
    {
        return $this->post->where('id',$id)->get();
    }

    public function getAll()
    {
        return $this->post->get();
    }

    public function storePost($params)
    {
        return $this->post->create($params);
    }

    public function updatePost($params,$id)
    {
        $posts = $this->post->find($id);
        $posts->title=$params['title'];
        $posts->descritpion=$params['description'];
        $posts->update();
    }

    public function deletePost($id)
    {
        $posts=$this->post->find($id);
        return $posts->delete();
    }
}

<?php

namespace App\Services\Post;

use Exception;
use Illuminate\Http\JsonResponse;

class GetAllPostService extends PostService
{
    public function getAll(): JsonResponse
    {
        try
        {
            $post=$this->repository->getAll();
            return $this->sendResponse(trans('Lay du lieu thanh cong'),$post);
        }
        catch(\Exception $e)
        {
            report($e);
            return $this->sendError(trans('error.E002.message'),trans('error.E002.status'));
        }

    }
}

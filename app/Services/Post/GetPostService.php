<?php

namespace App\Services\Post;

use Exception;
use Illuminate\Http\JsonResponse;

class GetPostService extends PostService
{
    public function getPostById($id): JsonResponse
    {
        try
        {
            $response = $this->repository->getPostById($id);
            return $this->sendResponse(trans('Lay du lieu thanh cong'),$response);
        }
        catch(\Exception $e)
        {
            report($e);
            return $this->sendError(trans('error.E002.message'),trans('error.E002.status'));
        }
    }
}

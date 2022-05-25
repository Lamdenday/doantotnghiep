<?php

namespace App\Services\Post;

use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;

class CreatePostService extends PostService
{
    public function store($params): JsonResponse
    {
        DB::beginTransaction();
        try
        {
            $post=$this->repository->storePost($params);
            DB::commit();
            return $this->sendResponse(trans('Them moi du lieu thanh cong'),$post);
        }
        catch(\Exception $e)
        {
            DB::rollBack();
            report($e);
            return $this->sendError(trans('error.E002.message'),trans('error.E002.status'));
        }

    }
}

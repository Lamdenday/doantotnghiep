<?php

namespace App\Services\Post;

use Exception;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;

class DeletePostService extends PostService
{
    public function delete($id): JsonResponse
    {
        DB::beginTransaction();
        try
        {
            $post=$this->repository->deletePost($id);
            DB::commit();
            return $this->sendResponse(trans('Xoa du lieu thanh cong!'),$post);
        }
        catch(\Exception $e)
        {
            DB::rollBack();
            report($e);
            return $this->sendError(trans('error.E002.message'),trans('error.E002.status'));
        }

    }
}

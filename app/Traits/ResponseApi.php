<?php

namespace App\Traits;

trait ResponseApi
{
    protected function sendResponse($message = null, $data = null)
    {
        $response = [
            'status_code' => 0,
            'messsage' => $message,
        ];

        if(!empty($data))
        {
            $response['data' ]=  $data;
        }
        else
        {
            $response['data'] = [];
        }

        return response()->json($response,200);
    }

    protected function sendError($errorMessages,$statusCode = 422,$dataError=null)
    {
        $response = [
            'status_code' => 1,
            'message'=>$errorMessages,
        ];

        if(!empty($dataError))
        {
            $response['errors'] = $dataError;
        }

        return response()->json($response,(int)$statusCode);
    }
}

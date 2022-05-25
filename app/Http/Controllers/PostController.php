<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Services\Post\CreatePostService;
use App\Services\Post\DeletePostService;
use App\Services\Post\GetPostService;
use App\Services\Post\GetAllPostService;
use App\Services\Post\UpdatePostService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;


class PostController extends Controller
{

    protected $GetPostService;
    protected $CreatePostService;
    protected $GetAllPostService;
    protected $UpdatePostService;
    protected $DeletePostService;

    public function __construct()
    {
        $this->GetPostService=app(GetPostService::class);
        $this->CreatePostService=app(CreatePostService::class);
        $this->GetAllPostService=app(GetAllPostService::class);
        $this->UpdatePostService=app(UpdatePostService::class);
        $this->DeletePostService=app(DeletePostService::class);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(): JsonResponse
    {
        return $this->GetAllPostService->getAll();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       return $this->CreatePostService->store($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request , GetPostService $GetPostService ,Post $post,$id)
    {
         $result=$this->GetPostService->getPostById($id);
         return response()->json($result);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post,$id)
    {
        return $this->UpdatePostService->update($request->all(),$id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post,$id)
    {
        return $this->DeletePostService->delete($id);
    }
}

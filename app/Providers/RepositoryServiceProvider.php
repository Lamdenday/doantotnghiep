<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->app->bind(\App\Repositories\Post\PostRepository::class,\App\Repositories\Post\PostRepositoryEloquent::class);
        $this->app->bind(\App\Repositories\Location\LocationRepository::class,\App\Repositories\Location\LocationRepositoryEloquent::class);
    }
}

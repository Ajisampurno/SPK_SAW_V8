<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Support\Facades\URL;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        ////Bila menggunakan NGROK
        //if (config('app.env') === 'local') {
        //    URL::forceScheme('https');
        //}

        Gate::define('admin', function (User $user) {
            return $user->is_admin === 'admin';
        });

        Gate::define('ricky', function (User $user) {
            return $user->name === 'Ricky Ramadhan Arya Hussein';
        });

        Paginator::useBootstrap();
    }
}

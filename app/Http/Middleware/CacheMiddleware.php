<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Cache;

class CacheMiddleware
{
    public function handle($request, Closure $next)
    {
        if (Cache::has($request->url())) {
            return response(Cache::get($request->url()));
        }
        return $next($request);
    }
} 
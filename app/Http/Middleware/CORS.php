<?php

namespace App\Http\Middleware;

use Closure;
use Response;

class CORS
{

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);
        $response->header('Access-Control-Allow-Origin', $request->server('HTTP_ORIGIN'));
        $response->header('Access-Control-Allow-Headers',
            'Origin, Content-Type, Cookie, Accept, Access-Token, ID-Token');
        $response->header('Access-Control-Allow-Methods', 'GET, POST, PATCH, PUT, OPTIONS, DELETE');
        $response->header('Access-Control-Allow-Credentials', 'true');
        return $response;
    }

}
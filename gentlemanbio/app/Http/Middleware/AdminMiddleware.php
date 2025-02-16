<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    public function handle(Request $request, Closure $next): Response
    {
        if (auth()->guard('admin')->check()) {
            return $next($request);
        }

        return redirect()->route('login')->withErrors([
            'email' => 'Accès réservé aux administrateurs',
        ]);
    }
}
?>

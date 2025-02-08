<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ config('app.name') }} - @yield('title')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100">
    <header class="bg-white shadow-md">
        <nav class="container mx-auto px-4 py-4">
            <div class="flex justify-between items-center">
                <a href="{{ route('products.index') }}" class="text-2xl font-bold text-green-600">
                    GentlemanBio
                </a>

                <div class="flex items-center space-x-6">
                    <a href="{{ route('products.index') }}" class="text-gray-600 hover:text-green-600">Produits</a>
                    <a href="{{ route('cart.index') }}" class="text-gray-600 hover:text-green-600">
                        Panier
                        @if(session('cart'))
                            <span class="bg-green-500 text-white rounded-full px-2 py-1 text-xs">
                                {{ count(session('cart')) }}
                            </span>
                        @endif
                    </a>

                    @auth
                        <div class="relative" x-data="{ open: false }">
                            <button @click="open = !open" class="flex items-center">
                                {{ Auth::user()->name }}
                                <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path d="M19 9l-7 7-7-7"></path>
                                </svg>
                            </button>

                            <div x-show="open" @click.away="open = false" class="absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg">
                                @if(Auth::user()->role === 'admin')
                                    <a href="{{ route('admin.dashboard') }}" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                        Dashboard Admin
                                    </a>
                                @endif

                                <a href="{{ route('orders.index') }}" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                    Mes commandes
                                </a>

                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf
                                    <button type="submit" class="block w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">
                                        Déconnexion
                                    </button>
                                </form>
                            </div>
                        </div>
                    @else
                        <a href="{{ route('login') }}" class="text-gray-600 hover:text-green-600">Connexion</a>
                        <a href="{{ route('register') }}" class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">
                            Inscription
                        </a>
                    @endauth
                </div>
            </div>
        </nav>
    </header>

    <main class="container mx-auto px-4 py-8">
        @if(session('success'))
            <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif

        @if(session('error'))
            <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-4">
                {{ session('error') }}
            </div>
        @endif

        @yield('content')
    </main>

    <footer class="bg-gray-800 text-white mt-12">
        <div class="container mx-auto px-4 py-8">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <div>
                    <h3 class="text-lg font-bold mb-4">À propos</h3>
                    <p class="text-gray-300">
                        GentlemanBio - Votre boutique de produits bio et naturels.
                    </p>
                </div>

                <div>
                    <h3 class="text-lg font-bold mb-4">Liens utiles</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-300 hover:text-white">CGV</a></li>
                        <li><a href="#" class="text-gray-300 hover:text-white">Politique de confidentialité</a></li>
                        <li><a href="#" class="text-gray-300 hover:text-white">Contact</a></li>
                    </ul>
                </div>

                <div>
                    <h3 class="text-lg font-bold mb-4">Contact</h3>
                    <ul class="space-y-2 text-gray-300">
                        <li>Email: contact@gentlemanbio.com</li>
                        <li>Tél: 01 23 45 67 89</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>

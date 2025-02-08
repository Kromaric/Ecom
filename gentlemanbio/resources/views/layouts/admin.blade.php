<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - @yield('title')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100">
    <div class="min-h-screen flex">
        <!-- Sidebar -->
        <div class="bg-gray-800 text-white w-64 py-6 flex-shrink-0">
            <div class="px-6 mb-8">
                <h1 class="text-2xl font-bold">GentlemanBio</h1>
                <p class="text-gray-400 text-sm">Administration</p>
            </div>

            <nav class="px-4">
                <a href="{{ route('admin.dashboard') }}"
                   class="block px-4 py-2 rounded {{ request()->routeIs('admin.dashboard') ? 'bg-gray-700' : 'hover:bg-gray-700' }}">
                    Dashboard
                </a>
                <a href="{{ route('admin.products.index') }}"
                   class="block px-4 py-2 rounded {{ request()->routeIs('admin.products.*') ? 'bg-gray-700' : 'hover:bg-gray-700' }}">
                    Produits
                </a>
                <a href="{{ route('admin.categories.index') }}"
                   class="block px-4 py-2 rounded {{ request()->routeIs('admin.categories.*') ? 'bg-gray-700' : 'hover:bg-gray-700' }}">
                    Catégories
                </a>
                <a href="{{ route('admin.orders.index') }}"
                   class="block px-4 py-2 rounded {{ request()->routeIs('admin.orders.*') ? 'bg-gray-700' : 'hover:bg-gray-700' }}">
                    Commandes
                </a>
                <a href="{{ route('admin.reviews.index') }}"
                   class="block px-4 py-2 rounded {{ request()->routeIs('admin.reviews.*') ? 'bg-gray-700' : 'hover:bg-gray-700' }}">
                    Avis
                </a>
            </nav>
        </div>

        <!-- Content -->
        <div class="flex-1">
            <header class="bg-white shadow">
                <div class="flex justify-between items-center px-6 py-4">
                    <h2 class="text-xl font-semibold">@yield('title')</h2>
                    <div class="flex items-center">
                        <span class="mr-4">{{ Auth::user()->name }}</span>
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <button type="submit" class="text-gray-600 hover:text-gray-800">
                                Déconnexion
                            </button>
                        </form>
                    </div>
                </div>
            </header>

            <main class="p-6">
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
        </div>
    </div>
</body>
</html>

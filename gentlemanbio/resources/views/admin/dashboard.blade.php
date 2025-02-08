@extends('layouts.admin')

@section('title', 'Tableau de bord')

@section('content')
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
    <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-gray-500 text-sm font-medium mb-2">Total Commandes</h3>
        <div class="flex items-center">
            <div class="text-3xl font-bold">{{ $ordersCount }}</div>
            <span class="ml-2 text-sm text-green-600">+{{ $newOrdersCount }} aujourd'hui</span>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-gray-500 text-sm font-medium mb-2">Chiffre d'affaires</h3>
        <div class="flex items-center">
            <div class="text-3xl font-bold">{{ number_format($revenue, 2) }} €</div>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-gray-500 text-sm font-medium mb-2">Produits en rupture</h3>
        <div class="flex items-center">
            <div class="text-3xl font-bold">{{ $outOfStockCount }}</div>
        </div>
    </div>

    <div class="bg-white rounded-lg shadow p-6">
        <h3 class="text-gray-500 text-sm font-medium mb-2">Avis en attente</h3>
        <div class="flex items-center">
            <div class="text-3xl font-bold">{{ $pendingReviewsCount }}</div>
        </div>
    </div>
</div>

<div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
    <!-- Dernières commandes -->
    <div class="bg-white rounded-lg shadow">
        <div class="p-6 border-b">
            <h2 class="text-lg font-semibold">Dernières commandes</h2>
        </div>
        <div class="p-6">
            @if($latestOrders->count() > 0)
                <div class="space-y-4">
                    @foreach($latestOrders as $order)
                        <div class="flex justify-between items-center">
                            <div>
                                <div class="font-medium">Commande #{{ $order->id }}</div>
                                <div class="text-sm text-gray-500">{{ $order->created_at->format('d/m/Y H:i') }}</div>
                            </div>
                            <div>
                                <span class="px-3 py-1 rounded-full text-sm
                                    @if($order->status === 'paid') bg-green-100 text-green-800
                                    @elseif($order->status === 'pending') bg-yellow-100 text-yellow-800
                                    @else bg-gray-100 text-gray-800 @endif">
                                    {{ $order->status }}
                                </span>
                            </div>
                            <div class="font-medium">{{ number_format($order->total_amount, 2) }} €</div>
                        </div>
                    @endforeach
                </div>
                <div class="mt-4">
                    <a href="{{ route('admin.orders.index') }}" class="text-green-600 hover:text-green-700">
                        Voir toutes les commandes →
                    </a>
                </div>
            @else
                <p class="text-gray-500">Aucune commande récente</p>
            @endif
        </div>
    </div>

    <!-- Derniers avis -->
    <div class="bg-white rounded-lg shadow">
        <div class="p-6 border-b">
            <h2 class="text-lg font-semibold">Derniers avis</h2>
        </div>
        <div class="p-6">
            @if($latestReviews->count() > 0)
                <div class="space-y-4">
                    @foreach($latestReviews as $review)
                        <div class="border-b pb-4 last:border-0 last:pb-0">
                            <div class="flex justify-between items-start mb-2">
                                <div>
                                    <div class="font-medium">{{ $review->user->name }}</div>
                                    <div class="text-sm text-gray-500">
                                        Sur {{ $review->product->name }}
                                    </div>
                                </div>
                                <div class="flex text-yellow-400">
                                    @for($i = 1; $i <= 5; $i++)
                                        <svg class="w-5 h-5 {{ $i <= $review->rating ? 'fill-current' : 'fill-gray-300' }}"
                                             viewBox="0 0 20 20">
                                            <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                        </svg>
                                    @endfor
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm">{{ Str::limit($review->comment, 100) }}</p>
                        </div>
                    @endforeach
                </div>
                <div class="mt-4">
                    <a href="{{ route('admin.reviews.index') }}" class="text-green-600 hover:text-green-700">
                        Voir tous les avis →
                    </a>
                </div>
            @else
                <p class="text-gray-500">Aucun avis récent</p>
            @endif
        </div>
    </div>
</div>
@endsection

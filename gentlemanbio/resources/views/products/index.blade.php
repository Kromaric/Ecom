@extends('layouts.app')

@section('title', 'Nos Produits')

@section('content')
    <div class="mb-8">
        <h1 class="text-3xl font-bold mb-4">Nos Produits</h1>

        <div class="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-4 gap-6">
            @foreach($products as $product)
                <div class="bg-white rounded-lg shadow-md overflow-hidden">
                    <img src="{{ $product->image_url ?? asset('images/placeholder.jpg') }}"
                         alt="{{ $product->name }}"
                         class="w-full h-48 object-cover">

                    <div class="p-4">
                        <h2 class="text-xl font-semibold mb-2">{{ $product->name }}</h2>
                        <p class="text-gray-600 mb-4 line-clamp-2">{{ $product->description }}</p>

                        <div class="flex justify-between items-center">
                            <span class="text-green-600 font-bold">{{ number_format($product->price, 2) }} €</span>

                            <a href="{{ route('products.show', $product->slug) }}"
                               class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">
                                Voir détails
                            </a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="mt-8">
            {{ $products->links() }}
        </div>
    </div>
@endsection

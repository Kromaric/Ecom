@extends('layouts.app')

@section('title', 'Panier')

@section('content')
<div class="bg-white rounded-lg shadow-md p-6">
    <h1 class="text-3xl font-bold mb-8">Mon Panier</h1>

    @if(session()->has('cart') && count(session('cart')) > 0)
        <form action="{{ route('cart.update') }}" method="POST">
            @csrf
            @method('PATCH')

            <div class="space-y-6">
                @php $total = 0; @endphp

                @foreach(session('cart') as $key => $item)
                    @php
                        $product = \App\Models\Product::find($item['product_id']);
                        $variant = isset($item['variant_id']) ? \App\Models\ProductVariant::find($item['variant_id']) : null;
                        $price = $variant ? $variant->price : $product->price;
                        $subtotal = $price * $item['quantity'];
                        $total += $subtotal;
                    @endphp

                    <div class="flex items-center border-b pb-6">
                        <img src="{{ $product->image_url ?? asset('images/placeholder.jpg') }}"
                             alt="{{ $product->name }}"
                             class="w-24 h-24 object-cover rounded">

                        <div class="ml-6 flex-1">
                            <h3 class="text-lg font-semibold">{{ $product->name }}</h3>

                            @if($variant)
                                <p class="text-gray-600">
                                    {{ $variant->size }} - {{ $variant->color }}
                                </p>
                            @endif

                            <div class="flex items-center mt-2">
                                <input type="number"
                                       name="quantities[{{ $key }}]"
                                       value="{{ $item['quantity'] }}"
                                       min="0"
                                       class="w-20 border rounded-md p-1">

                                <span class="ml-6">
                                    {{ number_format($price, 2) }} € × {{ $item['quantity'] }} =
                                    <span class="font-semibold">{{ number_format($subtotal, 2) }} €</span>
                                </span>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>

            <div class="mt-8 flex justify-between items-center">
                <div>
                    <button type="submit"
                            class="bg-gray-200 text-gray-700 px-6 py-2 rounded-md hover:bg-gray-300">
                        Mettre à jour
                    </button>

                    <a href="{{ route('cart.clear') }}"
                       onclick="event.preventDefault(); document.getElementById('clear-cart').submit();"
                       class="ml-4 text-red-600 hover:text-red-700">
                        Vider le panier
                    </a>
                </div>

                <div class="text-xl">
                    Total: <span class="font-bold">{{ number_format($total, 2) }} €</span>
                </div>
            </div>

            <div class="mt-8">
                <a href="{{ route('checkout') }}"
                   class="block w-full bg-green-600 text-white text-center py-3 rounded-md hover:bg-green-700">
                    Procéder au paiement
                </a>
            </div>
        </form>

        <form id="clear-cart" action="{{ route('cart.clear') }}" method="POST" class="hidden">
            @csrf
            @method('DELETE')
        </form>
    @else
        <div class="text-center py-12">
            <p class="text-gray-600 mb-6">Votre panier est vide</p>
            <a href="{{ route('products.index') }}"
               class="bg-green-600 text-white px-6 py-2 rounded-md hover:bg-green-700">
                Continuer les achats
            </a>
        </div>
    @endif
</div>
@endsection

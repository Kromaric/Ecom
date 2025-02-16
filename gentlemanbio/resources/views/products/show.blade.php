@extends('layouts.app')

@section('title', $product->name)

@section('content')
<div class="bg-white rounded-lg shadow-md p-6">
    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
        <!-- Images du produit -->
        <div>
            <img src="{{ asset('images/default-product.png') }}"
                alt="{{ $product->name }}"
                class="w-full h-96 object-cover rounded-lg">
        </div>

        <!-- Informations produit -->
        <div>
            <h1 class="text-3xl font-bold mb-4">{{ $product->name }}</h1>
            <div class="text-2xl text-green-600 font-bold mb-4">
                {{ number_format($product->price, 2) }} €
            </div>

            <div class="mb-6">
                <h2 class="text-lg font-semibold mb-2">Description</h2>
                <p class="text-gray-600">{{ $product->description }}</p>
            </div>

            @if($product->variants->count() > 0)
                <div class="mb-6">
                    <h2 class="text-lg font-semibold mb-2">Variantes</h2>
                    <select name="variant_id" class="w-full border rounded-md p-2">
                        @foreach($product->variants as $variant)
                            <option value="{{ $variant->id }}">
                                {{ $variant->size }} - {{ $variant->color }}
                                ({{ number_format($variant->price, 2) }} €)
                            </option>
                        @endforeach
                    </select>
                </div>
            @endif

            <form action="{{ route('cart.add') }}" method="POST" class="mb-6">
                @csrf
                <input type="hidden" name="product_id" value="{{ $product->id }}">

                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Quantité</label>
                    <input type="number" name="quantity" value="1" min="1"
                           class="w-24 border rounded-md p-2">
                </div>

                <button type="submit"
                        class="w-full bg-green-600 text-white py-3 rounded-md hover:bg-green-700">
                    Ajouter au panier
                </button>
            </form>

            <!-- Tags -->
            @if($product->tags->count() > 0)
                <div class="flex flex-wrap gap-2 mb-6">
                    @foreach($product->tags as $tag)
                        <span class="bg-gray-200 px-3 py-1 rounded-full text-sm">
                            {{ $tag->name }}
                        </span>
                    @endforeach
                </div>
            @endif
        </div>
    </div>

    <!-- Section avis -->
    <div class="mt-12">
        <h2 class="text-2xl font-bold mb-6">Avis clients</h2>

        @if($product->reviews->count() > 0)
            <div class="space-y-6">
                @foreach($product->reviews as $review)
                    <div class="border-b pb-6">
                        <div class="flex items-center mb-2">
                            <div class="flex text-yellow-400">
                                @for($i = 1; $i <= 5; $i++)
                                    <svg class="w-5 h-5 {{ $i <= $review->rating ? 'fill-current' : 'fill-gray-300' }}"
                                         viewBox="0 0 20 20">
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                @endfor
                            </div>
                            <span class="ml-2 text-gray-600">{{ $review->user->name }}</span>
                        </div>
                        <p class="text-gray-600">{{ $review->comment }}</p>
                    </div>
                @endforeach
            </div>
        @else
            <p class="text-gray-600">Aucun avis pour le moment.</p>
        @endif

        @auth
            <div class="mt-8">
                <h3 class="text-xl font-semibold mb-4">Laisser un avis</h3>
                <form action="{{ route('reviews.store', $product) }}" method="POST">
                    @csrf
                    <div class="mb-4">
                        <label class="block text-sm font-medium mb-2">Note</label>
                        <select name="rating" class="w-full border rounded-md p-2">
                            @for($i = 5; $i >= 1; $i--)
                                <option value="{{ $i }}">{{ $i }} étoile(s)</option>
                            @endfor
                        </select>
                    </div>

                    <div class="mb-4">
                        <label class="block text-sm font-medium mb-2">Commentaire</label>
                        <textarea name="comment" rows="4"
                                  class="w-full border rounded-md p-2"></textarea>
                    </div>

                    <button type="submit"
                            class="bg-green-600 text-white px-6 py-2 rounded-md hover:bg-green-700">
                        Publier l'avis
                    </button>
                </form>
            </div>
        @endauth
    </div>
</div>
@endsection

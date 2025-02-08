@extends('layouts.admin')

@section('title', 'Gestion des produits')

@section('content')
<div class="mb-6 flex justify-between items-center">
    <h1 class="text-2xl font-bold">Produits</h1>
    <a href="{{ route('admin.products.create') }}"
       class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">
        Ajouter un produit
    </a>
</div>

<div class="bg-white rounded-lg shadow">
    <div class="p-6">
        <div class="flex justify-between mb-4">
            <div class="w-1/3">
                <input type="text"
                       placeholder="Rechercher un produit..."
                       class="w-full border rounded-md px-4 py-2">
            </div>
            <div>
                <select class="border rounded-md px-4 py-2">
                    <option value="">Toutes les catégories</option>
                    @foreach($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <table class="w-full">
            <thead>
                <tr class="border-b">
                    <th class="text-left py-3">Produit</th>
                    <th class="text-left py-3">Catégorie</th>
                    <th class="text-left py-3">Prix</th>
                    <th class="text-left py-3">Stock</th>
                    <th class="text-left py-3">Statut</th>
                    <th class="text-right py-3">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($products as $product)
                    <tr class="border-b hover:bg-gray-50">
                        <td class="py-4">
                            <div class="flex items-center">
                                <img src="{{ $product->image_url ?? asset('images/placeholder.jpg') }}"
                                     alt="{{ $product->name }}"
                                     class="w-12 h-12 object-cover rounded">
                                <div class="ml-4">
                                    <div class="font-medium">{{ $product->name }}</div>
                                    <div class="text-sm text-gray-500">{{ Str::limit($product->description, 50) }}</div>
                                </div>
                            </div>
                        </td>
                        <td class="py-4">{{ $product->category->name }}</td>
                        <td class="py-4">{{ number_format($product->price, 2) }} €</td>
                        <td class="py-4">
                            <span class="@if($product->stock_quantity <= $product->alert_threshold) text-red-600 @endif">
                                {{ $product->stock_quantity }}
                            </span>
                        </td>
                        <td class="py-4">
                            <span class="px-3 py-1 rounded-full text-sm
                                @if($product->is_active) bg-green-100 text-green-800
                                @else bg-red-100 text-red-800 @endif">
                                {{ $product->is_active ? 'Actif' : 'Inactif' }}
                            </span>
                        </td>
                        <td class="py-4 text-right">
                            <a href="{{ route('admin.products.edit', $product) }}"
                               class="text-blue-600 hover:text-blue-800 mr-4">
                                Modifier
                            </a>
                            <form action="{{ route('admin.products.destroy', $product) }}"
                                  method="POST"
                                  class="inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit"
                                        class="text-red-600 hover:text-red-800"
                                        onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?')">
                                    Supprimer
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <div class="mt-6">
            {{ $products->links() }}
        </div>
    </div>
</div>
@endsection

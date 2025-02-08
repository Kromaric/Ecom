@extends('layouts.admin')

@section('title', isset($product) ? 'Modifier le produit' : 'Ajouter un produit')

@section('content')
<div class="bg-white rounded-lg shadow">
    <form action="{{ isset($product) ? route('admin.products.update', $product) : route('admin.products.store') }}"
          method="POST"
          enctype="multipart/form-data"
          class="p-6">
        @csrf
        @if(isset($product))
            @method('PUT')
        @endif

        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div>
                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Nom</label>
                    <input type="text"
                           name="name"
                           value="{{ old('name', $product->name ?? '') }}"
                           class="w-full border rounded-md px-4 py-2 @error('name') border-red-500 @enderror">
                    @error('name')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Description</label>
                    <textarea name="description"
                              rows="4"
                              class="w-full border rounded-md px-4 py-2 @error('description') border-red-500 @enderror">{{ old('description', $product->description ?? '') }}</textarea>
                    @error('description')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Catégorie</label>
                    <select name="category_id"
                            class="w-full border rounded-md px-4 py-2 @error('category_id') border-red-500 @enderror">
                        <option value="">Sélectionner une catégorie</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}"
                                    @if(old('category_id', $product->category_id ?? '') == $category->id) selected @endif>
                                {{ $category->name }}
                            </option>
                        @endforeach
                    </select>
                    @error('category_id')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>
            </div>

            <div>
                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Prix</label>
                    <input type="number"
                           name="price"
                           step="0.01"
                           value="{{ old('price', $product->price ?? '') }}"
                           class="w-full border rounded-md px-4 py-2 @error('price') border-red-500 @enderror">
                    @error('price')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Stock</label>
                    <input type="number"
                           name="stock_quantity"
                           value="{{ old('stock_quantity', $product->stock_quantity ?? '') }}"
                           class="w-full border rounded-md px-4 py-2 @error('stock_quantity') border-red-500 @enderror">
                    @error('stock_quantity')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-4">
                    <label class="block text-sm font-medium mb-2">Seuil d'alerte stock</label>
                    <input type="number"
                           name="alert_threshold"
                           value="{{ old('alert_threshold', $product->alert_threshold ?? '') }}"
                           class="w-full border rounded-md px-4 py-2 @error('alert_threshold') border-red-500 @enderror">
                    @error('alert_threshold')
                        <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                    @enderror
                </div>

                <div class="mb-4">
                    <label class="flex items-center">
                        <input type="checkbox"
                               name="is_active"
                               value="1"
                               @if(old('is_active', $product->is_active ?? true)) checked @endif
                               class="rounded border-gray-300">
                        <span class="ml-2">Produit actif</span>
                    </label>
                </div>
            </div>
        </div>

        <div class="mt-6 flex justify-end">
            <a href="{{ route('admin.products.index') }}"
               class="bg-gray-200 text-gray-700 px-4 py-2 rounded-md hover:bg-gray-300 mr-4">
                Annuler
            </a>
            <button type="submit"
                    class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700">
                {{ isset($product) ? 'Mettre à jour' : 'Créer' }}
            </button>
        </div>
    </form>
</div>
@endsection

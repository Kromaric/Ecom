<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Http\Request;

class ProductVariantController extends Controller
{
    public function store(Request $request, Product $product)
    {
        $validated = $request->validate([
            'size' => 'required|string',
            'color' => 'required|string',
            'sku' => 'required|unique:product_variants',
            'price' => 'required|numeric|min:0',
            'stock_quantity' => 'required|integer|min:0'
        ]);

        $product->variants()->create($validated);

        return redirect()->back()
            ->with('success', 'Variante créée avec succès.');
    }

    public function update(Request $request, ProductVariant $variant)
    {
        $validated = $request->validate([
            'size' => 'required|string',
            'color' => 'required|string',
            'sku' => 'required|unique:product_variants,sku,' . $variant->id,
            'price' => 'required|numeric|min:0',
            'stock_quantity' => 'required|integer|min:0'
        ]);

        $variant->update($validated);

        return redirect()->back()
            ->with('success', 'Variante mise à jour avec succès.');
    }

    public function destroy(ProductVariant $variant)
    {
        $variant->delete();

        return redirect()->back()
            ->with('success', 'Variante supprimée avec succès.');
    }
}

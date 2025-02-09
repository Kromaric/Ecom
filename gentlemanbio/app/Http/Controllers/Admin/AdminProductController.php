<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class AdminProductController extends Controller
{
    public function index()
    {
        $products = Product::with('category')
            ->latest()
            ->paginate(10);
        $categories = Category::all();

        return view('admin.products.index', compact('products', 'categories'));
    }

    public function create()
    {
        $categories = Category::all();
        return view('admin.products.form', compact('categories'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric|min:0',
            'category_id' => 'required|exists:categories,id',
            'stock_quantity' => 'required|integer|min:0',
            'alert_threshold' => 'required|integer|min:0',
            'image' => 'nullable|image|max:2048',
            'is_active' => 'boolean'
        ]);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('products', 'public');
            $validated['image_url'] = Storage::url($path);
        }

        $validated['slug'] = Str::slug($request->name);

        Product::create($validated);

        return redirect()
            ->route('admin.products.index')
            ->with('success', 'Produit créé avec succès');
    }

    public function edit(Product $product)
    {
        $categories = Category::all();
        return view('admin.products.form', compact('product', 'categories'));
    }

    public function update(Request $request, Product $product)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string',
            'price' => 'required|numeric|min:0',
            'category_id' => 'required|exists:categories,id',
            'stock_quantity' => 'required|integer|min:0',
            'alert_threshold' => 'required|integer|min:0',
            'image' => 'nullable|image|max:2048',
            'is_active' => 'boolean'
        ]);

        if ($request->hasFile('image')) {
            // Supprimer l'ancienne image si elle existe
            if ($product->image_url) {
                Storage::delete(str_replace('/storage/', 'public/', $product->image_url));
            }

            $path = $request->file('image')->store('products', 'public');
            $validated['image_url'] = Storage::url($path);
        }

        $validated['slug'] = Str::slug($request->name);

        $product->update($validated);

        return redirect()
            ->route('admin.products.index')
            ->with('success', 'Produit mis à jour avec succès');
    }

    public function destroy(Product $product)
    {
        if ($product->image_url) {
            Storage::delete(str_replace('/storage/', 'public/', $product->image_url));
        }

        $product->delete();

        return redirect()
            ->route('admin.products.index')
            ->with('success', 'Produit supprimé avec succès');
    }
}

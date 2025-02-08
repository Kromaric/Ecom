<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        $cart = session()->get('cart', []);
        return view('cart.index', compact('cart'));
    }

    public function add(Request $request)
    {
        $validated = $request->validate([
            'product_id' => 'required|exists:products,id',
            'variant_id' => 'nullable|exists:product_variants,id',
            'quantity' => 'required|integer|min:1'
        ]);

        $cart = session()->get('cart', []);

        $key = $validated['product_id'] . '-' . ($validated['variant_id'] ?? 'default');

        if (isset($cart[$key])) {
            $cart[$key]['quantity'] += $validated['quantity'];
        } else {
            $cart[$key] = $validated;
        }

        session()->put('cart', $cart);

        return redirect()->back()
            ->with('success', 'Produit ajouté au panier.');
    }

    public function update(Request $request)
    {
        $validated = $request->validate([
            'quantities' => 'required|array',
            'quantities.*' => 'required|integer|min:0'
        ]);

        $cart = session()->get('cart', []);

        foreach ($validated['quantities'] as $key => $quantity) {
            if ($quantity == 0) {
                unset($cart[$key]);
            } else {
                $cart[$key]['quantity'] = $quantity;
            }
        }

        session()->put('cart', $cart);

        return redirect()->back()
            ->with('success', 'Panier mis à jour.');
    }

    public function clear()
    {
        session()->forget('cart');

        return redirect()->back()
            ->with('success', 'Panier vidé.');
    }
}

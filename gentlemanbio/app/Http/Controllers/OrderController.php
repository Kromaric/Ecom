<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Http\Request;

class OrderController extends Controller
{
        public function index()
    {
        $orders = Order::with(['user', 'items'])
            ->latest()
            ->paginate(20);

        return view('admin.orders.index', compact('orders'));
    }

    public function show(Order $order)
    {
        $order->load(['user', 'items.product', 'items.variant']);

        return view('admin.orders.show', compact('order'));
    }



    public function updateStatus(Request $request, Order $order)
    {
        $validated = $request->validate([
            'status' => 'required|in:pending,paid,shipped,delivered,cancelled'
        ]);

        $order->update($validated);

        return redirect()->back()
            ->with('success', 'Statut de la commande mis à jour.');
    }
    public function showCheckout()
    {
        $cart = session()->get('cart', []);

        if (empty($cart)) {
            return redirect()->route('cart.index')->with('error', 'Votre panier est vide');
        }

        $total = 0;
        $items = [];

        foreach ($cart as $key => $item) {
            // Vérification des clés du tableau
            $productId = $item['product_id'] ?? null;
            $variantId = $item['variant_id'] ?? null; // Correction ici

            if (!$productId) {
                continue; // Ignore les entrées invalides
            }

            $product = Product::find($productId);

            if (!$product) {
                continue; // Ignore les produits supprimés
            }

            $variant = $variantId ? ProductVariant::find($variantId) : null;

            $items[] = [
                'product' => $product,
                'variant' => $variant,
                'quantity' => $item['quantity'],
                'price' => $variant ? $variant->price : $product->price
            ];

            $total += ($variant ? $variant->price : $product->price) * $item['quantity'];
        }

        return view('checkout.index', [
            'items' => $items,
            'total' => $total,
            'user' => auth()->user()
        ]);
    }

    public function stores(Request $request)
    {
        $cart = session()->get('cart', []);

        if (empty($cart)) {
            return redirect()->route('cart.index')->with('error', 'Votre panier est vide');
        }

        $validated = $request->validate([
            'shipping_address' => 'required|string|max:255',
            'payment_method' => 'required|in:card,paypal,bank_transfer'
        ]);

        // Vérification du stock avant commande
        foreach ($cart as $item) {
            $product = Product::findOrFail($item['product_id']);
            $variant = $item['variant_id'] ? ProductVariant::find($item['variant_id']) : null;

            if ($variant && $variant->stock < $item['quantity']) {
                return back()->withErrors([
                    'stock' => "Stock insuffisant pour {$product->name} (variante)"
                ]);
            } elseif (!$variant && $product->stock < $item['quantity']) {
                return back()->withErrors([
                    'stock' => "Stock insuffisant pour {$product->name}"
                ]);
            }
        }

        // Création de la commande
        $order = Order::create([
            'user_id' => auth()->id(),
            'status' => 'pending',
            'shipping_address' => $validated['shipping_address'],
            'billing_address' => auth()->user()->billing_address ?? $validated['shipping_address'],
            'payment_method' => $validated['payment_method'],
            'total' => 0 // Calculé plus bas
        ]);

        // Ajout des articles
        $total = 0;
        foreach ($cart as $item) {
            $product = Product::find($item['product_id']);
            $variant = $item['variant_id'] ? ProductVariant::find($item['variant_id']) : null;
            $price = $variant ? $variant->price : $product->price;

            $order->items()->create([
                'product_id' => $product->id,
                'variant_id' => $variant?->id,
                'quantity' => $item['quantity'],
                'unit_price' => $price
            ]);

            // Mise à jour du stock
            if ($variant) {
                $variant->decrement('stock', $item['quantity']);
            } else {
                $product->decrement('stock', $item['quantity']);
            }

            $total += $price * $item['quantity'];
        }

        $order->update(['total' => $total]);

        session()->forget('cart');

        return redirect()->route('orders.confirmation')->with('order_id', $order->id);
    }

    public function confirmation()
    {
        $orderId = session('order_id');

        if (!$orderId) {
            return redirect()->route('home');
        }

        $order = Order::with(['items.product', 'items.variant'])->find($orderId);

        return view('orders.confirmation', compact('order'));
    }
}

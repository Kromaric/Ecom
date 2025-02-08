<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::with(['user', 'items'])
            ->latest()
            ->paginate(20);

        return view('orders.index', compact('orders'));
    }

    public function show(Order $order)
    {
        $order->load(['user', 'items.product', 'items.variant']);

        return view('orders.show', compact('order'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'shipping_address' => 'required',
            'billing_address' => 'required',
            'payment_method' => 'required|in:card,paypal,bank_transfer',
            'items' => 'required|array',
            'items.*.product_id' => 'required|exists:products,id',
            'items.*.quantity' => 'required|integer|min:1'
        ]);

        $order = Order::create([
            'user_id' => auth()->id(),
            'status' => 'pending',
            'shipping_address' => $validated['shipping_address'],
            'billing_address' => $validated['billing_address'],
            'payment_method' => $validated['payment_method'],
            'payment_status' => 'pending'
        ]);

        // Logique pour ajouter les items...

        return redirect()->route('orders.show', $order)
            ->with('success', 'Commande créée avec succès.');
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
}

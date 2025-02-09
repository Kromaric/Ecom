<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class AdminOrderController extends Controller
{
    public function index(Request $request)
    {
        $query = Order::with(['user', 'items.product'])
            ->latest();

        // Filtrage par statut
        if ($request->status) {
            $query->where('status', $request->status);
        }

        // Recherche par ID ou email client
        if ($request->search) {
            $query->where(function($q) use ($request) {
                $q->where('id', 'like', "%{$request->search}%")
                  ->orWhereHas('user', function($q) use ($request) {
                      $q->where('email', 'like', "%{$request->search}%");
                  });
            });
        }

        $orders = $query->paginate(15);

        return view('admin.orders.index', compact('orders'));
    }

    public function show(Order $order)
    {
        $order->load(['user', 'items.product', 'items.variant']);
        return view('admin.orders.show', compact('order'));
    }

    public function updateStatus(Request $request, Order $order)
    {
        $request->validate([
            'status' => 'required|in:pending,paid,shipped,delivered,cancelled'
        ]);

        $order->update(['status' => $request->status]);

        // Ici, vous pourriez ajouter la logique pour envoyer des notifications
        // aux clients lors du changement de statut

        return redirect()
            ->back()
            ->with('success', 'Statut de la commande mis à jour');
    }
}

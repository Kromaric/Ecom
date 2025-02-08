@extends('layouts.admin')

@section('title', 'Gestion des commandes')

@section('content')
<div class="bg-white rounded-lg shadow">
    <div class="p-6">
        <div class="flex justify-between mb-4">
            <div class="w-1/3">
                <input type="text"
                       placeholder="Rechercher une commande..."
                       class="w-full border rounded-md px-4 py-2">
            </div>
            <div>
                <select class="border rounded-md px-4 py-2">
                    <option value="">Tous les statuts</option>
                    <option value="pending">En attente</option>
                    <option value="paid">Payée</option>
                    <option value="shipped">Expédiée</option>
                    <option value="delivered">Livrée</option>
                    <option value="cancelled">Annulée</option>
                </select>
            </div>
        </div>

        <table class="w-full">
            <thead>
                <tr class="border-b">
                    <th class="text-left py-3">N° Commande</th>
                    <th class="text-left py-3">Client</th>
                    <th class="text-left py-3">Date</th>
                    <th class="text-left py-3">Total</th>
                    <th class="text-left py-3">Statut</th>
                    <th class="text-right py-3">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($orders as $order)
                    <tr class="border-b hover:bg-gray-50">
                        <td class="py-4">#{{ $order->id }}</td>
                        <td class="py-4">
                            <div class="font-medium">{{ $order->user->name }}</div>
                            <div class="text-sm text-gray-500">{{ $order->user->email }}</div>
                        </td>
                        <td class="py-4">{{ $order->created_at->format('d/m/Y H:i') }}</td>
                        <td class="py-4">{{ number_format($order->total_amount, 2) }} €</td>
                        <td class="py-4">
                            <span class="px-3 py-1 rounded-full text-sm
                                @if($order->status === 'paid') bg-green-100 text-green-800
                                @elseif($order->status === 'pending') bg-yellow-100 text-yellow-800
                                @elseif($order->status === 'shipped') bg-blue-100 text-blue-800
                                @elseif($order->status === 'delivered') bg-purple-100 text-purple-800
                                @else bg-red-100 text-red-800 @endif">
                                {{ ucfirst($order->status) }}
                            </span>
                        </td>
                        <td class="py-4 text-right">
                            <a href="{{ route('admin.orders.show', $order) }}"
                               class="text-blue-600 hover:text-blue-800">
                                Détails
                            </a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <div class="mt-6">
            {{ $orders->links() }}
        </div>
    </div>
</div>
@endsection

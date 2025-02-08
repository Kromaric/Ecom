@extends('layouts.admin')

@section('title', 'Détails de la commande #' . $order->id)

@section('content')
<div class="grid grid-cols-1 md:grid-cols-3 gap-6">
    <!-- Informations principales -->
    <div class="md:col-span-2">
        <div class="bg-white rounded-lg shadow mb-6">
            <div class="p-6">
                <div class="flex justify-between items-center mb-6">
                    <h2 class="text-xl font-semibold">Détails de la commande</h2>
                    <div>
                        <form action="{{ route('admin.orders.updateStatus', $order) }}"
                              method="POST"
                              class="inline">
                            @csrf
                            @method('PATCH')
                            <select name="status"
                                    onchange="this.form.submit()"
                                    class="border rounded-md px-4 py-2">
                                <option value="pending" @if($order->status === 'pending') selected @endif>En attente</option>
                                <option value="paid" @if($order->status === 'paid') selected @endif>Payée</option>
                                <option value="shipped" @if($order->status === 'shipped') selected @endif>Expédiée</option>
                                <option value="delivered" @if($order->status === 'delivered') selected @endif>Livrée</option>
                                <option value="cancelled" @if($order->status === 'cancelled') selected @endif>Annulée</option>
                            </select>
                        </form>
                    </div>
                </div>

                <div class="space-y-4">
                    @foreach($order->items as $item)
                        <div class="flex items-center border-b last:border-0 pb-4 last:pb-0">
                            <img src="{{ $item->product->image_url ?? asset('images/placeholder.jpg') }}"
                                 alt="{{ $item->product->name }}"
                                 class="w-16 h-16 object-cover rounded">

                            <div class="ml-4 flex-1">
                                <div class="font-medium">{{ $item->product->name }}</div>
                                @if($item->variant)
                                    <div class="text-sm text-gray-500">
                                        {{ $item->variant->size }} - {{ $item->variant->color }}
                                    </div>
                                @endif
                            </div>

                            <div class="text-right">
                                <div>{{ $item->quantity }} × {{ number_format($item->price, 2) }} €</div>
                                <div class="font-medium">{{ number_format($item->total, 2) }} €</div>
                            </div>
                        </div>
                    @endforeach
                </div>

                <div class="mt-6 border-t pt-6">
                    <div class="flex justify-between text-lg font-semibold">
                        <span>Total</span>
                        <span>{{ number_format($order->total_amount, 2) }} €</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Informations client et livraison -->
    <div>
        <div class="bg-white rounded-lg shadow mb-6">
            <div class="p-6">
                <h3 class="font-semibold mb-4">Informations client</h3>
                <div class="space-y-2">
                    <p><strong>Nom :</strong> {{ $order->user->name }}</p>
                    <p><strong>Email :</strong> {{ $order->user->email }}</p>
                    <p><strong>Date de commande :</strong> {{ $order->created_at->format('d/m/Y H:i') }}</p>
                </div>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow mb-6">
            <div class="p-6">
                <h3 class="font-semibold mb-4">Adresse de livraison</h3>
                <p class="whitespace-pre-line">{{ $order->shipping_address }}</p>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow">
            <div class="p-6">
                <h3 class="font-semibold mb-4">Adresse de facturation</h3>
                <p class="whitespace-pre-line">{{ $order->billing_address }}</p>
            </div>
        </div>
    </div>
</div>
@endsection

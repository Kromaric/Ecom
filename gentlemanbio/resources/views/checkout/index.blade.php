@extends('layouts.app')

@section('title', 'Paiement Sécurisé - Gentleman Bio')

@section('content')
<div class="bg-gray-50 min-h-screen py-8">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="lg:grid lg:grid-cols-2 lg:gap-12">
            <!-- Récapitulatif de la commande -->
            <div class="mb-8 lg:mb-0">
                <h2 class="text-2xl font-bold text-gray-900 mb-6">Votre Commande</h2>

                <div class="bg-white rounded-lg shadow-md p-6">
                    @foreach($items as $item)
                    <div class="flex items-center py-4 border-b border-gray-200">
                        <img src="{{ $item['product']->image_with_fallback }}"
                             alt="{{ $item['product']->name }}"
                             class="w-20 h-20 object-cover rounded-lg">

                        <div class="ml-4 flex-1">
                            <h3 class="font-semibold text-gray-900">
                                {{ $item['product']->name }}
                                @if($item['variant'])
                                    <span class="text-sm text-gray-600 block mt-1">
                                        {{ $item['variant']->attribute }} : {{ $item['variant']->value }}
                                    </span>
                                @endif
                            </h3>

                            <div class="flex items-center justify-between mt-2">
                                <p class="text-sm text-gray-600">
                                    Quantité : {{ $item['quantity'] }}
                                </p>
                                <p class="text-gray-900 font-medium">
                                    {{ number_format($item['price'] * $item['quantity'], 2) }} €
                                </p>
                            </div>

                            @if($item['product']->certifications)
                                <div class="mt-2 flex space-x-2">
                                    @foreach($item['product']->certifications as $certification)
                                        <span class="bg-green-100 text-green-800 text-xs px-2 py-1 rounded-full">
                                            {{ $certification }}
                                        </span>
                                    @endforeach
                                </div>
                            @endif
                        </div>
                    </div>
                    @endforeach

                    <div class="pt-6">
                        <div class="flex justify-between text-lg font-bold text-gray-900">
                            <span>Total :</span>
                            <span>{{ number_format($total, 2) }} €</span>
                        </div>

                        <div class="mt-4 text-sm text-green-600 flex items-center">
                            <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                            </svg>
                            Livraison éco-responsable incluse
                        </div>
                    </div>
                </div>
            </div>

            <!-- Formulaire de paiement -->
            <div>
                <h2 class="text-2xl font-bold text-gray-900 mb-6">Informations de Livraison</h2>

                <form action="{{ route('checkout.process') }}" method="POST" id="checkout-form">
                    @csrf

                    <div class="bg-white rounded-lg shadow-md p-6 mb-6">
                        <!-- Adresse de livraison -->
                        <div class="mb-6">
                            <label for="shipping_address" class="block text-sm font-medium text-gray-700 mb-2">
                                Adresse de livraison
                            </label>
                            <textarea name="shipping_address" id="shipping_address"
                                      rows="3" required
                                      class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-green-500">{{ old('shipping_address', $user->shipping_address ?? '') }}</textarea>
                            @error('shipping_address')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>

                        <!-- Adresse de facturation -->
                        <div class="mb-6">
                            <div class="flex items-center justify-between mb-2">
                                <label class="block text-sm font-medium text-gray-700">
                                    Adresse de facturation
                                </label>
                                <div class="flex items-center">
                                    <input type="checkbox" id="same_as_shipping"
                                           class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded"
                                           onclick="toggleBillingAddress()">
                                    <label for="same_as_shipping" class="ml-2 text-sm text-gray-600">
                                        Identique à l'adresse de livraison
                                    </label>
                                </div>
                            </div>
                            <textarea name="billing_address" id="billing_address"
                                      rows="3"
                                      class="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-green-500">{{ old('billing_address', $user->billing_address ?? '') }}</textarea>
                            @error('billing_address')
                                <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                            @enderror
                        </div>

                        <!-- Méthode de paiement -->
                        <div class="pt-6 border-t border-gray-200">
                            <h3 class="text-lg font-medium text-gray-900 mb-4">Méthode de Paiement</h3>

                            <div class="space-y-4">
                                <div class="flex items-center">
                                    <input type="radio" name="payment_method" id="card"
                                           value="card" required checked
                                           class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300">
                                    <label for="card" class="ml-3 block text-sm font-medium text-gray-700">
                                        Carte de crédit
                                        <span class="text-gray-400 text-sm block">Visa, Mastercard, American Express</span>
                                    </label>
                                </div>

                                <div class="flex items-center">
                                    <input type="radio" name="payment_method" id="paypal"
                                           value="paypal"
                                           class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300">
                                    <label for="paypal" class="ml-3 block text-sm font-medium text-gray-700">
                                        PayPal
                                        <span class="text-gray-400 text-sm block">Paiement sécurisé</span>
                                    </label>
                                </div>

                                <div class="flex items-center">
                                    <input type="radio" name="payment_method" id="bank_transfer"
                                           value="bank_transfer"
                                           class="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300">
                                    <label for="bank_transfer" class="ml-3 block text-sm font-medium text-gray-700">
                                        Virement bancaire
                                        <span class="text-gray-400 text-sm block">RIB disponible après commande</span>
                                    </label>
                                </div>
                            </div>
                            @error('payment_method')
                                <p class="text-red-500 text-sm mt-2">{{ $message }}</p>
                            @enderror
                        </div>
                    </div>

                    <!-- Bouton de validation -->
                    <button type="submit"
                            class="w-full bg-green-600 text-white py-3 px-6 rounded-md text-lg font-medium hover:bg-green-700 transition-colors">
                        Confirmer la commande ({{ number_format($total, 2) }} €)
                    </button>

                    <p class="mt-4 text-center text-sm text-gray-600">
                        <svg class="inline w-4 h-4 mr-1" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z" clip-rule="evenodd"/>
                        </svg>
                        Transactions sécurisées SSL 256 bits
                    </p>
                </form>
            </div>
        </div>
    </div>
</div>

@push('scripts')
<script>
function toggleBillingAddress() {
    const billingAddress = document.getElementById('billing_address');
    const checkbox = document.getElementById('same_as_shipping');

    if (checkbox.checked) {
        billingAddress.value = document.getElementById('shipping_address').value;
        billingAddress.readOnly = true;
        billingAddress.classList.add('bg-gray-100');
    } else {
        billingAddress.readOnly = false;
        billingAddress.classList.remove('bg-gray-100');
    }
}

// Initial check on page load
document.addEventListener('DOMContentLoaded', toggleBillingAddress);
</script>
@endpush
@endsection

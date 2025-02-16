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

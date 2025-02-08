<?php

namespace Database\Factories;

use App\Models\OrderItem;
use App\Models\Order;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderItemFactory extends Factory
{
    protected $model = OrderItem::class;

    public function definition()
    {
        $quantity = $this->faker->numberBetween(1, 5);
        $price = $this->faker->randomFloat(2, 10, 200);

        return [
            'order_id' => Order::factory(),
            'product_id' => Product::factory(),
            'variant_id' => ProductVariant::factory(),
            'quantity' => $quantity,
            'price' => $price,
            'total' => $quantity * $price
        ];
    }
}

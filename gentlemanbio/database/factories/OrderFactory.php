<?php

namespace Database\Factories;

use App\Models\Order;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class OrderFactory extends Factory
{
    protected $model = Order::class;

    public function definition()
    {
        return [
            'user_id' => User::factory(),
            'total_amount' => $this->faker->randomFloat(2, 20, 2000),
            'status' => $this->faker->randomElement(['pending', 'paid', 'shipped', 'delivered', 'cancelled']),
            'shipping_address' => $this->faker->address(),
            'billing_address' => $this->faker->address(),
            'payment_method' => $this->faker->randomElement(['card', 'paypal', 'bank_transfer']),
            'payment_status' => $this->faker->randomElement(['pending', 'completed', 'failed']),
            'tracking_number' => $this->faker->bothify('TRACK-####-????')
        ];
    }
}

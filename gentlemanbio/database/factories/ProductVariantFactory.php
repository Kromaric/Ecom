<?php

namespace Database\Factories;

use App\Models\ProductVariant;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductVariantFactory extends Factory
{
    protected $model = ProductVariant::class;

    public function definition()
    {
        return [
            'product_id' => Product::factory(),
            'size' => $this->faker->randomElement(['XS', 'S', 'M', 'L', 'XL']),
            'color' => $this->faker->colorName(),
            'sku' => $this->faker->unique()->bothify('SKU-####-????'),
            'price' => $this->faker->randomFloat(2, 10, 1000),
            'stock_quantity' => $this->faker->numberBetween(0, 50)
        ];
    }
}

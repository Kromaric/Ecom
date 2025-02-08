<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    protected $model = Product::class;

    public function definition()
    {
        $name = $this->faker->unique()->words(3, true);
        return [
            'name' => $name,
            'slug' => Str::slug($name),
            'description' => $this->faker->paragraphs(3, true),
            'price' => $this->faker->randomFloat(2, 10, 1000),
            'category_id' => Category::factory(),
            'stock_quantity' => $this->faker->numberBetween(0, 100),
            'alert_threshold' => 5,
            'is_active' => true,
            'meta_title' => $this->faker->words(4, true),
            'meta_description' => $this->faker->sentence()
        ];
    }
}

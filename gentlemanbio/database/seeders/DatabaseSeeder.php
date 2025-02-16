<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;
use App\Models\Product;
use App\Models\Tag;
use App\Models\User;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Review;
use App\Models\ProductVariant;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call([
            AdminSeeder::class,
            // ... autres seeders existants ...
        ]);

        // Créer quelques catégories
        Category::factory(5)->create();

        // Créer des tags
        $tags = Tag::factory(10)->create();

        // Créer des variantes de produits
        ProductVariant::factory(50)->create();

        // Créer des produits avec variants et tags
        Product::factory(20)
            ->has(ProductVariant::factory()->count(3))
            ->create()
            ->each(function ($product) use ($tags) {
                $product->tags()->attach(
                    $tags->random(rand(2, 5))->pluck('id')->toArray()
                );
            });

        // Créer des utilisateurs avec commandes
        User::factory(10)
            ->has(
                Order::factory(2)
                    ->has(OrderItem::factory()->count(3))
            )
            ->create();

        // Créer des avis
        Review::factory(50)->create();
    }
}

<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\{
    ProductController,
    CategoryController,
    OrderController,
    ReviewController,
    TagController,
    ProductVariantController,
    CartController
};

// Routes publiques
Route::get('/', function () {
    return view('welcome');
});

// Routes des produits
Route::get('/products', [ProductController::class, 'index'])->name('products.index');
Route::get('/products/{product:slug}', [ProductController::class, 'show'])->name('products.show');

// Routes du panier
Route::prefix('cart')->group(function () {
    Route::get('/', [CartController::class, 'index'])->name('cart.index');
    Route::post('/add', [CartController::class, 'add'])->name('cart.add');
    Route::patch('/update', [CartController::class, 'update'])->name('cart.update');
    Route::delete('/clear', [CartController::class, 'clear'])->name('cart.clear');
});

// Routes nécessitant une authentification
Route::middleware(['auth'])->group(function () {
    // Reviews
    Route::post('/products/{product}/reviews', [ReviewController::class, 'store'])->name('reviews.store');

    // Orders
    Route::get('/orders', [OrderController::class, 'index'])->name('orders.index');
    Route::get('/orders/{order}', [OrderController::class, 'show'])->name('orders.show');
    Route::post('/orders', [OrderController::class, 'store'])->name('orders.store');
});

// Routes admin
Route::middleware(['auth', 'admin'])->prefix('admin')->group(function () {
    // Produits
    Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');
    Route::post('/products', [ProductController::class, 'store'])->name('products.store');
    Route::get('/products/{product}/edit', [ProductController::class, 'edit'])->name('products.edit');
    Route::put('/products/{product}', [ProductController::class, 'update'])->name('products.update');
    Route::delete('/products/{product}', [ProductController::class, 'destroy'])->name('products.destroy');

    // Catégories
    Route::resource('categories', CategoryController::class)->except(['show']);

    // Tags
    Route::resource('tags', TagController::class)->except(['show']);

    // Variants
    Route::post('/products/{product}/variants', [ProductVariantController::class, 'store'])->name('variants.store');
    Route::put('/variants/{variant}', [ProductVariantController::class, 'update'])->name('variants.update');
    Route::delete('/variants/{variant}', [ProductVariantController::class, 'destroy'])->name('variants.destroy');

    // Reviews management
    Route::get('/reviews', [ReviewController::class, 'index'])->name('reviews.index');
    Route::patch('/reviews/{review}/approve', [ReviewController::class, 'approve'])->name('reviews.approve');
    Route::delete('/reviews/{review}', [ReviewController::class, 'destroy'])->name('reviews.destroy');

    // Orders management
    Route::patch('/orders/{order}/status', [OrderController::class, 'updateStatus'])->name('orders.updateStatus');
});

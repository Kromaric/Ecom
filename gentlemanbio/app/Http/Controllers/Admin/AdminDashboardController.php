<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\Review;
use Carbon\Carbon;

class AdminDashboardController extends Controller
{
    public function index()
    {
        $ordersCount = Order::count();
        $newOrdersCount = Order::whereDate('created_at', Carbon::today())->count();

        $revenue = Order::where('status', 'paid')->sum('total_amount');

        $outOfStockCount = Product::where('stock_quantity', '<=', 0)->count();

        $pendingReviewsCount = Review::where('is_approved', false)->count();

        $latestOrders = Order::with('user')
            ->latest()
            ->take(5)
            ->get();

        $latestReviews = Review::with(['user', 'product'])
            ->latest()
            ->take(5)
            ->get();

        return view('admin.dashboard', compact(
            'ordersCount',
            'newOrdersCount',
            'revenue',
            'outOfStockCount',
            'pendingReviewsCount',
            'latestOrders',
            'latestReviews'
        ));
    }
}

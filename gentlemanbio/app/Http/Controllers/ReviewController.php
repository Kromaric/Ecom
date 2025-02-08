<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\Product;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function index()
    {
        $reviews = Review::with(['product', 'user'])
            ->latest()
            ->paginate(20);

        return view('reviews.index', compact('reviews'));
    }

    public function store(Request $request, Product $product)
    {
        $validated = $request->validate([
            'rating' => 'required|integer|between:1,5',
            'comment' => 'required|min:10'
        ]);

        $review = $product->reviews()->create([
            ...$validated,
            'user_id' => auth()->id(),
            'is_approved' => false
        ]);

        return redirect()->back()
            ->with('success', 'Avis soumis avec succès et en attente d\'approbation.');
    }

    public function approve(Review $review)
    {
        $review->update(['is_approved' => true]);

        return redirect()->back()
            ->with('success', 'Avis approuvé avec succès.');
    }

    public function destroy(Review $review)
    {
        $review->delete();

        return redirect()->back()
            ->with('success', 'Avis supprimé avec succès.');
    }
}

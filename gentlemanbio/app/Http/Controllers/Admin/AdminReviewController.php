<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Review;
use Illuminate\Http\Request;

class AdminReviewController extends Controller
{
    public function index(Request $request)
    {
        $query = Review::with(['user', 'product'])
            ->latest();

        // Filtrage par statut d'approbation
        if ($request->has('is_approved')) {
            $query->where('is_approved', $request->boolean('is_approved'));
        }

        // Filtrage par note
        if ($request->rating) {
            $query->where('rating', $request->rating);
        }

        // Recherche par produit ou utilisateur
        if ($request->search) {
            $query->where(function($q) use ($request) {
                $q->whereHas('product', function($q) use ($request) {
                    $q->where('name', 'like', "%{$request->search}%");
                })->orWhereHas('user', function($q) use ($request) {
                    $q->where('name', 'like', "%{$request->search}%")
                      ->orWhere('email', 'like', "%{$request->search}%");
                });
            });
        }

        $reviews = $query->paginate(15);

        return view('admin.reviews.index', compact('reviews'));
    }

    public function approve(Review $review)
    {
        $review->update(['is_approved' => true]);

        // Mettre à jour la note moyenne du produit
        $review->product->updateAverageRating();

        return redirect()
            ->back()
            ->with('success', 'Avis approuvé avec succès');
    }

    public function destroy(Review $review)
    {
        $review->delete();

        // Mettre à jour la note moyenne du produit
        $review->product->updateAverageRating();

        return redirect()
            ->back()
            ->with('success', 'Avis supprimé avec succès');
    }
}

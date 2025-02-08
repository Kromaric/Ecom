@extends('layouts.admin')

@section('title', 'Gestion des avis')

@section('content')
<div class="bg-white rounded-lg shadow">
    <div class="p-6">
        <div class="flex justify-between mb-4">
            <div class="w-1/3">
                <input type="text"
                       placeholder="Rechercher un avis..."
                       class="w-full border rounded-md px-4 py-2">
            </div>
            <div class="flex space-x-4">
                <select class="border rounded-md px-4 py-2">
                    <option value="">Toutes les notes</option>
                    @for($i = 5; $i >= 1; $i--)
                        <option value="{{ $i }}">{{ $i }} étoile(s)</option>
                    @endfor
                </select>
                <select class="border rounded-md px-4 py-2">
                    <option value="">Tous les statuts</option>
                    <option value="approved">Approuvés</option>
                    <option value="pending">En attente</option>
                </select>
            </div>
        </div>

        <table class="w-full">
            <thead>
                <tr class="border-b">
                    <th class="text-left py-3">Produit</th>
                    <th class="text-left py-3">Client</th>
                    <th class="text-left py-3">Note</th>
                    <th class="text-left py-3">Commentaire</th>
                    <th class="text-left py-3">Date</th>
                    <th class="text-left py-3">Statut</th>
                    <th class="text-right py-3">Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach($reviews as $review)
                    <tr class="border-b hover:bg-gray-50">
                        <td class="py-4">
                            <div class="flex items-center">
                                <img src="{{ $review->product->image_url ?? asset('images/placeholder.jpg') }}"
                                     alt="{{ $review->product->name }}"
                                     class="w-12 h-12 object-cover rounded">
                                <span class="ml-3">{{ $review->product->name }}</span>
                            </div>
                        </td>
                        <td class="py-4">
                            <div class="font-medium">{{ $review->user->name }}</div>
                            <div class="text-sm text-gray-500">{{ $review->user->email }}</div>
                        </td>
                        <td class="py-4">
                            <div class="flex text-yellow-400">
                                @for($i = 1; $i <= 5; $i++)
                                    <svg class="w-5 h-5 {{ $i <= $review->rating ? 'fill-current' : 'fill-gray-300' }}"
                                         viewBox="0 0 20 20">
                                        <path d="M10 15l-5.878 3.09 1.123-6.545L.489 6.91l6.572-.955L10 0l2.939 5.955 6.572.955-4.756 4.635 1.123 6.545z"/>
                                    </svg>
                                @endfor
                            </div>
                        </td>
                        <td class="py-4">
                            <div class="max-w-xs truncate">{{ $review->comment }}</div>
                        </td>
                        <td class="py-4">{{ $review->created_at->format('d/m/Y H:i') }}</td>
                        <td class="py-4">
                            <span class="px-3 py-1 rounded-full text-sm
                                @if($review->is_approved) bg-green-100 text-green-800
                                @else bg-yellow-100 text-yellow-800 @endif">
                                {{ $review->is_approved ? 'Approuvé' : 'En attente' }}
                            </span>
                        </td>
                        <td class="py-4 text-right">
                            @if(!$review->is_approved)
                                <form action="{{ route('admin.reviews.approve', $review) }}"
                                      method="POST"
                                      class="inline">
                                    @csrf
                                    @method('PATCH')
                                    <button type="submit"
                                            class="text-green-600 hover:text-green-800 mr-4">
                                        Approuver
                                    </button>
                                </form>
                            @endif

                            <button type="button"
                                    onclick="showReviewDetails('{{ $review->id }}')"
                                    class="text-blue-600 hover:text-blue-800 mr-4">
                                Voir
                            </button>

                            <form action="{{ route('admin.reviews.destroy', $review) }}"
                                  method="POST"
                                  class="inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit"
                                        class="text-red-600 hover:text-red-800"
                                        onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet avis ?')">
                                    Supprimer
                                </button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <div class="mt-6">
            {{ $reviews->links() }}
        </div>
    </div>
</div>

<!-- Modal de détails -->
<div id="reviewModal"
     class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center">
    <div class="bg-white rounded-lg max-w-2xl w-full mx-4">
        <div class="p-6">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-xl font-semibold">Détails de l'avis</h3>
                <button onclick="hideReviewDetails()" class="text-gray-500 hover:text-gray-700">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/>
                    </svg>
                </button>
            </div>
            <div id="reviewDetails"></div>
        </div>
    </div>
</div>

@push('scripts')
<script>
function showReviewDetails(reviewId) {
    // Logique pour charger et afficher les détails de l'avis
    document.getElementById('reviewModal').classList.remove('hidden');
    document.getElementById('reviewModal').classList.add('flex');
}

function hideReviewDetails() {
    document.getElementById('reviewModal').classList.add('hidden');
    document.getElementById('reviewModal').classList.remove('flex');
}
</script>
@endpush
@endsection

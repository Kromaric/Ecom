@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <h1>Bienvenue sur GentlemanBio</h1>
            
            {{-- Section Produits Vedettes --}}
            <section class="featured-products my-5">
                <h2>Nos Produits Vedettes</h2>
                <div class="row">
                    @foreach($featuredProducts as $product)
                        <div class="col-md-4 mb-4">
                            <div class="card">
                                <img src="{{ $product->image_url }}" class="card-img-top" alt="{{ $product->name }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $product->name }}</h5>
                                    <p class="card-text">{{ $product->short_description }}</p>
                                    <a href="{{ route('products.show', $product->slug) }}" class="btn btn-primary">Voir le produit</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </section>

            {{-- Section Catégories --}}
            <section class="categories my-5">
                <h2>Nos Catégories</h2>
                <div class="row">
                    @foreach($categories as $category)
                        <div class="col-md-3 mb-4">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $category->name }}</h5>
                                    <a href="#" class="btn btn-outline-primary">Explorer</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </section>
        </div>
    </div>
</div>
@endsection 
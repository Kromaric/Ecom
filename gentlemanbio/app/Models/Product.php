<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory; // Import du trait
class Product extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $fillable = [
        'name',
        'slug',
        'description',
        'price',
        'category_id',
        'stock_quantity',
        'alert_threshold',
        'is_active',
        'meta_title',
        'meta_description'
    ];

    protected $casts = [
        'price' => 'decimal:2',
        'is_active' => 'boolean',
    ];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function variants()
    {
        return $this->hasMany(ProductVariant::class);
    }

    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }
}

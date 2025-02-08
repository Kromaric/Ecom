<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory; // Import du trait

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'total_amount',
        'status', // pending, paid, shipped, delivered, cancelled
        'shipping_address',
        'billing_address',
        'payment_method',
        'payment_status',
        'tracking_number'
    ];

    protected $casts = [
        'total_amount' => 'decimal:2',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function items()
    {
        return $this->hasMany(OrderItem::class);
    }
}

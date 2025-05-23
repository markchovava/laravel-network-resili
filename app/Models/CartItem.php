<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CartItem extends Model
{
    protected $fillable = [
        'id',
        'cart_id',
        'product_id',
        'quantity',
        'price',
        'total',
        'updated_at',
        'created_at',
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }

     public function cart(){
        return $this->belongsTo(Cart::class, 'cart_id', 'id');
    }
    
}

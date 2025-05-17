<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    
    protected $fillable = [
        'id',
        'user_id',
        'order_id',
        'product_id',
        'name',
        'quantity',
        'price',
        'total',
        'created_at',
        'updated_at',
    ];


    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function order(){
        return $this->belongsTo(Order::class, 'order_id', 'id');
    }

    public function product(){
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }

    
}

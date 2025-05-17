<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    
    protected $fillable = [
        'id',
        'user_id',
        'ref_no',
        'total',
        'quantity',
        'status',
        'notes',
        'created_at',
        'updated_at',
    ];

    public function order_detail() {
        return $this->hasOne(OrderDetail::class, 'order_id', 'id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function order_items(){
        return $this->hasMany(OrderItem::class, 'order_id', 'id');
    }

    
}

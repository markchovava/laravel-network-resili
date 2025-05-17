<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrderDetail extends Model
{
    protected $fillable = [
        'id',
        'user_id',
        'order_id',
        'name',
        'email',
        'phone',
        'address',
        'created_at',
        'updated_at',
    ];


    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function order(){
        return $this->belongsTo(Order::class, 'order_id', 'id');
    }
    
}

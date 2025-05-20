<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = [
        'id',
        'cart_ref',
        'quantity',
        'total',
        'updated_at',
        'created_at',
    ];

     /* HAS MANY */
    public function cartitems(){
        return $this->hasMany(CartItem::class, 'cart_id', 'id');
    }

}

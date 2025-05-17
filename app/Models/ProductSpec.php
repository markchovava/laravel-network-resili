<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSpec extends Model
{
    
    protected $fillable = [
        'id',
        'user_id',
        'product_id',
        'name',
        'value',
        'created_at',
        'updated_at',
    ];

    public function product(){
        return $this->belongsTo(Product::class, 'product_id', 'id');
    }

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }


}

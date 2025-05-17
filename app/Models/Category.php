<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
     protected $fillable = [
        'id',
        'user_id',
        'name',
        'created_at',
        'updated_at',
    ];

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function category_products(){
        return $this->hasMany(ProductCategory::class, 'category_id', 'id');
    }

}

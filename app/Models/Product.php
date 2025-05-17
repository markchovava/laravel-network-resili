<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'id',
        'user_id',
        'brand_id',
        'name',
        'description',
        'price',
        'quantity',
        'status',
        'created_at',
        'updated_at',
    ];

    /* BELONGS TO */
    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    public function brand(){
        return $this->belongsTo(Brand::class, 'brand_id', 'id');
    }

     /* HAS MANY */
    public function product_images(){
        return $this->hasMany(ProductImage::class, 'product_id', 'id');
    }

    public function product_specs(){
        return $this->hasMany(ProductSpec::class, 'product_id', 'id');
    }

    public function product_categories(){
        return $this->hasMany(ProductCategory::class, 'product_id', 'id');
    }

    public function product_orderitems(){
        return $this->hasMany(OrderItem::class, 'product_id', 'id');
    }



}

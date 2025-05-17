<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    
    protected $fillable = [
        'id',
        'name',
        'is_admin',
        'email',
        'phone',
        'address',
        'code',
        'password',
        'created_at',
        'updated_at',
    ];


    public function brands(){
        return $this->hasMany(Brand::class, 'user_id', 'id');
    }

    public function categories(){
        return $this->hasMany(Category::class, 'user_id', 'id');
    }

    public function messages(){
        return $this->hasMany(Message::class, 'user_id', 'id');
    }

    public function orders(){
        return $this->hasMany(Order::class, 'user_id', 'id');
    }

    public function order_details(){
        return $this->hasMany(OrderDetail::class, 'user_id', 'id');
    }

    public function order_items(){
        return $this->hasMany(OrderItem::class, 'user_id', 'id');
    }

    public function partners(){
        return $this->hasMany(Partner::class, 'user_id', 'id');
    }

    public function products(){
        return $this->hasMany(Product::class, 'user_id', 'id');
    }

    public function product_categories(){
        return $this->hasMany(ProductCategory::class, 'user_id', 'id');
    }

    public function product_images(){
        return $this->hasMany(ProductImage::class, 'user_id', 'id');
    }

    public function product_specs(){
        return $this->hasMany(ProductSpec::class, 'user_id', 'id');
    }
    
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }

}

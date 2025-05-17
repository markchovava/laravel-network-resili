<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{

    protected $fillable = [
        'id',
        'user_id',
        'name',
        'image',
        'created_at',
        'updated_at',
    ];

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
     protected $fillable = [
        'id',
        'user_id',
        'name',
        'title',
        'message',
        'phone',
        'email',
        'status',
        'created_at',
        'updated_at',
    ];

    public function user(){
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
    
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'sub_title',
        'location',
        'phone',
        'image',
        'email',
    ];
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanySocial extends Model
{
    use HasFactory;
    protected $fillable = [
        'company_id',
        'social_type',
        'social_link', // if you want to allow address too
    ];
    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}

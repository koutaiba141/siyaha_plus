<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CompanyPhone extends Model // Ensure the class name starts with a capital letter
{
    use HasFactory;
    protected $fillable = [
        'phone_number', // Allow mass assignment for phone_number
        'company_id',   // Include company_id if necessary
    ];

    public function company()
    {
        return $this->belongsTo(Company::class); // Ensure this relationship is defined correctly
    }
}

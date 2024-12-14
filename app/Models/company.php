<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;
    protected $fillable = [
        'company_name',
        'company_email',
        'company_adress', // if you want to allow address too
    ];

    // Define relationships
    public function tours() // Pluralize as it relates to multiple tours
    {
        return $this->hasMany(Tour::class);
    }

    public function companyPhones() // Correct the plural naming convention
    {
        return $this->hasMany(CompanyPhone::class);
    }

    public function companySocials() // Correct the plural naming convention
    {
        return $this->hasMany(CompanySocial::class);
    }

    public function companyOwners() // Correct the plural naming convention
    {
        return $this->hasMany(CompanyOwner::class );
    }
     
}


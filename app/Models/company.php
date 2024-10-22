<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class company extends Model
{
    use HasFactory;

    public function tour(){
        return $this->hasMany(tour::class);
    }
    public function companyphone(){
        return $this->hasMany(companyphone::class);
    }
    public function companysocial(){
        return $this->hasMany(companysocial::class);
    }
    public function companyowner(){
        return $this->hasMany(companyowner::class);
    }
}

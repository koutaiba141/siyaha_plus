<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    public function person(){
        return $this->hasMany(Person::class);
    }
    public function personNAtionality(){
        return $this->hasMany(personNAtionality::class);
    }
}

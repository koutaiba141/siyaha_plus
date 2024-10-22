<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TourLocation extends Model
{
    use HasFactory;

    public function tourPlan()
    {
        return $this->belongsTo(TourPlan::class);
    }
    public function Tourtransportaion(){
        return $this->hasMany(TourTransportation::class);
    }
}

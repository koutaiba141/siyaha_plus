<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TourPlan extends Model
{
    use HasFactory;

    public function tour()
    {
        return $this->belongsTo(Tour::class);
    }

    public function requirements()
    {
        return $this->hasMany(PlanRequirement::class);
    }
    public function tourLocation(){
        return $this->hasMany(TourLocation::class);
    }
}

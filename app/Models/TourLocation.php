<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TourLocation extends Model
{
    use HasFactory;
    protected $fillable = [
        'tourplan_id',
       
       
    ];

    public function tourPlan()
    {
        return $this->belongsTo(TourPlan::class, 'tourplan_id'); // Ensure the foreign key is correct
    }   
    public function Tourtransportaion(){
        return $this->hasMany(TourTransportation::class);
    }
}

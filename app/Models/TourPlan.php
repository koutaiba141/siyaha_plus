<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Tour;
class TourPlan extends Model
{
    use HasFactory;
    protected $fillable = [
        'plan_name',
        'plan_description',
        'start_date',
        'end_date',
        'price',
        'tour_id' // if this field is part of the mass-assigned data
    ];

    public function tour()
    {
        return $this->belongsTo(Tour::class);
    }

    public function requirements()
    {
        return $this->hasMany(PlanRequirement::class, 'plan_id'); // Use 'plan_id' here as well
    }
    
    public function tourLocations()
    {
        return $this->hasMany(TourLocation::class, 'tourplan_id'); // Define the correct foreign key
    }}
    


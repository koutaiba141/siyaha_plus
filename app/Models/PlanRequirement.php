<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PlanRequirement extends Model
{
    use HasFactory;

    public function tourPlan()
    {
        return $this->belongsTo(TourPlan::class, 'plan_id');
    }
}

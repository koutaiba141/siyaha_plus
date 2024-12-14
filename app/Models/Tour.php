<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\TourPlan;
use App\Models\Category;


class Tour extends Model
{
    use HasFactory;
    protected $fillable = [
        'tour_name',
        'tour_description',
        'company_id'
    ];

    public function company()
    {
        return $this->belongsTo(Company::class);
    }


    public function images()
    {
        return $this->hasMany(TourImage::class);
    }
    public function tourPlans()
    {
        return $this->hasMany(TourPlan::class);
    }
    public function categories()
    {
        return $this->belongsToMany(Category::class, 'tour_catigories', 'tour_id', 'catigory_id');
    }
}
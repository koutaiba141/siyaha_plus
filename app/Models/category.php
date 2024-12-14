<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class category extends Model
{
    use HasFactory;
    protected $table = 'catigories';

    public function tours()
    {
        return $this->belongsToMany(Tour::class, 'tour_catigories', 'catigory_id', 'tour_id');
    }
    public function tourcategory(){
        return $this->hasMany(TourCategory::class);
    }
}

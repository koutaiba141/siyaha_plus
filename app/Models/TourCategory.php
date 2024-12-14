<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TourCategory extends Model
{
    use HasFactory;
    protected $table = 'tour_catigories';
    protected $fillable = [
        'tour_id',
        'catigory_id',
       
    ];


    public function category()
    {
        return $this->belongsTo(Category::class, 'catigory_id');
    }
    public function tour()
    {
        return $this->belongsTo(tour::class);
    }
}

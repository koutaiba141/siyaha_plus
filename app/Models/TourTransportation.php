<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TourTransportation extends Model
{
    use HasFactory;

    public function location()
    {
        return $this->belongsTo(TourLocation::class);
    }
}

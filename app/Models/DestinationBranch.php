<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DestinationBranch extends Model
{
    use HasFactory;

    public function destination()
    {
        return $this->belongsTo(Destination::class);
    }

    public function feedbacks()
    {
        return $this->hasMany(DestinationFeedback::class);
    }

    public function phones()
    {
        return $this->hasMany(DestinationPhone::class);
    }

    public function googleMaps()
    {
        return $this->hasMany(DestinationGoogleMap::class);
    }
}

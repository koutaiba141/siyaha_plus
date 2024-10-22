<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DestinationFeedback extends Model
{
    use HasFactory;

    public function branch()
    {
        return $this->belongsTo(DestinationBranch::class);
    }
}

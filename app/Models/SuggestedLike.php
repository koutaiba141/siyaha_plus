<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DestinationPhone extends Model
{
    use HasFactory;

    protected $fillable= ["SuggestedId,UserId,IsLike"];

    public function Like()
    {
        return $this->belongsTo(Suggested::class);
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuggestedLike extends Model
{
    use HasFactory;

    protected $table = 'suggestedlike';

    protected $fillable= ['SuggestedId','UserId','IsLike'];

    public function Like()
    {
        return $this->belongsTo(Suggested::class);
    }
}

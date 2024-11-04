<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuggestedComment extends Model
{
    use HasFactory;

    protected $table = 'suggestedcomment';

    protected $fillable = ["SuggestedId","UserId","Comment"];

    public function Comment()
    {
        return $this->belongsTo(Suggested::class);
    }
}

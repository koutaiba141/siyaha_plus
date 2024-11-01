<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Suggested extends Model
{
    use HasFactory;

    protected $fillable = ['ProfileImage','SuggestedName','totalLikes','TotalComment','Description','Email','Location','PhoneNumber','Facebook','Instagramm','Tiktok','Youtube'];

    public function Likes()
    {
        return $this->hasMany(SuggestedLike::class);
    }

    public function Comments()
    {
        return $this->hasMany(SuggestedComment::class);
    }
}

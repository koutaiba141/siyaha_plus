<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('Suggested', function (Blueprint $table) {
            $table->id();
            $table-> mediumBlob('ProfileImage');
            $table-> string('SuggestedName');
            $table->string('TotalLikes');
            $table->string('TotalComment');
            $table->string('Description');
            $table->string('Email');
            $table->string('Location');
            $table->string('PhoneNumber');
            $table->string('Facebook');
            $table->string('Instagramm');
            $table->string('Tiktok');
            $table->string('Youtube');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Suggested');
    }
};

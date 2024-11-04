<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('Suggested', function (Blueprint $table) {
            $table->id();
            $table->binary('ProfileImage');
            $table->string('SuggestedName');
            $table->integer('TotalLikes')->default(0);
            $table->integer('TotalComment')->default(0);
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
        // Alter the column to use MEDIUMBLOB
        DB::statement('ALTER TABLE Suggested MODIFY ProfileImage MEDIUMBLOB');
    
    }

    

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('Suggested');
    }
};

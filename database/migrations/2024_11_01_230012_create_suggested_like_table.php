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
        Schema::create('SuggestedLike', function (Blueprint $table) {
            $table->id();
            $table->integer('SuggestedId');
            $table->integer('UserId');
            $table->boolean('IsLike');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('SuggestedLike');
    }
};

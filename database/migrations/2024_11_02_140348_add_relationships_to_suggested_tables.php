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
       // Update 'SuggestedComment' table
       Schema::table('SuggestedComment', function (Blueprint $table) {
        $table->unsignedBigInteger('SuggestedId')->change();
        $table->foreign('SuggestedId')->references('id')->on('Suggested')->onDelete('cascade');
    });

    // Update 'SuggestedLike' table
    Schema::table('SuggestedLike', function (Blueprint $table) {
        $table->unsignedBigInteger('suggestedId')->change();
        $table->foreign('SuggestedId')->references('id')->on('Suggested')->onDelete('cascade');
    });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('suggested_like', function (Blueprint $table) {
            $table->dropForeign(['SuggestedId']);
        });

        Schema::table('SuggestedComment', function (Blueprint $table) {
            $table->dropForeign(['SuggestedId']);
        });
    }
};

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
        // Update 'persons' table
        Schema::table('persons', function (Blueprint $table) {
            $table->unsignedBigInteger('country_id')->change();
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
        });

        // Update 'person_nationalities' table
        Schema::table('person_nationalities', function (Blueprint $table) {
            $table->unsignedBigInteger('country_id')->change();
            $table->unsignedBigInteger('person_id')->change();
            $table->foreign('country_id')->references('id')->on('countries')->onDelete('cascade');
            $table->foreign('person_id')->references('id')->on('persons')->onDelete('cascade');
        });

        // Update 'tour_locations' table
        Schema::table('tour_locations', function (Blueprint $table) {
            $table->unsignedBigInteger('tourplan_id')->change();
            $table->foreign('tourplan_id')->references('id')->on('tour_plans')->onDelete('cascade');
        });

        // Update 'tour_plans' table
        Schema::table('tour_plans', function (Blueprint $table) {
            $table->unsignedBigInteger('tour_id')->change();
            $table->foreign('tour_id')->references('id')->on('tours')->onDelete('cascade');
        });

        // Update 'tour_transportation' table
        Schema::table('tour_transportation', function (Blueprint $table) {
            $table->unsignedBigInteger('location_id')->change();
            $table->foreign('location_id')->references('id')->on('tour_locations')->onDelete('cascade');
        });

        // Update 'plan_requirments' table
        Schema::table('plan_requirments', function (Blueprint $table) {
            $table->unsignedBigInteger('plan_id')->change();
            $table->foreign('plan_id')->references('id')->on('tour_plans')->onDelete('cascade');
        });

        // Update 'tour_images' table
        Schema::table('tour_images', function (Blueprint $table) {
            $table->unsignedBigInteger('tour_id')->change();
            $table->foreign('tour_id')->references('id')->on('tours')->onDelete('cascade');
        });

        // Update 'tours' table
        Schema::table('tours', function (Blueprint $table) {
            $table->unsignedBigInteger('company_id')->change();
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
        });

        // Update 'tour_catigories' table
        Schema::table('tour_catigories', function (Blueprint $table) {
            $table->unsignedBigInteger('catigory_id')->change();
            $table->foreign('catigory_id')->references('id')->on('catigories')->onDelete('cascade');
        });

        // Update 'company_phones' table
        Schema::table('company_phones', function (Blueprint $table) {
            $table->unsignedBigInteger('company_id')->change();
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
        });

        // Update 'company_socials' table
        Schema::table('company_socials', function (Blueprint $table) {
            $table->unsignedBigInteger('company_id')->change();
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
        });

        // Update 'company_owners' table
        Schema::table('company_owners', function (Blueprint $table) {
            $table->unsignedBigInteger('company_id')->change();
            $table->foreign('company_id')->references('id')->on('companies')->onDelete('cascade');
        });

        // Update 'destination_branch' table
        Schema::table('destination_branch', function (Blueprint $table) {
            $table->unsignedBigInteger('destination_id')->change();
            $table->foreign('destination_id')->references('id')->on('destination')->onDelete('cascade');
        });

        // Update 'destination_feedback' table
        Schema::table('destination_feedback', function (Blueprint $table) {
            $table->unsignedBigInteger('branch_id')->change();
            $table->foreign('branch_id')->references('id')->on('destination_branch')->onDelete('cascade');
        });

        // Update 'destination_phone' table
        Schema::table('destination_phone', function (Blueprint $table) {
            $table->unsignedBigInteger('branch_id')->change();
            $table->foreign('branch_id')->references('id')->on('destination_branch')->onDelete('cascade');
        });

        // Update 'destination_googlemaps' table
        Schema::table('destination_googlemaps', function (Blueprint $table) {
            $table->unsignedBigInteger('branch_id')->change();
            $table->foreign('branch_id')->references('id')->on('destination_branch')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Dropping foreign keys and reverting column types
        Schema::table('persons', function (Blueprint $table) {
            $table->dropForeign(['country_id']);
        });

        Schema::table('person_nationalities', function (Blueprint $table) {
            $table->dropForeign(['country_id']);
            $table->dropForeign(['person_id']);
        });

        Schema::table('tour_locations', function (Blueprint $table) {
            $table->dropForeign(['tourplan_id']);
        });

        Schema::table('tour_plans', function (Blueprint $table) {
            $table->dropForeign(['tour_id']);
        });

        Schema::table('tour_transportation', function (Blueprint $table) {
            $table->dropForeign(['location_id']);
        });

        Schema::table('plan_requirments', function (Blueprint $table) {
            $table->dropForeign(['plan_id']);
        });

        Schema::table('tour_images', function (Blueprint $table) {
            $table->dropForeign(['tour_id']);
        });

        Schema::table('tours', function (Blueprint $table) {
            $table->dropForeign(['company_id']);
        });

        Schema::table('tour_catigories', function (Blueprint $table) {
            $table->dropForeign(['catigory_id']);
        });

        Schema::table('company_phones', function (Blueprint $table) {
            $table->dropForeign(['company_id']);
        });

        Schema::table('company_socials', function (Blueprint $table) {
            $table->dropForeign(['company_id']);
        });

        Schema::table('company_owners', function (Blueprint $table) {
            $table->dropForeign(['company_id']);
        });

        Schema::table('destination_branch', function (Blueprint $table) {
            $table->dropForeign(['destination_id']);
        });

        Schema::table('destination_feedback', function (Blueprint $table) {
            $table->dropForeign(['branch_id']);
        });

        Schema::table('destination_phone', function (Blueprint $table) {
            $table->dropForeign(['branch_id']);
        });

        Schema::table('destination_googlemaps', function (Blueprint $table) {
            $table->dropForeign(['branch_id']);
        });
    }
};

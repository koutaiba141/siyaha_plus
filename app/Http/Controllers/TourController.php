<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Tour;
use App\Models\TourPlan;
use App\Http\Models\TourLocation;
use App\Http\Models\TourImage;
use Illuminate\Support\Facades\Validator;



class TourController extends Controller
{

    public function getAllTripDetails($tourId)
{
    // Fetch the tour along with related data (company, categories, images)
    $tour = Tour::with([
        'company',
        'categories', // Corrected eager loading of categories
        'images', 
        'tourPlans' // This will load all related plans
    ])->findOrFail($tourId);

    // Check if categories and plans are loaded properly
    if (!$tour->categories || !$tour->tourPlans) {
        return response()->json([
            'error' => 'Failed to load categories or plans for this tour'
        ], 400);
    }

    // Return the response with tour and related details
    return response()->json([
        'tour' => $tour,
        'company' => $tour->company,
        'categories' => $tour->categories,
        'images' => $tour->images,
        'plans' => $tour->tourPlans,
    ]);
}

public function getAllPlanDetails($tourPlanId)
{
    // Fetch the plan along with requirements, locations, and transportation details
    $tourPlan = TourPlan::with([
        'tour', 
        'requirements', 
        'tourLocations.tourTransportation' // Eager load the transportation methods for each location
    ])->findOrFail($tourPlanId);

    // Return the response with the plan and associated details
    return response()->json([
        'tour_plan' => $tourPlan,
        'tour' => $tourPlan->tour,
        'requirements' => $tourPlan->requirements,
        'locations' => $tourPlan->tourLocations,
    ]);
}

public function store(Request $request)
{
    // Validate incoming data
    $validator = Validator::make($request->all(), [
        'tour_name' => 'required|string|max:255',
        'tour_description' => 'required|string',
        'company_id' => 'required|exists:companies,id',
        'categories' => 'required|array', // Array of category IDs
        'categories.*' => 'exists:catigories,id', // Ensure each category exists
        'tour_plans' => 'required|array',
        'tour_plans.*.plan_name' => 'required|string',
        'tour_plans.*.plan_description' => 'required|string',
        'tour_plans.*.start_date' => 'required|date',
        'tour_plans.*.end_date' => 'required|date',
        'tour_plans.*.price' => 'required|numeric',
        'images' => 'nullable|array',
        'images.*' => 'file|image|max:10240', // Optional image files
    ]);

    if ($validator->fails()) {
        return response()->json([
            'errors' => $validator->errors()
        ], 400); // Return errors if validation fails
    }

    // Create the Tour and proceed if validation passes
    $tour = Tour::create([
        'tour_name' => $request->tour_name,
        'tour_description' => $request->tour_description,
        'company_id' => $request->company_id,
    ]);

    // Attach Categories to the Tour
    $tour->categories()->attach($request->categories);

    // Create Tour Plans and associate with the Tour
    foreach ($request->tour_plans as $planData) {
        $tourPlan = new TourPlan([
            'plan_name' => $planData['plan_name'],
            'plan_description' => $planData['plan_description'],
            'start_date' => $planData['start_date'],
            'end_date' => $planData['end_date'],
            'price' => $planData['price'],
        ]);
        $tour->tourPlans()->save($tourPlan);
    }

    // Handle Tour Images if present
    if ($request->has('images')) {
        foreach ($request->images as $image) {
            $path = $image->store('tour_images', 'public'); // Store the image
            $tour->images()->create([
                'image_path' => $path,
            ]);
        }
    }

    return response()->json([
        'message' => 'Tour created successfully',
        'tour' => $tour->load('categories', 'tourPlans', 'images')
    ], 201);
}

}




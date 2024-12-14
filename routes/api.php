<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController; // Correct the namespace
use App\Http\Controllers\TourController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::get('/company/{id}/details', [CompanyController::class, 'getCompanyDetails']);
Route::post('/company/details', [CompanyController::class, 'addCompanyDetails']);
Route::delete('/company/{id}/delete', [CompanyController::class, 'deleteCompany']);


Route::get('/tour/{tourId}/details', [TourController::class, 'getAllTripDetails']);
Route::get('/tour-plan/{tourPlanId}/details', [TourController::class, 'getAllPlanDetails']);
Route::post('tours', [TourController::class, 'store']);
    
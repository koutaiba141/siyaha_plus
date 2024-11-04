<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\SuggestedController;
use App\Http\Controllers\API\SuggestedLikeController;
use App\Http\Controllers\API\SuggestedCommentController;

Route::get('Suggested',[SuggestedController::class,'index']);
Route::post('Suggested',[SuggestedController::class,'store']);
Route::get('Suggested/{id}',[SuggestedController::class,'show']);
Route::put('Suggested/{id}',[SuggestedController::class,'update']);
Route::delete('Suggested/{id}',[SuggestedController::class,'destroy']);

Route::post('SuggestedLike',[SuggestedLikeController::class,'store']);
Route::get('SuggestedLike/{id}',[SuggestedLikeController::class,'show']);
Route::delete('SuggestedLike/{id}',[SuggestedLikeController::class,'destroy']);

Route::post('SuggestedComment',[SuggestedCommentController::class,'store']);
Route::get('SuggestedComment/{id}',[SuggestedCommentController::class,'show']);
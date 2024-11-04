<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use  App\Models\SuggestedLike;

class SuggestedLikeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $NewSuggestedLike = SuggestedLike::create($request->all());
        return response()->json([
            'status'=>true,
            'data'=>$NewSuggestedLike
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $SuggestedLike = SuggestedLike::find($id);
        return response()->json($SuggestedLike);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $SuggestedLike = SuggestedLike::find($id);
        $SuggestedLike->delete();
        return response()->json(['message' => 'Deleted successfully']);
    }
}

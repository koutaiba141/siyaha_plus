<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Suggested;


class SuggestedController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $Suggested = Suggested::all();
        return response()->json($Suggested);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $NewSuggested = Suggested::create($request->all());
        return response()->json([
            'status'=>true,
            'data'=>$NewSuggested
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $Suggested = Suggested::find($id);
        return response()->json($Suggested);
    }


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $Suggested = Suggested::find($id);
        $Suggested->update($request->all());
        return response()->json($Suggested);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $Suggested = Suggested::find($id);
        $Suggested->delete();
        return response()->json(['message' => 'Deleted successfully']);
    }
}

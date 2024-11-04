<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SuggestedComment;

class SuggestedCommentController extends Controller
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
        $NewSuggestedComment= SuggestedComment::create($request->all());
        return response()->json([
            'status'=>true,
            'data'=>$NewSuggestedComment
        ]);
    }



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $SuggestedComment = SuggestedComment::where('SuggestedId', $id)->get();;
        return response()->json($SuggestedComment);
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
        //
    }
}

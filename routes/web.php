<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test-db', function () {
    try {
        $dbName = DB::connection()->getDatabaseName();
        return 'Connected to database: ' . $dbName;
    } catch (\Exception $e) {
        return 'Could not connect to the database. Error: ' . $e->getMessage();
    }
});

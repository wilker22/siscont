<?php

use App\Models\Instrumento;
use App\Models\Municipio;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/many', function () {
    // $municipio = Municipio::with('instrumentos')->find(1);

    // $instrumento = Instrumento::find(1);
    // $municipio->instrumentos()->detach([
    //     2,
    //     3
    // ]);
    // $municipio->refresh();
    // dd($municipio->instrumentos);
});

<?php

use App\Http\Controllers\api\AuthController;
use App\Http\Controllers\api\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::group([
    'middleware' => 'api',

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/updateProfile', [AuthController::class, 'updateProfile']);
    Route::get('/user', [UserController::class, 'userProfile']);
});
Route::group(['middleware'=>'checkLang'],function(){
    Route::get('/faculties', [UserController::class, 'getFaculties']);
    Route::get('/squads', [UserController::class, 'getSquads']);
    Route::get('/locations', [UserController::class, 'getLocations']);
    Route::get('/countries', [UserController::class, 'getCountries']);
    Route::get('/allusers', [UserController::class, 'getAllUsers']);
});








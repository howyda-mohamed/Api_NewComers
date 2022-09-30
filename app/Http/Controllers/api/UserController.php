<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\Faculty;
use App\Models\Location;
use App\Models\Squad;
use App\Models\University;
use App\Models\User;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;

use function PHPUnit\Framework\returnCallback;

class UserController extends Controller
{
    use GeneralTrait;
    // save coutries in database
    public function index()
    {
        $response = Http::get('http://api.countrylayer.com/v2/all?access_key=00a4b24f58601c467841290a05562669');
        $manage = json_decode($response, true);
        foreach( $manage as $key){

        Country::create(['name'=> $key['name']]);
        }
        return response('done');
    }


    public function getCountries()
    {
        $countries = Country::select('id','name_'.app()->getLocale() .' as name')->get();
        return response($countries);
    }


    public function getFaculties()
    {
        $faculity=Faculty::select('id','image','link','phone_'.app()->getLocale() .' as phone','sub_title_'.app()->getLocale() .' as sub_title','title_'.app()->getLocale() .' as title','location_'.app()->getLocale() .' as location',
        'description_'.app()->getLocale() .' as description')->get();
        return response()->json($faculity);
    }


    public function getSquads()
    {
        $squads=Squad::select('id','name_'.app()->getLocale() .' as name')->get();
        return response()->json($squads);
    }

    public function userProfile() {

        $user =User::where('id',auth('api')->id())
        ->with('faculty','Country','squad')->get();
         //check user authentacation and return value
        return ( auth('api')->check() )?response()->json($user):response()->json(['error' => 'Unauthorized'], 401);
    }
    public function getLocations()
    {
        $location =Location::select('id','image','link','phone_'.app()->getLocale() .' as phone','sub_title_'.app()->getLocale() .' as sub_title','title_'.app()->getLocale() .' as title','location_'.app()->getLocale() .' as location')->get();
       // if (auth('api')->check()) {
            return   (sizeof($location) !==0) ?  response()->json($location) :  response()->json('no locations in database');
        // }else{
        //     return response()->json(['error' => 'Unauthorized'], 401);
        // }
    }
    public function getAllUsers()
    {
        $users =User::all();
        return  response()->json($users);
    }
}

<?php
namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Traits\GeneralTrait;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Validator;
use Exception;
use Faker\Extension\Extension;
use Tymon\JWTAuth\Exceptions\JWTException;
use Symfony\Component\HttpFoundation\Response;
use App\Models\Country;
use App\Models\Faculty;
use App\Models\Squad;
use Illuminate\Support\Facades\Validator as FacadesValidator;

class AuthController extends Controller
{
    use GeneralTrait;
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct() {
            auth()->setDefaultDriver('api');
            $this->middleware('auth:api', ['except' => ['profile_photo','login','logout' , 'register']]);


    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request){
        $validator = FacadesValidator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        if (! $token = auth()->attempt($validator->validated())) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->createNewToken($token);
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request) {
        $validator = FacadesValidator::make($request->all(), [
            'name' => 'required|string|between:2,100',
            'email' => 'required|string|email|max:100|unique:users',
            'password' => 'required|string|min:6',
            'phone' => 'required|min:11|numeric|unique:users',
             'faculty' => 'required|exists:faculties,title_en',
            'country' => 'required|exists:countries,name_en',
            'squad' => 'required|exists:squads,name_en',
            'passportId'=>'required|min:9|unique:users'

        ]);

        if($validator->fails()){
            return response()->json($validator->errors()->toJson(), 400);
        }

        $faculty_id =Faculty::select('id')->where('title_en',$request->faculty)->first()->id;
        $country_id =Country::select('id')->where('name_en',$request->country)->first()->id;
        $squad_id =Squad::select('id')->where('name_en',$request->squad)->first()->id;

        $user = User::create([
                    'password' => bcrypt($request->password) ,
                    'name' => $request->name,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'faculty_id' => $faculty_id,
                    'country_id' => $country_id,
                    'squad_id' => $squad_id,
                    'passportId' => $request->passportId,

                ]);


        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], 201);
    }


    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout() {

         if (auth('api')->check()) {
           auth('api')->logout();
         return response()->json(['message' => 'User successfully signed out']);
         }
        return response()->json(['error' => 'Unauthorized'], 401);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken(auth()->refresh());
    }


    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60,
            'user' => auth()->user()
        ]);
    }

    public function updateProfile(Request $request)
    {
        if (auth('api')->check()) {

            try{
                $validator=FacadesValidator::make($request->all(),
                [
                    'name'=>'required|string|max:255',
                    'email'=>'required|email|max:255',
                    'image'=>'required|image|mimes:png,jpg',
                    'phone'=>'required|max:255',
                    'password'=>'required|max:255',
                ]);
                if($validator->fails())
                {
                    return $this->returnError('E001',$validator->errors());
                }
                else
                {
                    $user=$request->user();
                    if($request->hasFile('image'))
                    {
                        $file=$request->file('image');
                        $ext=$file->getClientOriginalExtension();
                        $file_name=time().'.'.$ext;
                        $path="assets/images/profile-photo/".$file_name;
                        $file->move('public/assets/images/profile-photo',$file_name);
                        $updates=$user->update([
                        'name'=>$request->name,
                        'email'=>$request->email,
                        'password'=>bcrypt($request->password),
                        'phone'=>$request->phone,
                        'image'=>$path]);
                        if($updates)
                        {
                            $user =auth('api')->user();
                            return  response()->json([
                                'message' => 'Profile Photo Updated Successfuly',
                                'img' => $user->img], 201);
                        }
                        else
                        {
                            return $this->returnError('E001','Something Went Error Please Try Again');
                        }
                    }
                    else
                    {
                        return $this->returnError('E001','Please Select Profile Photo');
                    }
                }
            }
            catch(Extension $ex)
            {
                return $this->returnError('E001','Something Went Error Please Try Again');
            }
        }
        else
        {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

    }

}

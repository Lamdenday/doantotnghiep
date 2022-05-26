<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\District;
use App\Models\Location;
use App\Models\Ward;
use App\Services\Location\GetAllLocationService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redis;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    protected $getAllLocactionService;

    public function __construct()
    {
        $this->getAllLocactionService=app(GetAllLocationService::class);
    }
    public function index()
    {
        $locations = $this->getAllLocactionService->getAll();
        return view('admin.locations.index',compact('locations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $districts=District::orderBy('name',"DESC")->get();
        $wards=Ward::orderBy('name','ASC')->get();
        return view('admin.locations.create',compact('districts'),compact(('wards')));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=new Location($request->all());
        $district_id=District::where('id',"=",$request->district)->get();
        $data['address']=$request->ward;
        dd($district_id);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function show(Location $location)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function edit(Location $location)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Location $location)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function destroy(Location $location)
    {
        //
    }

    public function deleted(Request $request)
    {
        return view('locations.index');
        // $ids = $request->ids;
        // Location::whereIn('id', $ids)->delete();
        // return response()->json(["Greated!"]);
    }

    public function select_address(Request $request)
    {
        $data=$request->all();
        if($data['action'])
        {
            $output ='';
            if($data['action']=="district")
            {
                $select_ward=Ward::where('district_id',$data['id_district'])->orderBy('district_id','ASC')->get();
                $output .= '<option> -- Choose Ward -- </option>';
                foreach($select_ward as $key => $ward)
                {
                    $output .='<option value="'.$ward->district_id.'">'.$ward->name.'</option>';
                }
            }
        }
        echo $output;
    }
}

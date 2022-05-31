<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Location\LocationStoreRequest;
use App\Http\Requests\Location\LocationUpdateRequest;
use App\Models\District;
use App\Models\Location;
use App\Models\Ward;
use App\Services\Location\GetAllLocationService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
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
    public function store(LocationStoreRequest $request)
    {
        $data=new Location($request->all());
        $data['location_name']= $request->location_name;
        $data['slug']=$request->slug."-".rand(100000,999999);
        $districts=District::where('id',"=",$request->district)->get();
        foreach($districts as $district)
        {
            $wards=Ward::where('id',"=",$request->ward)->get();
            foreach($wards as $ward)
            {
                $address="";
                if($request->address_detail=="")
                {
                    $address=$ward['name'].",".$district['name'];
                }
                else
                {
                    $address=$request->address_detail.",".$ward['name'].",".$district['name'];
                }
            }
        }
        $data['address']= $address;
        $data['description']=$request->description;
        if($request->hasFile('image')) {  
            $file = $request->file('image');
            $extention = $file->getClientOriginalExtension();
            $filename = time().'.'.$extention;
            $file->move('uploads/locations/', $filename);
            $data->image = $filename;
        }
        $data['checkin']=$request->checkin;
        $data->save();
        $request->session()->flash('status', 'Add new data successfull!');
        return redirect()->route('location.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function show(Location $location,$id)
    {

        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function edit(Location $location,$id)
    {
        $locations=Location::find($id);
        $arr1=explode(',', $locations['address']);
        if(count($arr1) >=3)
        {
            $district_list=District::where('name','=',$arr1[2])->get();
            $ward_list=Ward::where('name','=',$arr1[1])->get();
        }
        else
        {
            $district_list=District::where('name','=',$arr1[1])->get();
            $ward_list=Ward::where('name','=',$arr1[0])->get();
        }
        $districts=District::orderBy('name','DESC')->get();
        return view('admin.locations.edit',compact('locations','district_list','ward_list','districts'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Location $location,$id)
    {
        $data=Location::find($id);
        $data['location_name']= $request->location_name;
        $data['slug']=$request->slug."-".rand(100000,999999);
        $districts=District::where('id',"=",$request->district)->get();
        foreach($districts as $district)
        {
            $wards=Ward::where('id',"=",$request->ward)->get();
            foreach($wards as $ward)
            {
                $address="";
                if($request->address_detail=="")
                {
                    $address=$ward['name'].",".$district['name'];
                }
                else
                {
                    $address=$request->address_detail.",".$ward['name'].",".$district['name'];
                }
            }
        }
        $data['address']= $address;
        $data['description']=$request->description;
        if($request->hasFile('image')) {
            $dest='uploads/locations/'.$data->image;
            if(File::exists($dest)) {
                File::delete($dest);
            }
            $file = $request->file('image');
            $extention = $file->getClientOriginalExtension();
            $filename = time().'.'.$extention;
            $file->move('uploads/locations/', $filename);
            $data->image = $filename;
        }
        $data['checkin']=$request->checkin;
        $data->save();
        $request->session()->flash('status', 'Update data successful!');
        return redirect()->route('location.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Location  $location
     * @return \Illuminate\Http\Response
     */
    public function destroy(Location $location,$id,Request $request)
    {
        $data=Location::find($id);
        $dest = 'uploads/locations/'.$data->image;
        if(File::exists($dest)) {
            File::delete($dest);
        }
        $data->delete();
        $request->session()->flash('status', 'Delete data successfull!');
        return redirect()->back();
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
               
                foreach($select_ward as $key => $ward)
                {
                    $output .='<option value="'.$ward->id.'">'.$ward->name.'</option>';
                }
            }
        }
        echo $output;
    }
}

@extends('admin.master')

@section('content')
    <center><h1>{{ $locations->location_name }} detail</h1></center>
    
    <div class="container">
    <a href="{{ route('location.index') }}" class="btn btn-info"><i class="fa-solid fa-arrow-rotate-left"></i></a>

        <div class="row">
            <div class="col-md-3 ">
                <img src="{{  asset("/uploads/locations") }}/{{ $locations->image }}" alt="" width="300px" height="300px" class="shadow-lg p-3 mb-5 bg-white main-img" id="ProductImg">
            </div>
            <div class="col-md-6">
                <h2 class="mt-4 text-dark fw-bold"> <i class="fa-solid fa-place-of-worship text-primary"></i> {{ $locations->location_name }}</h2>
                <h5 class="mt-4 text-dark fw-bold"><i class="fa-solid fa-location-dot text-danger"></i> {{ $locations->address }}</h5>
                <h5 class="mt-4 text-dark fw-bold"> <i class="fa-solid fa-circle-info text-success"></i> {{ $locations->description }}</h5>
                <h5 class="mt-4 text-dark fw-bold"> <a href="{{ $locations->checkin }}" class="text-decoration-none" target="_blank"><i class="fa-solid fa-map-location-dot text-info"></i> Google map </a></h5>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-2 rounded">
                <img class="rounded small-img  shadow-lg p-3 mb-5 bg-white" src="{{ asset('admin/assets/images/cauthehuc.jpeg') }}" alt="" width="200px" height="200px">
            </div>
            <div class="col-md-2 rounded">
                <img class="rounded small-img  shadow-lg p-3 mb-5 bg-white" src="{{ asset('admin/assets/images/chuamotcot.jpeg') }}" alt="" width="200px" height="200px">
            </div>
            <div class="col-md-2 rounded">
                <img class="rounded small-img  shadow-lg p-3 mb-5 bg-white" src="{{ asset('admin/assets/images/hoangthang.jpeg') }}" alt="" width="200px" height="200px">
            </div>
            <div class="col-md-2 rounded">
                <img class="rounded small-img  shadow-lg p-3 mb-5 bg-white" src="{{ asset('admin/assets/images/vanmieu.jpeg') }}" alt="" width="200px" height="200px">
            </div>
        </div>
    </div>

    <center><form action="{{ route('location.destroy',['id'=>$locations->id]) }}" method="post" class="mt-2">
        @csrf
        @method('DELETE')
        <button class="btn btn-danger" onclick="return confirm('Are you want to delete this location ?')"><i class="fa-solid fa-trash-can"></i></button>
    </form></center>
    </div>

    <div class="container">
        
    </div>
    <style scoped>
        .small-img{
            cursor: pointer;
            transition: transform .2s;
        }
        .small-img:hover
        {
            -ms-transform: scale(1.15); /* IE 9 */
            -webkit-transform: scale(1.15); /* Safari 3-8 */
            transform: scale(1.15); 
        }
        .main-img{
            cursor: pointer;
            transition: transform .2s;
        }
        .main-img:hover
        {
            -ms-transform: scale(1.15); /* IE 9 */
            -webkit-transform: scale(1.15); /* Safari 3-8 */
            transform: scale(1.15); 
        }
    </style>
    <script>
        var mainImg=document.getElementById('ProductImg');
        var smallImg=document.getElementsByClassName('small-img')

        smallImg[0].onclick=function()
        {
            mainImg.src=smallImg[0].src;
        }
        smallImg[1].onclick=function()
        {
            mainImg.src=smallImg[1].src;
        }
        smallImg[2].onclick=function()
        {
            mainImg.src=smallImg[2].src;
        }
        smallImg[3].onclick=function()
        {
            mainImg.src=smallImg[3].src;
        }
    </script>
@endsection
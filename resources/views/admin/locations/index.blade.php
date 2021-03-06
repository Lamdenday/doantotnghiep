@extends('admin.master')
@section('content')
<center>
   <h2>{{ __('language.location_list') }}</h2>
</center>


<div class="container mt-2">
   <div id="myElem">
      @if (session('status'))
      <div class=" mb-3 alert alert-success text-light fw-bold">{{ session('status') }}</div>
     @endif
   </div>
   <a href="{{ route('location.create') }}" title="Add new location" class="btn btn-info"><i class="fa-solid fa-plus"></i></a>
   <table class="table table-striped">
      <thead>
         <tr>
            <th>ID</th>
            <th>Location name</th>
            <th>Address</th>
            <th>Description</th>
            <th>Image</th>
            <th>Action</th>
         </tr>
      </thead>
      <tbody>
         <?php $k=1;?>
         @if(count($locations)>0)
         @foreach ($locations as $location)   
         <tr>
            <td>{{ $k++ }}</td>
            <td>{{ $location->location_name }}</td>
            <td>{{ Str::limit($location->address,10,'...') }}</td>
            <td>{{ Str::limit($location->description,10,'...') }}</td>
            <td>
               <a href="{{ asset('uploads/locations') }}/{{ $location->image }}" target="_blank">
                  
                     <img src="{{ asset('uploads/locations') }}/{{ $location->image }}" class="shadow-lg p-1 mb-1 bg-white" alt="" width="120px">               
               </a>
            </td>
           
            <td>    
                  <form action="{{ route('location.destroy',['id'=>$location->id]) }}" method="POST">
                     @csrf
                     @method('DELETE')
                     <a href="{{ route('location.edit',['id'=>$location->id]) }}" title="{{ $location->location_name }} edit" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
                     <a href="{{ route('location.show',['id'=>$location->id]) }}" title="{{ $location->location_name }}  details" class="btn btn-success"><i class="fa-solid fa-circle-info"></i></a>
                     <button type="submit" onclick="return confirm('B???n c?? mu???n x??a B???n c?? mu???n x??a d??? li???u n??y kh??ng ?')" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
                  </form>
            </td>
         </tr>
       
         @endforeach
         @else
         <tr>
         <td colspan="6"><h3 class="text-danger"><center>Empty record!</center></h3></td>
         </tr>
         @endif
      </tbody>
   </table>
   {{ $locations->links() }}
</div>
<script>
   $(document).ready(function(){
      $("#myElem").fadeOut(3000); 
});
</script>
@endsection

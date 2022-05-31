@extends('admin.master')
@section('content')
<center>
   <h1>Location list Page</h1>
</center>

<div class="container mt-2">
   @if (session('status'))
      <div class=" mb-3 alert alert-success text-light fw-bold">{{ session('status') }}</div>
   @endif
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
         @foreach ($locations as $location)
         <tr>
            <td>{{ $location->id }}</td>
            <td>{{ $location->location_name }}</td>
            <td>{{ Str::limit($location->address,10,'...') }}</td>
            <td>{{ Str::limit($location->description,10,'...') }}</td>
            <td>
               <a href="{{ asset('uploads/locations') }}/{{ $location->image }}" target="_blank">
                  <center>
                     <img src="{{ asset('uploads/locations') }}/{{ $location->image }}" alt="" width="120px">
                  </center>
               </a>
            </td>
            <td>
               <center>
                  <form action="{{ route('location.destroy',['id'=>$location->id]) }}" method="POST">
                     @csrf
                     @method('DELETE')
                     <a href="{{ route('location.edit',['id'=>$location->id]) }}" title="{{ $location->location_name }} edit" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
                     <a href="{{ route('location.show',['id'=>$location->id]) }}" title="{{ $location->location_name }}  details" class="btn btn-success"><i class="fa-solid fa-circle-info"></i></a>
                     <button type="submit" onclick="return confirm('Bạn có muốn xóa Bạn có muốn xóa dữ liệu này không ?')" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></button>
                  </form>
               </center>
            </td>
         </tr>
         @endforeach
      </tbody>
   </table>
   {{ $locations->links() }}
</div>
@endsection

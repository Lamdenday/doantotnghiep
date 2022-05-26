@extends('admin.master')
@section('content')
<center>
   <h1>Location list Page</h1>
</center>
<div class="container mt-2">
   <table class="table table-striped" id="example">
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
            <td>{{ Str::limit($location->location_name,10,'...') }}</td>
            <td>{{ Str::limit($location->address,10,'...') }}</td>
            <td>{{ Str::limit($location->description,10,'...') }}</td>
            <td>
               <a href="{{ asset('uploads') }}/{{ $location->image }}" target="_blank">
                  <center>
                     <img src="{{ asset('uploads') }}/{{ $location->image }}" alt="" width="120px">
                  </center>
               </a>
            </td>
            <td>
               <center>
                  <a href="" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
                  <a href="" class="btn btn-success"><i class="fa-solid fa-circle-info"></i></a>
                  <a href="" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></a>
               </center>
            </td>
         </tr>
         @endforeach
      </tbody>
   </table>
</div>
@endsection

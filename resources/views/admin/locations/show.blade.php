@extends('admin.master')

@section('content')
<form action="" method="post">
    @foreach($location_id as $location)
        <input type="text" value="{{ $location->location_name }}">
    @endforeach
</form>
@endsection
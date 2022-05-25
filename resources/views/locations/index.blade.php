@extends('master')

@section('content')
    <style>
        th{
            color: black;
            font-size:15px;
            font-weight: bold !important;
        }
    </style>
    <center><h1>List locaction page</h1></center>
    <div class="container">
        <button id="deleteAllSelectedRecord" class="btn btn-danger mb-2"><i class="far fa-times-circle"></i></button>
        <table class="table table-striped">
            <thead>
                    <th><input type="checkbox" id="chkCheckAll" name=""> </th>
                    <th>id</th>
                    <th>Location name</th>
                    <th>Address</th>
                    <th>Description</th>
                    <th>image</th>
                    <th>Action</th>

            </thead>
            <tbody>
                @foreach ($locations as $location)
                <tr id="sid{{$location->id}}">
                    <td><input type="checkbox" name="ids" class="checkBoxClass" value="{{$location->id}}"></td>
                    <td>{{ $location->id }}</td>
                    <td>{{ $location->location_name }}</td>
                    <td>{{ $location->address }}</td>
                    <td>{{ $location->description }}</td>
                    <td>
                        <div class="lightbox-gallery">
                            <div class="photos">
                                <div class="item">
                                    <a href="{{ asset("admin/assets/images/$location->image") }}"  data-lightbox="photos">
                                        <img src="{{ asset("admin/assets/images/$location->image") }}" class="img-fluid" alt="" width="200px" data-action="zoom" >
                                    </a>
                                </div>
                            </div>

                        </div>
                    </td>
                    <td>
                        <a href="" class="btn btn-primary"><i class="fa-solid fa-pen-to-square"></i></a>
                        <a href="{{ route('location.index') }}" class="btn btn-danger"><i class="fa-solid fa-trash-can"></i></a>
                    </td>
                </tr>
                @endforeach

            </tbody>
        </table>
    </div>

<script>

</script>
@endsection

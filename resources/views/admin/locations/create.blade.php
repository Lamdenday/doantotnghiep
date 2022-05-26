@extends('admin.master')

@section('content')
    <center><h1>Location add new page</h1></center>
    <div class="container">
        <form action="{{ route('location.store') }}" method="POST" class="mb-5 mt-2">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="" class="form-label">Location name</label>
                        <input type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Address</label>
                        <select name="district" id="district" class="form-select choose district">
                            <option value=""> -- Choose Districts -- </option>
                            @foreach ($districts as $district)
                            <option value="{{ $district->id }}">{{ $district->name }}</option>
                            @endforeach
                        </select>
                        <select name="ward" id="ward" class="form-select mt-3 choose">
                            <option value=""> -- Choose Ward -- </option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Description</label>
                        <textarea name="" id="" cols="30" rows="10" class="form-control">

                        </textarea>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <lable class="form-label">Image</lable>
                        <input type="file" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Checkin</label>
                        <input type="text" class="form-control">
                    </div>
                </div>
            </div> 
            <div class="form-group mt-3">
                <button type="submit" class="btn btn-primary"><i class="fa-solid fa-plus"></i></button>
                <button type="reset"  class="btn btn-success"><i class="fa-solid fa-trash-can-arrow-up"></i></button>
                <a href="" class="btn btn-info"><i class="fa-solid fa-arrow-rotate-left"></i></a>
            </div>
            
        </form>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.choose').on('change', function(){
                var action= $(this).attr('id');
                var id_district= $(this).val();
                var _token= $('meta[name="csrf-token"]').attr('content');
                var result='';
                // alert(action);
                // alert(id_district);
                // alert(_token);
                if(action=='district')
                {
                    result = 'ward'
                }
                $.ajax({
                    url:'{{ url('/location/select-address') }}',
                    method:'POST',
                    data:{action:action,id_district:id_district,_token:_token},
                    success:function(data)
                    {
                        $('#'+result).html(data);
                    }

                })
            })
        })
    </script>
@endsection
@extends('admin.master')

@section('content')
    <center><h1>Location add new page</h1></center>
    <div class="container">
        <a href="{{ route('location.index') }}" class="btn btn-info"><i class="fa-solid fa-arrow-rotate-left"></i></a>

        <form action="{{ route('location.store') }}" method="POST" class="mb-5 mt-2" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="" class="form-label font-weight-bold text-dark">Location name</label><label for="" class="text-danger">*</label>
                        <input type="text" class="form-control" name="location_name" id="location_name" value="{{ old('location_name') }}">
                        @error('location_name')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label font-weight-bold text-dark">Slug</label><label for="" class="text-danger">*</label>
                        <input type="text" class="form-control" name="slug" id="slug" value="{{ old('slug') }}">
                        @error('slug')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label font-weight-bold text-dark">Address</label><label for="" class="text-danger">*</label>
                        <select name="district" value="" id="district" class="form-select choose district">

                            <option value=""> -- Choose Districts -- </option>
                            @foreach ($districts as $district)
                            <option value="{{ $district->id }}">{{ $district->name }}</option>
                            @endforeach
                        </select>
                        @error('district')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                        <select name="ward" id="ward" class="form-select mt-3 choose">
                            <option value="{{ old('ward') }}"> -- Choose Ward -- </option>
                        </select>
                        @error('ward')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                        <input type="text" class="form-control mt-3" name="address_detail" value="{{ old('address_detail') }}" placeholder="Enter address detail ...">
                    </div>
                    <div class="form-group">
                        <label class="form-label font-weight-bold text-dark">Image</label><label for="" class="text-danger">*</label>
                        <input type="file" class="form-control mb-3" name="image" onChange="preview()">
                        @error('image')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                        <img id="blah" class="rounded" height="150px">
                    
                    </div>
                </div>
       
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="" class="form-label font-weight-bold text-dark">Description</label><label for="" class="text-danger">*</label>
                        <textarea name="description" id="" cols="30" rows="10" class="form-control">
                            {{ old('description') }}
                        </textarea>
                        @error('description')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                    </div>
                 
                    <div class="form-group">
                        <label for="" class="form-label font-weight-bold text-dark" >Checkin</label><label for="" class="text-danger">*</label>
                        <input type="text" class="form-control" name="checkin" value="{{ old('checkin') }}">
                        @error('checkin')
                        <div class="text-danger errMsg" >{{ $message }}</div>
                        @enderror
                    </div>
                </div>
            </div> 
            <div class="form-group mt-3">
                <button type="submit" class="btn btn-primary"><i class="fa-solid fa-plus"></i></button>
                <button type="reset"  class="btn btn-success"><i class="fa-solid fa-trash-can-arrow-up"></i></button>
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
    <script>
          $(document).ready(function(){
      $(".errMsg").fadeOut(4000); 
        });
    </script>
    <script>
    function preview()
    {
        blah.src = URL.createObjectURL(event.target.files[0]);
    }
    </script>
    <script>
        $('input#location_name').keyup(function(event) {
        /* Act on the event */
        var title, slug;

        //Lấy text từ thẻ input title 
        title = $(this).val();

        //Đổi chữ hoa thành chữ thường
        slug = title.toLowerCase();

        //Đổi ký tự có dấu thành không dấu
        slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
        slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
        slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
        slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
        slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
        slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
        slug = slug.replace(/đ/gi, 'd');
        //Xóa các ký tự đặt biệt
        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
        //Đổi khoảng trắng thành ký tự gạch ngang
        slug = slug.replace(/ /gi, "-");
        //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
        //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
        slug = slug.replace(/\-\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-/gi, '-');
        slug = slug.replace(/\-\-/gi, '-');
        //Xóa các ký tự gạch ngang ở đầu và cuối
        slug = '@' + slug + '@';
        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
        //In slug ra textbox có id “slug”
        $('input#slug').val(slug);

        });
    </script>
@endsection
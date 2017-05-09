@extends('admin.layout.index')
@section('content')
        <!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Slide:
                <small>{{$slide->Ten}}</small>
                </h1>
            </div>
            <!-- /.col-lg-12 -->
            @if(count($errors) > 0)
                <div class="alert alert-danger">
                    @foreach ($errors->all() as $err)
                        {{$err}} <br />
                    @endforeach
                </div>
            @endif
            @if (session('thongbao'))
                <div class="alert alert-success">
                    {{session('thongbao')}}
                </div>
            @endif
            <div class="col-lg-7" style="padding-bottom:120px">
                <form action="admin/slide/sua/{{$slide->id}}" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                   
                    <div class="form-group">
                        <label>Tên Slide</label>
                        <input class="form-control" name="ten" placeholder="Vui Lòng Nhập Tên Cho Slide.." value="{{$slide->Ten}}" />
                    </div>
                    <div class="form-group">
                        <label>Nội Dung</label>
                        <textarea id="demo" class="form-control ckeditor" rows="3" name="NoiDung">
                            {{$slide->NoiDung}}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label>Link</label>
                        <input class="form-control" name="link" placeholder="Vui Lòng Nhập Tên Link ..." value="{{$slide->link}}" />
                    </div>
                    <div class="form-group">
                        <label>Hình Ảnh</label>
                        <p>
                            <img src="upload/slide/{{$slide->Hinh}}" alt="placeholder+image" width="500px" >
                        </p>
                        <input type="file" name="Hinh" class="form-control" />
                    </div>
                    <button type="submit" class="btn btn-default">Sửa</button>
                    <button type="reset" class="btn btn-default">Đặt Lại Mặc Định</button>
                </form>
                </div>
            </div>
                <!-- /.row -->
        </div>
            <!-- /.container-fluid -->
</div>
        <!-- /#page-wrapper -->
@endsection
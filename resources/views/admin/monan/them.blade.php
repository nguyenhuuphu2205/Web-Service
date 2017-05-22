@extends('admin.layout.index')
@section('content')
<!-- Page Content -->
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Món Ăn
                <small>Thêm</small>
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

                <form action="admin/monan/them" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{csrf_token()}}" />
                    <div class="form-group">
                        <label>Thể Loại</label>
                        <select class="form-control" name="sltTheLoai" id="theloai">
                           @foreach ($theloai as $tl)
                               <option value="{{$tl->id}}">{{$tl->ten}}</option>
                           @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Loại Món</label>
                        <select class="form-control" name="sltLoaiMon" id="loaimon">
                           @foreach ($loaimon as $lm)
                               <option value="{{$lm->id}}">{{$lm->ten}}</option>
                           @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Vùng Miền</label>
                        <select class="form-control" name="sltVungMien">
                           @foreach ($vungmien as $vm)
                               <option value="{{$vm->id}}">{{$vm->ten}}</option>
                           @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tiêu Đề</label>
                        <input class="form-control" id="tieude" name="TieuDe" placeholder="Vui Lòng Nhập Tiêu Đề.." />
                    </div>
                    <div class="form-group">
                        <label>Tên Món</label>
                        <input class="form-control" id="tenmon" name="TenMon" placeholder="Vui Lòng Nhập Tên Món.." />
                    </div>
                    <div class="form-group">
                        <label>Tóm Tắt</label>
                        <textarea id="demo" class="form-control ckeditor" rows="3" name="TomTat"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Nội Dung</label>
                        <textarea id="demo" class="form-control ckeditor" rows="3" name="NoiDung"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Hình Ảnh</label>
                        <input type="file" id="hinh" name="Hinh" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label>Nhúng Video Hướng Dẫn</label>
                        <input class="form-control"  name="video" placeholder="Vui Lòng Nhập Link Video Dạy Nấu Ăn.." />
                    </div>
                    <div class="form-group">
                        <label>Link Video Hướng Dẫn</label>
                        <input class="form-control"  name="link" placeholder="Vui Lòng Nhập Link Video Dạy Nấu Ăn.." />
                    </div>
                    <div class="form-group">
                        <label>Chú Ý Về Món Ăn </label>
                        <textarea class="form-control" id="chu_y" rows="3" name="Chu_Y"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Nổi Bật</label>
                        <label class="radio-inline">
                            <input name="NoiBat" value="1" checked="" type="radio">Có
                        </label>
                        <label class="radio-inline">
                            <input name="NoiBat" value="0" type="radio">Không
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Thêm Món Ăn</button>
                    <button type="reset" class="btn btn-default">Đặt Lại Mặc Định</button>
                    <form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
            <script type="text/javascript">
                var tieude = document.getElementById("tieude");
                var tenmon = document.getElementById("tenmon");
                var hinh   = document.getElementById("hinh");
                var chu_y  = document.getElementById("chu_y");

                if(tieude == null || tenmon == null || hinh == null || chu_y == null){
                    alert("Chý Ý Bạn Cần Nhập Đày Đủ Các Trường Để Thêm Món Ăn.....");
                }
            </script>
</div>
        <!-- /#page-wrapper -->
@endsection

<!--sử dụng công nghệ Ajax-->
@section('script')
    <script>
        $(document).ready(function(){
            $("#theloai").change(function(){
                var idTheLoai = $(this).val();
                $.get("admin/ajax/loaimon/"+idTheLoai,function(data){
                    $("#loaimon").html(data);
                });
            });
        });
    </script>
@endsection
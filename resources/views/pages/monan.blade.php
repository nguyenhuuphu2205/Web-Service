<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="logo_user/favicon.ico" type="image/x-icon">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>BK Foods-Cooking</title>
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">
   
    <script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8" async defer></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body onload="startTime()">

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=239916629746119";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

    @include('layout.header')

    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <!-- Blog Post Content Column -->
            <div class="col-lg-9">
            <!-- Blog Post -->
                <!-- Title -->
                <div class="media-heading list-group-item-info">
                    <h1 style="color: #0000EE;text-align: center;">{!!$monan->TieuDe!!}</h1>
                    <!-- Author -->
                    <p class="lead" style="font-size: 25px;">
                     Tên Món:<b style="font-size: 30px;color:black;">{{ $monan->TenMon }}</b>
                    </p>
                </div>
                <!-- Preview Image -->
                <div class="form-group" style="border-top-left-radius: 5px;color: green;">
                     <img style="width: 850px;height: 400px;" class="img-responsive" src="upload/monan/{{$monan->Hinh}}" alt="">
                </div>  
                <br>
                <div class="fb-like" data-href="http://localhost/Web-Service/public/trangchu" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

       <!-- Date/Time -->
                <p><span class="glyphicon glyphicon-time"></span>Ngày Đăng: {{$monan->created_at}}</p>

                
                <!-- Post Content -->
                <p class="lead"><b>{!!$monan->TomTat!!}</b></p>
                <p>{!!$monan->NoiDung!!}</p>
                @if($monan->Chu_Y !=null)
                <p><b>Chú Ý:{{$monan->Chu_Y}}</b></p>
                @endif
                <hr>
                <!-- Blog Comments -->
                <!-- Comments Form -->
                <div class="well" >
                <p><b>Video Hướng dẫn:</b></p>
                 {!!$monan->video!!}
                    @if(count($errors)>0)
                        @foreach($errors as $err)
                        <div class="alert alert-danger">
                            {{$err}}<br>
                        </div>
                        @endforeach
                    @endif
                    @if(session('thongbao'))
                        <div class="alert alert-success">
                            {{session('thongbao')}}
                        </div>
                    @endif
                    <p>Chia sẻ</p>
                    <?php
                        $link_share_fb=urlencode($monan->link); 
                      ?>
                    <div style="text-align: center;">
                            <a href="http://www.facebook.com/sharer.php?u={!!$link_share_fb!!}" target="_blank">
                                 <img src="https://simplesharebuttons.com/images/somacro/facebook.png" alt="Facebook" />
                            </a>
                                 <!-- Google+ -->
                             <a href="https://plus.google.com/share?url={{$link_share_fb}}" target="_blank">
                                <img src="https://simplesharebuttons.com/images/somacro/google.png" alt="Google" />
                             </a>
                                <!-- LinkedIn -->
                            <a href="https://www.linkedin.com/shareArticle?mini=true&url={{$link_share_fb}}&title=&summary=&source=" target="_blank">
                             <img src="https://simplesharebuttons.com/images/somacro/linkedin.png" alt="LinkedIn" />
                            </a>
                    </div>
                    <!-- Cần sử lý Ajax cho phần comment-->
                    <!-- Viết Bình Luận  cho món ăn-->
                    <h4>Viết bình luận ...<span class="glyphicon glyphicon-pencil"></span></h4>
                    <h5><b style="color: green;">(Bạn Cần Đăng Nhập Để Có Thể Bình Luận..)</b></h5>
                    <form action="binhluan/{{$monan->id}}" method="post" role="form">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        <div class="form-group">
                            <textarea class="form-control" rows="3" name="NoiDung" id="noidung"></textarea>
                        </div>
                        @if(Auth::check())
                        <button id="submit" class="btn btn-primary">Gửi</button>
                        @else
                        <button id="submit" class="btn btn-primary" disabled="">Gửi</button>
                        @endif
                        {{--
                            @if(Auth::check())
                            <button type="submit" class="btn btn-primary" >Gửi</button>
                            @else
                            <button type="submit" class="btn btn-primary" disabled="">Gửi</button>
                            @endif
                         --}}
                    </form>
                    <script language="javascript">
                        $(document.ready(function(){
                            $('#submit').click(function(e) {
                                  e.preventDefault();
                                  var info = $('#noidung').val();
                                    $.ajax({
                                        type: "POST",
                                        url:  "binhluan/{{ $monan->id }}",
                                        data: {noidung: info}
                                    });
                            });
                        }));
                    </script>
                </div>
<!-- -->
                <hr>
                <!-- Posted Comments -->
                @if(count($comment)>0)
                @foreach($comment as $cm)
                <!-- Comment -->
                <div class="media" >
                    <a class="pull-left" href="#">
                        <img class="media-object" src="{{$cm->user->avatar}}" alt="" style="height: 50px;width: 50px;">
                    </a>
                    <div class="media-body" id="comment" >
                        <h4 class="media-heading media-heading list-group-item-info">
                        {{$cm->user->username}}
                        @if($cm->user->level == 0)
                           <p style="color:red;">{{ "(Super-admin)" }}</p>
                        @elseif($cm->user->level == 1)
                           <p style="color:blue;">{{ "(Admin)" }}</p>
                        @elseif($cm->user->level == 3)
                           <p style="color:green;">{{ "(Customer)" }}</p>
                        @endif
                            <small>{{ $cm->created_at }}</small>
                        </h4>
                        {{$cm->NoiDung}}
                    </div>
                </div>
                @endforeach
                @endif  
            </div>
            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-3">
                <div class="panel panel-default">
                    <div class="panel-heading"><marquee bgcolor="#00ff00" behavior="alternate"><b style="font-size: 20px;">Món Liên Quan</b></marquee></div>
                    <div class="panel-body">
                        @foreach($monlienquan as $mlq)
                        <!-- item -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-5">
                                <a href="monan/{{$mlq->id}}/{{ $mlq->TieuDeKhongDau }}.html">
                                    <img class="img-responsive" src="upload/monan/{{$mlq->Hinh}}" alt="">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <a href="monan/{{$mlq->id}}/{{ $mlq->TieuDeKhongDau }}.html">
                                <b style="font-size: 20px;color: red;">{!!$mlq->TenMon!!}</b>
                                </a>
                            </div>
                            <p style="padding-left: 5px;">{!!$mlq->TomTat!!}</p>
                            <div class="break"></div>
                        </div>
                         @endforeach
                        <!-- end item -->
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                    <marquee bgcolor="#00ff00" behavior="alternate"><b style="font-size: 20px;"><b>Món Nổi Bật</b></marquee>
                    </div>
                    <div class="panel-body">
                        @foreach($monnoibat as $tnb)
                        <!-- item -->
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-5">
                                <a href="monan/{{$tnb->id}}/{{ $tnb->TieuDeKhongDau }}.html">
                                    <img class="img-responsive" src="upload/monan/{{$tnb->Hinh}}" alt="">
                                </a>
                            </div>
                            <div class="col-md-7">
                                <a href="monan/{{$tnb->id}}/{{ $tnb->TieuDeKhongDau }}.html">
                                <b style="font-size: 20px;color:green;">{{$tnb->TenMon}}</b>
                                </a>
                            </div>
                            <p style="padding-left:5px;">{!!$tnb->TomTat!!}</p>
                            <div class="break"></div>
                        </div>
                        <!-- end item -->
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- end Page Content -->
    <!-- Footer -->
    <hr>
     <div align="center">
         <div class="fb-comments " data-href="http://localhost/Web-Service/public/trangchu" data-numposts="5"></div>
     </div>
     @include('layout.footer')
    <!-- end Footer -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/my.js"></script>

</body>
</html>
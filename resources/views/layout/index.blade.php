<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="shortcut icon" href="logo_user/favicon.ico" type="image/x-icon">
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>BK Foods-Cooking</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <base href="{{asset('')}}">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8" async defer>
        function showKey(str){
          if( str.length == 0){
                document.getElementById("txtKey").innerHTML =" ";
                return ;
          }
          else{
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function(){
              if(this.readyState == 4 $$ this.status == 200){
                 document.getElementById("txtKey").innerHTML = this.responseText;
              }
            };
            xmlhttp.open("GET", "PageController.php?q=" + str, true);
            xmlhttp.send();
          }
        }
    </script>
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9&appId=239916629746119";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
</head>
<body onload="startTime()">
    <!--Binh luan facbook-->
   

    @include('layout.header')
   	@yield('content')

  <div class="fb-comments" align="center" style="margin-left: 380px"></div>
     
 	@include('layout.footer')
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/my.js"></script>
    @yield('script')
    </div>
</body>
</html>

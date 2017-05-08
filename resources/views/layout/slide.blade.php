    <!-- slider -->
        <div class="row carousel-holder">
            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <?php  $i=0  ?>
                    @foreach($slide as $sl)
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="{{$i}}" 

                        @if($i==0)
                        class="active"
                        @endif
                        ></li>
                      <?php $i++ ?>  
                    </ol>
                    @endforeach
                    <div class="carousel-inner">
                        <?php $i=0 ?>
                        @foreach($slide as $sl)
                        <div 

                        @if($i==0)
                        class="item active"
                        <?php $i++ ?>
                        @else
                        class="item"
                        @endif
                        >
                            <img  class="slide-image" style="width: 1110px; height: 400px;" src="upload/slide/{{$sl->Hinh}}"  alt="{{$sl->NoiDung}}">
                        </div>
                        @endforeach
                        
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
        <!-- end slide -->

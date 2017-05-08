  <div class="col-md-3 ">
                <ul class="list-group" id="menu">
                    <li href="#" class="list-group-item menu1 active">
                        Menu
                    </li>
                    @foreach($theloai as $tl)
                    @if(count($tl->loaimon)>0)
                    <li href="#" class="list-group-item menu1">
                        {{$tl->ten}}
                    </li>
                    <ul>
                        @foreach($tl->loaimon as $lm)
                        <li class="list-group-item">
                            <a href="loaimon/{{$lm->id}}">{{$lm->ten}}</a>
                        </li>
                        @endforeach
                    </ul>
                    @endif
                   
                    @endforeach
                     <li href="#" class="list-group-item menu1 active">
                        Vùng Miền
                    </li>
                    @foreach($vungmien as $vm)
                    @if(count($vm->monan)>0)
                    <li href="#" class="list-group-item menu1">
                      <a href="vungmien/{{$vm->id}}"> {{$vm->ten}}</a>  
                    </li>
                    @endif
                    @endforeach
                    <li href="#" class="list-group-item menu1 active">
                        Thành Viên Ưu Tú
                    </li>
                    @foreach($thanhvienuutu as $tv)
                    
                    <li href="#" class="list-group-item menu1">
                       <p style="color: red;"> <a > {!!"$tv->username&nbsp"!!}</a> {{"Vote:$tv->master"}}</p>
                    </li>
                   
                    @endforeach
                </ul>
            </div>

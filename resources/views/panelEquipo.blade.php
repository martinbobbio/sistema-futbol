@extends("home");

@section('title','Panel');
@section('panel','active');

@section('content')

    <div class="row" style="margin-top: 20px">
        <div class="col-lg-3">
            <div class="panel panel-info">
                <div class="panel-heading">Cliente</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verCliente') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newCliente') }}>Insertar</a></div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">Torneo</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verTorneo') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newTorneo') }}>Insertar</a></div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">Equipo</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verEquipo') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newEquipo') }}>Insertar</a></div>
            </div>
            <div class="panel panel-info">
                <div class="panel-heading">Sede</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verSede') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newSede') }}>Insertar</a></div>
            </div>
        </div>
        <div class="col-lg-9">
            
            @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif



                @if(!isset($equipo))
                <table class="table" style="text-align: center">
                    <thead style="color:black">
                    <tr>

                        <td><b>id</b></td>
                        <td><b>Nombre</b></td>
                        <td><b>Barrio</b></td>
                        <td><b>Id Sede</b></td>
                        <td><b>ACTUALIZAR</b></td>
                        <td><b>BORRAR</b></td>

                    </tr>
                    </thead>

                    @forelse($equipos as $equipo)

                        <tbody style="color:white">

                        <tr>
                            <td>{{$equipo->id}}</td>
                            <td>{{$equipo->nombre}}</td>
                            <td>{{$equipo->barrio}}</td>
                            <td>{{$equipo->id_Sede}}</td>
                            <td><a href={{ URL::to('panel/'.$equipo->id.'/editEquipo') }}><img src="../public/imagenes/icons/update.png" width="15" height="15"></a></td>
                            <td><a href={{ URL::to('panel/'.$equipo->id.'/destroyEquipo') }}><img src="../public/imagenes/icons/delete.png" width="15" height="15"></a></td>
                        </tr>

                        </tbody>



                    @empty
                        <tr class="text-center" id="celdas">
                            <td colspan="7">NO HAY DATOS CARGADOS</td>
                        </tr>
                    @endforelse

                </table>
                    @endif

                @if(isset($equipo))

                <form action="{!! route("panel.updateEquipo",$equipo->id) !!}" method="post" class="form-horizontal">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">

                    <h3 class="text-danger text-center" style="font-size: 40px">Id:{{ $equipo->id }}</h3><br>

                    <div class="form-group">
                        <label class="control-label col-lg-2">Nombre: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $equipo->nombre !!}" name="nombre" placeholder="Nombre">
                        </div>

                        <label class="control-label col-lg-2">Barrio: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $equipo->barrio !!}" name="barrio" placeholder="Barrio">
                        </div>

                        <label class="control-label col-lg-2">Id Sede: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $equipo->id_sede !!}" name="id_sede" placeholder="Id Sede">
                        </div>

                        <button type="submit" class="btn btn-primary btn-block" style="margin-top:100px;">Actualizar</button>
                    </div>

                </form>

                @endif

        </div>





    </div>

@endsection






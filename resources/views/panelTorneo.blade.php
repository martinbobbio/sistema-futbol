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



                @if(!isset($torneo))
                <table class="table" style="text-align: center">
                    <thead style="color:black">
                    <tr>

                        <td><b>id</b></td>
                        <td><b>Nombre</b></td>
                        <td><b>Formato</b></td>
                        <td><b>Inicia</b></td>
                        <td><b>Termina</b></td>
                        <td><b>ACTUALIZAR</b></td>
                        <td><b>BORRAR</b></td>

                    </tr>
                    </thead>

                    @forelse($torneos as $torneo)

                        <tbody style="color:white">

                        <tr>
                            <td>{{$torneo->id}}</td>
                            <td>{{$torneo->nombre}}</td>
                            <td>{{$torneo->formato}}</td>
                            <td>{{$torneo->inicia}}</td>
                            <td>{{$torneo->termina}}</td>
                            <td><a href={{ URL::to('panel/'.$torneo->id.'/editTorneo') }}><img src="../public/imagenes/icons/update.png" width="15" height="15"></a></td>
                            <td><a href={{ URL::to('panel/'.$torneo->id.'/destroyTorneo') }}><img src="../public/imagenes/icons/delete.png" width="15" height="15"></a></td>
                        </tr>

                        </tbody>



                    @empty
                        <tr class="text-center" id="celdas">
                            <td colspan="7">NO HAY DATOS CARGADOS</td>
                        </tr>
                    @endforelse

                </table>
                    @endif

                @if(isset($torneo))

                <form action="{!! route("panel.updateTorneo",$torneo->id) !!}" method="post" class="form-horizontal">
                    <input type="hidden" name="_token" value="{!! csrf_token() !!}">

                    <h3 class="text-danger text-center" style="font-size: 40px">Id:{{ $torneo->id }}</h3><br>

                    <div class="form-group">
                        <label class="control-label col-lg-2">Nombre: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $torneo->nombre !!}" name="nombre" placeholder="Nombre">
                        </div>

                        <label class="control-label col-lg-2">Formato: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $torneo->formato !!}" name="formato" placeholder="Formato">
                        </div>

                        <label class="control-label col-lg-2">Inicia: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $torneo->inicia !!}" name="inicia" placeholder="Inicia">
                        </div>

                        <label class="control-label col-lg-2">Termina: </label>
                        <div class="col-lg-2">
                            <input type="text" class="form-control" value="{!! $torneo->termina !!}" name="termina" placeholder="Termina">
                        </div>

                        <button type="submit" class="btn btn-primary btn-block" style="margin-top:100px;">Actualizar</button>
                    </div>

                </form>

                @endif

        </div>





    </div>

@endsection






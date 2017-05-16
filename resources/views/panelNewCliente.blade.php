@extends("home");

@section('title','Panel');
@section('panel','active');

@section('content')

    <div class="row">
        <div class="col-lg-12">
            <h1 style="color: white;text-align: center">Bienvenido al panel de control: @if(isset(Auth::user()->name)) {{Auth::user()->name}}@endif</h1>
        </div>
    </div>

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

                    <form action="{!! route("panel.newCliente") !!}" method="post">


                        <input type="hidden" name="_token" value="{!! csrf_token() !!}">

                        <input type="text" class="form-control" placeholder="Nombre" name="nombre">
                        <input type="text" class="form-control" placeholder="Apellido" name="apellido">
                        <input type="number" class="form-control" placeholder="Edad" name="edad" min="15" max="45">
                        <input type="number" class="form-control" placeholder="Id Usuario" name="id_users" min="0">
                        <div class="checkbox"><label><input type="checkbox" class="checkbox" name="permiso" value="1">Permiso: </label></div>
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Insertar</button>

                    </form>

        </div>

    </div>

@endsection






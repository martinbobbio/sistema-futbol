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
        </div>
        <div class="col-lg-3">
            <div class="panel panel-info">
                <div class="panel-heading">Torneo</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verTorneo') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newTorneo') }}>Insertar</a></div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="panel panel-info">
                <div class="panel-heading">Equipo</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verEquipo') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newEquipo') }}>Insertar</a></div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="panel panel-info">
                <div class="panel-heading">Sede</div>
                <div class="panel-body"><a href={{ URL::to('/panel/verSede') }}>Ver</a></div>
                <div class="panel-body"><a href={{ URL::to('/panel/newSede') }}>Insertar</a></div>
            </div>
        </div>

    </div>

@endsection






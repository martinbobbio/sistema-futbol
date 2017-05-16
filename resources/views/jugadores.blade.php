@extends("home");

@section('title','Jugadores');
@section('jugadores','active');

@section("content")

    <h2 class="text-danger text-center" style="font-size: 40px;font-weight: bold">Jugadores</h2>

    @forelse($jugadores as $jugador)

    <div class="col-xs-6 col-md-3">
        <div class="thumbnail">
            <img src={{"../public/imagenes/jugadores/".$jugador->avatar.".jpg"}} alt="" height="300" width="300">
            <div class="caption visible-lg visible-sm">
                <h4 class="text-primary" style="display:inline"></h4>
                <span class="badge list-group-item-danger"></span>
                <br><br><p><b>Estadisticas:</b></p>
                <ul>
                    <li style="font-size: xx-small">Equipo:<b style="color:blue">{{ $jugador->equipo->nombre }}</b></li>
                    <li>Alias: <b style="color:blue">{{ $jugador->alias }}</b></li>
                    <li>Nombre: <b style="color:red">{{ $jugador->cliente->nombre }}</b></li>
                    <li>Apellido: <b style="color:red">{{ $jugador->cliente->apellido }}</b></li>
                    <li>Edad: <b style="color:red">{{ $jugador->cliente->edad }}</b></li>
                    <li>Goles: <b style="color:green">{{ $jugador->goles }}</b></li>
                    <li>Asistencias: <b style="color:green">{{ $jugador->asistencias }}</b></li>
                    <li>Posicion: <b style="color:orange">{{ $jugador->posicion }}</b></li>
                </ul>
            </div>
        </div>
    </div>
    @empty
        <h2 class="text-danger text-center" id="subtitulo">NO HAY JUGADORES CARGADOS</h2>
    @endforelse

@endsection







@extends("home");

@section('title','Jugadores');
@section('sedes','active')

@section("content")

    <h2 class="text-danger text-center" style="font-size: 40px;font-weight: bold">Sedes</h2>

    <?php $a = 1 ?>

    @forelse($sedes as $sede)
        @if($a == 6)
            <?php $a=1 ?>
        @endif
    <div class="col-lg-3 col-sm-4 col-xs-6" style="border: solid 2px black;color: white;">
        <p style="text-decoration: underline;font-size: 18px;"><b>Informacion: </b></p>
        <p>Sede: {{$sede->sede}}</p>
        <p>Direccion: {{$sede->direccion}}</p>
        <p>Foto: <img src="../public/imagenes/sedes/{{$a}}.jpg" class="img-responsive"></p>
        <?php $a++ ?>
    </div>

    @empty
        <h3>No hay Sedes cargadas</h3>
    @endforelse

@endsection







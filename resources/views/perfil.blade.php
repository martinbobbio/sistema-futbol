@extends("home");

@section('title','Perfil');
@section('perfil','active')

@section("content")

    <h2 class="text-danger text-center" style="font-size: 40px;font-weight: bold">Perfil</h2>

    <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4 text-info" style="font-size: 20px; border: solid 5px black;background: white">
        <p>Usuario: {{Auth::user()->name}}</p>
        <p>Email: {{Auth::user()->email}}</p>
        <p>Nombre: {{$clientes[Auth::user()->id]->nombre}}</p>
        <p>Apellido: {{$clientes[Auth::user()->id]->apellido}}</p>
        <p>Edad: {{$clientes[Auth::user()->id]->edad}}</p>
    </div>

@endsection







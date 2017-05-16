@extends("home");

@section('title','Equipos');
@section('estadisticas','active');

@section("content")

    <h2 class="text-danger text-left" style="font-size: 40px;font-weight: bold">Contacto  </h2>


    <div class="panel panel-info filterable">
        <div class="panel-heading">
            <h3 class="panel-title">Equipos y Estadisticas</h3>
        </div>
        <table class="table">
            <thead>
            <tr class="filters">

                <th><input type="text" class="form-control" placeholder="Equipo" ></th>
                <th><input type="text" class="form-control" placeholder="Barrio" ></th>
                <th><input type="text" class="form-control" placeholder="Sede" ></th>
                <th><input type="text" class="form-control" placeholder="Direccion" ></th>
            </tr>
            </thead>

            @forelse($equipos as $equipo)

                <tbody>

                <tr>
                    <td>{{$equipo->nombre}}</td>
                    <td>{{$equipo->barrio}}</td>
                    <td>{{$equipo->sede->sede}}</td>
                    <td>{{$equipo->sede->direccion}}</td>
                </tr>

                </tbody>



            @empty
                <tr class="text-center" id="celdas">
                    <td colspan="7">NO HAY EQUIPOS CARGADOS</td>
                </tr>
            @endforelse

        </table>
    </div>

@endsection







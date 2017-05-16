<header>
		<nav class="navbar navbar-default navbar-fixed-top navbar-inverse barra">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#barra">
						<span class="sr-only">Menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="{{ URL::to('/inicio') }}" class="navbar-brand active" id="principal">Futbol-Tour <span class="glyphicon glyphicon-home"></span></a>
				</div>

				<div class="collapse navbar-collapse" id="barra">
					<ul class="nav navbar-nav">
						<li class="@yield('jugadores')"><a href="{{ URL::to('/jugadores') }}" id="ranking">Jugadores <span class="glyphicon glyphicon-star-empty"></span></a></li>
						<li class="@yield('estadisticas')"><a href="{{ URL::to('/estadisticas') }}" id="jugadores">Equipos <span class="glyphicon glyphicon-eye-open"></span></a></li>
						<li class="@yield('sedes')"><a href={{ URL::to('/sedes') }}>Sedes <span class="glyphicon glyphicon-tree-conifer"></span></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Torneos <span class="glyphicon glyphicon-globe"></span><span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#1" data-toggle="modal">Sistema de juego</a></li>
								<li class="divider"></li>
								<li><a href="#2" data-toggle="modal">Valores del torneo</a></li>
								<li class="divider"></li>
								<li><a href="#3" data-toggle="modal">Reglamento disciplinario</a></li>
							</ul>
						</li>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						@if (isset(Auth::user()->name))
							<li class="@yield('perfil')"><a href="{{ URL::to('/perfil') }}" id="panel">{{Auth::user()->name}} <span class="glyphicon glyphicon-user"></span></a></li>
						@endif
						@if (isset(Auth::user()->name))
							@if (Auth::user()->permiso === 1)
								<li class="@yield('panel')"><a href="{{ URL::to('/panelInicio') }}" id="panel">Panel <span class="glyphicon glyphicon-list-alt"></span></a></li>
							@endif
						@endif
						@if (isset(Auth::user()->name))
							<a href="{{ URL::to('auth/logout') }}" class="navbar-brand" id="principal">Salir <span class="glyphicon glyphicon-off"></span></a>
						@else
								<a href="{{ URL::to('auth/logout') }}" class="navbar-brand" id="principal">Logueate <span class="glyphicon glyphicon-user"></span></a>
						@endif
					</ul>
				</div>
			</div>

			@include("templates.modal")



		</nav>
	</header>

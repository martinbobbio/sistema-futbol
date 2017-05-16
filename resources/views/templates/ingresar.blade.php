<div class="container">

	<div class="row">
		<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">

			<h2 class="text-center" style="text-shadow: 3px 3px 2px midnightblue;
   color: #666;color:grey;font-weight: bold;font-size: 40px">Logueate</h2>

			<ul class="nav navbar-nav navbar-right">
					<form action="{{ URL::to('auth/login') }}" method="post" class="form-inline">
						<input type="hidden" value="{{csrf_token()}}" name="_token">
						<input type="email" class="form-control" placeholder="Email" name="email">
						<input type="password" class="form-control" placeholder="Contraseña" name="password">
						<br><br>
						<input type="submit" class="btn btn-primary" value="Ingresar">

						<div class="checkbox">
							<label style="color:white"><input type="checkbox" name="remember">Recuerdame</label>
						</div>
					</form>
			</ul>

			<a href={{ URL::to('auth/register') }} style="color:black">Registrate aqui</a>
			<span> / </span>
			<a href={{ URL::to('inicio') }} style="color:black">Anonimo</a>

		</div>

	</div>
</div>


<div class="container">
	<div class="row centered-form">
		<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">

			<h2 class="text-center" style="text-shadow: 3px 3px 2px midnightblue;
   color: #666;color:grey;font-weight: bold;font-size: 40px">Registrate</h2>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Eres nuevo? <small>registrate y compite</small></h3>
				</div>
				<div class="panel-body">

					<form role="form" action="{{ URL::to('auth/register') }}" method="post">

						<div class="form-group">
							<input type="text" name="name" id="name" class="form-control input-sm" placeholder="Usuario">
						</div>
						<div class="form-group">
							<input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email">
						</div>
						<div class="form-group">
							<input type="password" name="password" id="password" class="form-control input-sm" placeholder="Contraseña">
						</div>

						<input type="hidden" name="_token" value="{!! csrf_token() !!}">

						<input type="submit" value="Registrate" class="btn btn-info btn-block">

					</form>
				</div>
			</div>
		</div>
	</div>

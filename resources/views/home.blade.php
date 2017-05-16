<html>
    <head>
        <title>Futbol-Tour | @yield('title')</title>
        <base href="{{asset('')}}">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <style>

            body{

    background: -webkit-radial-gradient(circle, #1a82f7, #2F2727);
}
        </style>

    </head>
    <body>

	<div class="container">

		@include("templates.header");
		@yield("content")

	</div>

	@include("templates.footer");


	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="javascript/tabla.js"></script>


    </body>
</html>

<?php

Route::get('/', 'LoginController@index');

Route::get('/registro', 'RegisterController@index');



Route::get('/jugadores', 'JugadorController@index');

Route::get('/estadisticas', 'EquipoController@index');

Route::get('/sedes', 'SedeController@index');

Route::get('/inicio', 'PosteoController@index');

Route::get('/perfil', 'ClienteController@index');


Route::get('/panelInicio', 'PanelController@index');


Route::get('/panel/verCliente', 'PanelClienteController@index');

Route::get('/panel/newCliente', 'PanelClienteController@index2');

Route::post('newCliente', ['as' => 'panel.newCliente', 'uses' => 'PanelClienteController@newCliente']);

Route::get('/panel/{id}/editCliente',['as' => 'panel.editCliente' , 'uses' => 'PanelClienteController@editCliente']);

Route::post('/panel/{id}/updateCliente',['as' => 'panel.updateCliente' , 'uses' => 'PanelClienteController@updateCliente']);

Route::get('/panel/{id}/destroyCliente', ['as' => 'panel.destroyCliente', 'uses' => 'PanelClienteController@destroyCliente']);


Route::get('/panel/verSede', 'PanelSedeController@index');

Route::get('/panel/newSede', 'PanelSedeController@index2');

Route::post('newSede', ['as' => 'panel.newSede', 'uses' => 'PanelSedeController@newSede']);

Route::get('/panel/{id}/editSede',['as' => 'panel.editSede' , 'uses' => 'PanelSedeController@editSede']);

Route::post('/panel/{id}/updateSede',['as' => 'panel.updateSede' , 'uses' => 'PanelSedeController@updateSede']);

Route::get('/panel/{id}/destroySede', ['as' => 'panel.destroySede', 'uses' => 'PanelSedeController@destroySede']);


Route::get('/panel/verTorneo', 'PanelTorneoController@index');

Route::get('/panel/newTorneo', 'PanelTorneoController@index2');

Route::post('newTorneo', ['as' => 'panel.newTorneo', 'uses' => 'PanelTorneoController@newTorneo']);

Route::get('/panel/{id}/editTorneo',['as' => 'panel.editTorneo' , 'uses' => 'PanelTorneoController@editTorneo']);

Route::post('/panel/{id}/updateTorneo',['as' => 'panel.updateTorneo' , 'uses' => 'PanelTorneoController@updateTorneo']);

Route::get('/panel/{id}/destroyTorneo', ['as' => 'panel.destroyTorneo', 'uses' => 'PanelTorneoController@destroyTorneo']);


Route::get('/panel/verEquipo', 'PanelEquipoController@index');

Route::get('/panel/newEquipo', 'PanelEquipoController@index2');

Route::post('newEquipo', ['as' => 'panel.newEquipo', 'uses' => 'PanelEquipoController@newEquipo']);

Route::get('/panel/{id}/editEquipo',['as' => 'panel.editEquipo' , 'uses' => 'PanelEquipoController@editEquipo']);

Route::post('/panel/{id}/updateEquipo',['as' => 'panel.updateEquipo' , 'uses' => 'PanelEquipoController@updateEquipo']);

Route::get('/panel/{id}/destroyEquipo', ['as' => 'panel.destroyEquipo', 'uses' => 'PanelEquipoController@destroyEquipo']);



Route::get('auth/login', 'Auth\AuthController@getLogin');

Route::post('auth/login', 'Auth\AuthController@postLogin');

Route::get('auth/logout', 'Auth\AuthController@getLogout');

Route::get('auth/register', 'Auth\AuthController@getRegister');

Route::post('auth/register', 'Auth\AuthController@postRegister');

Route::controllers([
    'auth' => 'Auth\AuthController',
    'password' => 'Auth\PasswordController',
]);



Route::group(['prefix' => 'cpanel','middleware' => 'auth'],function(){
    require (__DIR__.'/Routes/PanelRoutes.php');
});







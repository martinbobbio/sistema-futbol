<?php

//-----------------------------Clientes--------------------------------------

Route::group(['prefix' => 'clientes'],function (){
    Route::get('index', [
        'as' => 'clientes.index',
        'uses' => 'Cliente@index'
    ]);
    Route::get('create', [
        'as' => 'clientes.create',
        'uses' => 'Cliente@create'
    ]);

    Route::get('{cliente}/edit', [
        'as' => 'clientes.edit',
        'uses' => 'Cliente@edit'
    ]);

    Route::post('create', [
        'as' => 'clientes.store',
        'uses' => 'Cliente@store'
    ]);

    Route::patch('update', [
        'as' => 'clientes.update',
        'uses' => 'Cliente@update'
    ]);

    Route::delete('destroy', [
        'as' => 'clientes.destroy',
        'uses' => 'Cliente@destroy'
    ]);


});

//-----------------------------Jugadores--------------------------------------

Route::group(['prefix' => 'jugadores'],function (){
    Route::get('index', [
        'as' => 'jugadores.index',
        'uses' => 'Jugador@index'
    ]);
    Route::get('create', [
        'as' => 'jugadores.create',
        'uses' => 'Jugador@create'
    ]);

    Route::get('{jugador}/edit', [
        'as' => 'jugadores.edit',
        'uses' => 'Jugador@edit'
    ]);

    Route::post('create', [
        'as' => 'jugadores.store',
        'uses' => 'Jugador@store'
    ]);

    Route::patch('update', [
        'as' => 'usuarios.update',
        'uses' => 'Jugador@update'
    ]);

    Route::delete('destroy', [
        'as' => 'jugadores.destroy',
        'uses' => 'Jugador@destroy'
    ]);


});

//-----------------------------Sedes--------------------------------------

Route::group(['prefix' => 'sedes'],function (){
    Route::get('index', [
        'as' => 'sedes.index',
        'uses' => 'Sede@index'
    ]);
    Route::get('create', [
        'as' => 'sedes.create',
        'uses' => 'Sede@create'
    ]);

    Route::get('{sede}/edit', [
        'as' => 'sedes.edit',
        'uses' => 'Sede@edit'
    ]);

    Route::post('create', [
        'as' => 'sedes.store',
        'uses' => 'Sede@store'
    ]);

    Route::patch('update', [
        'as' => 'sedes.update',
        'uses' => 'Sede@update'
    ]);

    Route::delete('destroy', [
        'as' => 'sedes.destroy',
        'uses' => 'Sede@destroy'
    ]);


});

//-----------------------------Equipos--------------------------------------

Route::group(['prefix' => 'equipos'],function (){
    Route::get('index', [
        'as' => 'equipos.index',
        'uses' => 'Equipo@index'
    ]);
    Route::get('create', [
        'as' => 'equipos.create',
        'uses' => 'Equipo@create'
    ]);

    Route::get('{equipo}/edit', [
        'as' => 'equipos.edit',
        'uses' => 'Equipo@edit'
    ]);

    Route::post('create', [
        'as' => 'equipos.store',
        'uses' => 'Equipo@store'
    ]);

    Route::patch('update', [
        'as' => 'equipos.update',
        'uses' => 'Equipo@update'
    ]);

    Route::delete('destroy', [
        'as' => 'equipos.destroy',
        'uses' => 'Equipo@destroy'
    ]);


});





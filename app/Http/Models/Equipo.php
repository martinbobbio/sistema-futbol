<?php
namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
class Equipo extends Model
{
    protected $table = 'equipos';
    protected $fillable = ['nombre','barrio','id_sede'];

    public function sede(){
        return $this->belongsTo(Sede::class,'id');
    }

    public function torneoEquipo(){
        return $this->hasMany(TorneosEquipos::class,'id_equipo');
    }

    public function jugador(){
        return $this->hasMany(Jugador::class,'id_equipo');
    }

}
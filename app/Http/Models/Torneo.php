<?php
namespace App\Http\Models;;
use Illuminate\Database\Eloquent\Model;
class Torneo extends Model
{
    protected $table = 'torneos';
    protected $fillable = ['nombre','formato','inicia','termina'];

    public function torneoEquipo(){
        return $this->hasMany(TorneosEquipos::class,'id_equipo');
    }


}
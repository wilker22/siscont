<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Municipio extends Model
{
    use HasFactory;

    protected $fillable = [
        'nome', 'descricao'
    ];

    public function instrumentos()
    {
        return $this->belongsToMany(Instrumento::class);
    }

    public function mesoregiaos()
    {
        return $this->belongsTo(Mesoregiao::class);
    }
}

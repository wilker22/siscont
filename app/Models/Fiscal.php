<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fiscal extends Model
{
    use HasFactory;

    protected $fillable = [
        'unidade_id',
        'nome',
        'email',
        'matricula'
    ];

    public function instrumentos()
    {
        return $this->hasMany(Instrumento::class);
    }

    public function unidades()
    {
        return $this->belongsTo(Unidade::class);
    }
}

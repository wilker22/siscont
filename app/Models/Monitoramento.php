<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Monitoramento extends Model
{
    use HasFactory;

    protected $fillable = [
        'instrumento_id',
        'andamento',
        'dificuldades',
        'atores',
        'providencias',
        'prazo',
        'anexo'

    ];


    public function instrumentos()
    {
        return $this->belongsTo(Instrumento::class);
    }
}

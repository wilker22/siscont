<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Municipio extends Model
{
    use HasFactory;

    protected $fillable = [
        
        'nome','mesorregiao_id', 'descricao'
    ];

    public function instrumentos()
    {
        return $this->belongsToMany(Instrumento::class);
    }

    public function mesorregiao()
    {
        return $this->belongsTo(Mesoregiao::class);
    }
}

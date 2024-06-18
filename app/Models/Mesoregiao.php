<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mesoregiao extends Model
{
    use HasFactory;

    protected $fillable = ['nome', 'descricao'];


    public function municipios()
    {
        return $this->hasMany(Municipio::class);
    }
}

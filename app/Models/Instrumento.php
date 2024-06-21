<?php

namespace App\Models;

use App\Enums\TipoInstrumentoEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Instrumento extends Model
{
    use HasFactory;
    protected   $fillable = [
        'tipo',
        'numero_sigec',
        'numero_transferegov',
        'objeto',
        'entidade',
        'beneficiarios',
        'status',
        'valor_global',
        'valor_empenhado',
        'valor_liquidado',
        'valor_pago',
        'status',
        'latitude',
        'longitude'
    ];

    protected $casts = [
        'tipo' => TipoInstrumentoEnum::class,
    ];

    public function municipios()
    {
        return $this->belongsToMany(Municipio::class);
    }

    public function fiscals()
    {
        return $this->belongsTo(Fiscal::class);
    }

    public function monitoramentos()
    {
        return $this->hasMany(Monitoramento::class);
    }
}

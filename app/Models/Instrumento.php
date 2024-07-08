<?php

namespace App\Models;

use App\Enums\TipoInstrumentoEnum;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Instrumento extends Model
{
    use HasFactory;
    protected   $fillable = [
        'fiscal_id',
        'tipo',
        'numero_sigec',
        'numero_transferegov',
        'celebracao',
        'vigencia',
        'objeto',
        'entidade',
        'beneficiarios',
        'foto',
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

    public function fiscal(): BelongsTo
    {
        return $this->belongsTo(Fiscal::class);
    }

    public function monitoramentos()
    {
        return $this->hasMany(Monitoramento::class);
    }
}

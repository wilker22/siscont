<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Monitoramento extends Model
{
    use HasFactory;

    protected $fillable = [
        'instrumento_id',
        'tipo',
        'fiscal_id',
        'numero_sigec',
        'objeto',
        'entidade',
        'valor_global',
        'valor_empenhado',
        'valor_pago',
        'andamento',
        'dificuldades',
        'atores',
        'providencias',
        'prazo',
        'anexo'

    ];


    public function instrumento(): BelongsTo
    {
        return $this->belongsTo(Instrumento::class);
    }

    public function fiscal(): BelongsTo
    {
        return $this->belongsTo(Fiscal::class);
    }
}

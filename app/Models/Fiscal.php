<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Fiscal extends Model
{
    use HasFactory;

    protected $fillable = [
        'unidade_id',
        'nome',
        'email',
        'matricula',
        'monitoramento_id'
    ];

    public function instrumentos(): HasMany
    {
        return $this->hasMany(Instrumento::class);
    }

    public function unidade(): BelongsTo
    {
        return $this->belongsTo(Unidade::class);
    }

    public function monitoramentos(): HasMany
    {
        return $this->hasMany(Monitoramento::class);
    }
}

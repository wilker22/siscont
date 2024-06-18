<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Unidade extends Model
{
    use HasFactory;

    protected $fillable = ['nome', 'sigla'];

    public function fiscals()
    {
        return $this->hasMany(Fiscal::class);
    }
}

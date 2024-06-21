<?php


declare(strict_types=1);

namespace App\Enums;

use Filament\Support\Contracts\HasColor;
use Filament\Support\Contracts\HasLabel;

enum StatusInstrumentoEnum: string implements HasLabel, HasColor
{

    case EXECUCAO = 'Em Execução';
    case PARALISADO = 'Paralisado';
    case CONCLUIDO = 'Concluído';

    public function getLabel(): ?string
    {

        return match ($this) {
            self::EXECUCAO => 'Em Execução',
            self::PARALISADO => 'Paralisado',
            self::CONCLUIDO => 'Concluído',
        };
    }

    public function getColor(): string|array|null
    {
        return null;
    }
}

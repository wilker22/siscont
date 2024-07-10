<?php


declare(strict_types=1);

namespace App\Enums;

use Filament\Support\Contracts\HasColor;
use Filament\Support\Contracts\HasLabel;

enum TipoInstrumentoEnum: string implements HasLabel, HasColor
{

    case CONTRATO = 'Contrato';
    case CONVENIO = 'Convênio';
    case Ordem_de_Fornecimento = 'Ordem de Fornecimento';
    case Ordem_de_Serviço = 'Ordem de Serviço';
    case ACORDO_COOPERACAO_TECNICA = 'Acordo de Cooperação Técnica';
    case CARTA_CONTRATO = 'Carta Contrato';
    case CONTRATO_CESSAO = 'Contrato de Cessão';
    case CONTRATO_CONCESSAO = 'Contrato de Concessao';
    case TERMO_COMPROMISSO = 'Termo de Tompromisso';
    case TERMO_PARCERIA = 'Termo de Parceria';
    case Termo_de_Entrega_Definitiva_de_Obra = 'Termo de Entrega Definitiva de Obra';


    public function getLabel(): ?string
    {

        return match ($this) {
            self::CONTRATO => 'Contrato',
            self::CONVENIO => 'Convênio',
            self::Ordem_de_Fornecimento => 'Ordem de Fornecimento',
            self::Ordem_de_Serviço => 'Ordem de Serviço',
            self::ACORDO_COOPERACAO_TECNICA => 'Acordo de Cooperação Técnica',
            self::CARTA_CONTRATO => 'Carta Contrato',
            self::CONTRATO_CESSAO => 'Contrato de Cessão',
            self::CONTRATO_CONCESSAO => 'Contrato de Concessao',
            self::TERMO_COMPROMISSO => 'Termo de Compromisso',
            self::TERMO_PARCERIA => 'Termo de Parceria',
            self::Termo_de_Entrega_Definitiva_de_Obra => 'Termo de Entrega Definitiva de Obra'
        };
    }

    public function getColor(): string|array|null
    {
        return null;
    }
}

<?php

namespace App\Filament\Resources\InstrumentoResource\Pages;

use App\Filament\Resources\InstrumentoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListInstrumentos extends ListRecords
{
    protected static string $resource = InstrumentoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

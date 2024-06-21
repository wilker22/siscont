<?php

namespace App\Filament\Resources\InstrumentoResource\Pages;

use App\Filament\Resources\InstrumentoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditInstrumento extends EditRecord
{
    protected static string $resource = InstrumentoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

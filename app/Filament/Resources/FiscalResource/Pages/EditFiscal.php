<?php

namespace App\Filament\Resources\FiscalResource\Pages;

use App\Filament\Resources\FiscalResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditFiscal extends EditRecord
{
    protected static string $resource = FiscalResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}

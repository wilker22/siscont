<?php

namespace App\Filament\Resources\FiscalResource\Pages;

use App\Filament\Resources\FiscalResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListFiscals extends ListRecords
{
    protected static string $resource = FiscalResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

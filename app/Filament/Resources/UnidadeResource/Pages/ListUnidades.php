<?php

namespace App\Filament\Resources\UnidadeResource\Pages;

use App\Filament\Resources\UnidadeResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListUnidades extends ListRecords
{
    protected static string $resource = UnidadeResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

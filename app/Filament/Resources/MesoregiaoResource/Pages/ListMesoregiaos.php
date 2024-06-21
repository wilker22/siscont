<?php

namespace App\Filament\Resources\MesoregiaoResource\Pages;

use App\Filament\Resources\MesoregiaoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListMesoregiaos extends ListRecords
{
    protected static string $resource = MesoregiaoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

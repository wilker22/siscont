<?php

namespace App\Filament\Resources\MesoregiaoResource\Pages;

use App\Filament\Resources\MesoregiaoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditMesoregiao extends EditRecord
{
    protected static string $resource = MesoregiaoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            //  Actions\DeleteAction::make(),
        ];
    }
}

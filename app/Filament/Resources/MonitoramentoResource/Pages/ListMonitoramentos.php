<?php

namespace App\Filament\Resources\MonitoramentoResource\Pages;

use App\Filament\Resources\MonitoramentoResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListMonitoramentos extends ListRecords
{
    protected static string $resource = MonitoramentoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}

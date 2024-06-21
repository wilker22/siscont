<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MonitoramentoResource\Pages;
use App\Filament\Resources\MonitoramentoResource\RelationManagers;
use App\Models\Monitoramento;
use Filament\Forms;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MonitoramentoResource extends Resource
{
    protected static ?string $model = Monitoramento::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form->columns(1)
            ->schema([
                Select::make('instrumento')->required(),
                RichEditor::make('andamento'),
                RichEditor::make('dificuldades'),
                RichEditor::make('atores'),
                RichEditor::make('providencias'),
                TextInput::make('objeto'),
                TextInput::make('latitude'),
                TextInput::make('longitude'),
                TextInput::make('entidade'),
                TextInput::make('beneficiarios'),
                TextInput::make('foto'),
                TextInput::make('status'),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('foto'),
                TextColumn::make('instrumento')->sortable()->searchable(),
                TextColumn::make('objeto'),
                TextColumn::make('entidade')->sortable()->searchable(),
                TextColumn::make('status')->sortable(),
                TextColumn::make('created_at')->date('d/m/Y H:i')->label('Data'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListMonitoramentos::route('/'),
            'create' => Pages\CreateMonitoramento::route('/create'),
            'edit' => Pages\EditMonitoramento::route('/{record}/edit'),
        ];
    }
}

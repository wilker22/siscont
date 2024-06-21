<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FiscalResource\Pages;
use App\Filament\Resources\FiscalResource\RelationManagers;
use App\Models\Fiscal;
use Filament\Forms;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class FiscalResource extends Resource
{
    protected static ?string $model = Fiscal::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';



    public static function form(Form $form): Form
    {
        return $form->columns()
            ->schema([
                Select::make('unidade_id')
                    ->relationship('unidade', 'sigla')
                    ->label('Gerência/Unidade')
                    ->required(),
                TextInput::make('nome')->required(),
                TextInput::make('email'),
                TextInput::make('matricula'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('unidade_id')->label('Gerência/Unidade'),
                TextColumn::make('name')->sortable()->searchable(),
                TextColumn::make('email'),
                TextColumn::make('matricula'),
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
            'index' => Pages\ListFiscals::route('/'),
            'create' => Pages\CreateFiscal::route('/create'),
            'edit' => Pages\EditFiscal::route('/{record}/edit'),
        ];
    }
}

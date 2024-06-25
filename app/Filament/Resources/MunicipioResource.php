<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MunicipioResource\Pages;
use App\Filament\Resources\MunicipioResource\RelationManagers;
use App\Models\Municipio;
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

class MunicipioResource extends Resource
{
    protected static ?string $model = Municipio::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?string $navigationGroup = 'Cadastros';

    protected static ?string $navigationLabel = 'Município';

    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('mesorregiao_id')
                        ->relationship('mesorregiao', 'nome')
                        ->label('Mesorregião')
                        ->required(),
                TextInput::make('nome')->required(),
                RichEditor::make('descricao'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                // TextColumn::make('mesorregiao_id')
                //         ->sortable()
                //         ->searchable()
                //         ->label('Mesorregião'),
                TextColumn::make('nome')->sortable()->searchable(),

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
            'index' => Pages\ListMunicipios::route('/'),
            'create' => Pages\CreateMunicipio::route('/create'),
            'edit' => Pages\EditMunicipio::route('/{record}/edit'),
        ];
    }
}

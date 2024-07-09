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

    protected static ?string $navigationIcon = 'heroicon-o-users';

    protected static ?string $recordTitleAttribute = 'name';

    protected static ?string $navigationGroup = 'Cadastros';

    protected static ?string $navigationLabel = 'Fiscal';

    protected static ?int $navigationSort = 1;



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
                TextColumn::make('nome')->sortable()->searchable(),
                TextColumn::make('email'),
                TextColumn::make('matricula'),
                TextColumn::make('unidade.sigla')->badge()->label('Gerência/Unidade')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make(),
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

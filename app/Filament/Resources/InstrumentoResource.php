<?php

namespace App\Filament\Resources;

use App\Enums\StatusInstrumentoEnum;
use App\Enums\TipoInstrumentoEnum;
use App\Filament\Resources\InstrumentoResource\Pages;
use App\Filament\Resources\InstrumentoResource\RelationManagers;
use App\Models\Instrumento;
use Filament\Forms;
use Filament\Forms\Components\FileUpload;
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

class InstrumentoResource extends Resource
{
    protected static ?string $model = Instrumento::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form->columns(1)
            ->schema([
                Select::make('fiscal_id')->label('Fiscal')->required(),
                Select::make('tipo')->options(TipoInstrumentoEnum::class)->searchable()->required(),
                Select::make('status')->options(StatusInstrumentoEnum::class)->searchable()->required(),
                TextInput::make('numero_sigec')->label('Nº SIGEC'),
                TextInput::make('numero_transferegov')->label('Nº TRANSFEREGOV'),
                TextInput::make('celebracao'),
                TextInput::make('vigencia'),
                RichEditor::make('objeto')->required(),
                TextInput::make('latitude'),
                TextInput::make('longitude'),
                TextInput::make('entidade')->required(),
                TextInput::make('beneficiarios'),
                FileUpload::make('foto')->directory('fotos_instrumentos')->disk('public')->image(),
                TextInput::make('valor_global'),
                TextInput::make('valor_empenhado'),
                TextInput::make('valor_liquidado'),
                TextInput::make('valor_pago'),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('fiscal_id')->sortable()->searchable()->label('Fiscal'),
                TextColumn::make('tipo')->sortable()->badge(),
                TextColumn::make('status')->sortable()->badge(),
                TextColumn::make('numero_sigec')->searchable(),
                TextColumn::make('numero_transferegov')->searchable(),
                TextColumn::make('celebracao'),
                TextColumn::make('vigencia'),
                TextColumn::make('entidade'),

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
            'index' => Pages\ListInstrumentos::route('/'),
            'create' => Pages\CreateInstrumento::route('/create'),
            'edit' => Pages\EditInstrumento::route('/{record}/edit'),
        ];
    }
}

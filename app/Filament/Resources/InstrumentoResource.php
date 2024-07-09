<?php

namespace App\Filament\Resources;

use App\Enums\StatusInstrumentoEnum;
use App\Enums\TipoInstrumentoEnum;
use App\Filament\Resources\InstrumentoResource\Pages;
use App\Filament\Resources\InstrumentoResource\RelationManagers;
use App\Models\Instrumento;
use DateTime;
use Filament\Forms;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Fieldset;
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
use Leandrocfe\FilamentPtbrFormFields\Money;

class InstrumentoResource extends Resource
{
    protected static ?string $model = Instrumento::class;

    protected static ?string $navigationIcon = 'heroicon-o-document';

    public static function form(Form $form): Form
    {
        return $form->columns(3)
            ->schema([
                Select::make('fiscal_id')
                    ->relationship('fiscal', 'nome')
                    ->label('Fiscal')
                    ->required(),
                Select::make('tipo')->options(TipoInstrumentoEnum::class)->searchable()->required(),
                Select::make('status')->options(StatusInstrumentoEnum::class)->searchable()->required(),
                TextInput::make('numero_sigec')->label('Nº SIGEC'),
                TextInput::make('numero_transferegov')->label('Nº TRANSFEREGOV'),
                TextInput::make('entidade')->required(),
                RichEditor::make('objeto')->required()->columnSpan(3),

                Fieldset::make('Dados Gerais')->schema([
                    DatePicker::make('celebracao')->date('d/m/Y'),
                    DatePicker::make('vigencia')->date('d/m/Y')->label('Vencimento'),

                    Select::make('municipio_id')->relationship('municipios', 'nome')
                        ->multiple()
                        ->relationship('municipios', 'nome')->columnSpan(2),
                    TextInput::make('latitude'),
                    TextInput::make('longitude'),

                    TextInput::make('beneficiarios'),
                    FileUpload::make('foto')->directory('fotos_instrumentos')->disk('public')->image(),
                ]),


                Fieldset::make('Valores')->schema([
                    Money::make('valor_global'),
                    Money::make('valor_empenhado'),
                    Money::make('valor_liquidado'),
                    Money::make('valor_pago'),
                ])


            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('fiscal.nome')->sortable()->searchable()->label('Fiscal'),
                TextColumn::make('tipo')->sortable()->badge(),
                TextColumn::make('status')->sortable()->badge(),
                TextColumn::make('numero_sigec')->searchable(),
                //TextColumn::make('numero_transferegov')->searchable(),
                //TextColumn::make('celebracao')->date('d/m/Y'),
                //TextColumn::make('vigencia')->date('d/m/Y'),
                TextColumn::make('entidade'),

            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
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
            //'view' => Pages\ViewInstrumento::route('/{record}'),
        ];
    }
}

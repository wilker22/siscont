<?php

namespace App\Filament\Resources;

use App\Filament\Resources\MonitoramentoResource\Pages;
use App\Filament\Resources\MonitoramentoResource\RelationManagers;
use App\Models\Fiscal;
use App\Models\Instrumento;
use App\Models\Monitoramento;
use Filament\Forms;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Section;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class MonitoramentoResource extends Resource
{
    protected static ?string $model = Monitoramento::class;

    protected static ?string $navigationIcon = 'heroicon-o-chart-bar';

    public static function form(Form $form): Form
    {
        return $form->columns(3)
            ->schema([
                Select::make('fiscal_id')
                    ->relationship('fiscal', 'nome')
                    ->label('Fiscal')
                    ->options(Fiscal::all()->pluck('nome', 'id')->toArray())
                    ->reactive()
                    ->afterStateUpdated(fn (callable $set) => $set('instrumento_id', null)),
                Select::make('instrumento_id')
                    ->relationship('instrumento', 'numero_sigec')
                    ->relationship('instrumento', 'objeto')
                    ->relationship('instrumento', 'entidade')
                    ->relationship('instrumento', 'valor_global')
                    ->relationship('instrumento', 'valor_empenhado')
                    ->relationship('instrumento', 'valor_pago')
                    ->relationship('instrumento', 'tipo')
                    ->label('Instrumento')
                    ->options(function (callable $get) {
                        $fiscal = Fiscal::find($get('fiscal_id'));
                        if (!$fiscal) {
                            return Fiscal::all()->pluck('nome', 'id');
                        }
                        return $fiscal->instrumentos->pluck('numero_sigec', 'id');
                    })
                    ->live()
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('objeto', Instrumento::find($get('instrumento_id'))->objeto);
                    })
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('entidade', Instrumento::find($get('instrumento_id'))->entidade);
                    })
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('valor_global', Instrumento::find($get('instrumento_id'))->valor_global);
                    })
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('valor_empenhado', Instrumento::find($get('instrumento_id'))->valor_empenhado);
                    })
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('valor_pago', Instrumento::find($get('instrumento_id'))->valor_pago);
                    })
                    ->afterStateUpdated(function (Get $get, Set $set) {
                        $set('tipo', Instrumento::find($get('instrumento_id'))->tipo);
                    }),

                Section::make('Dados do Instrumento')->schema([
                    TextInput::make('tipo')->disabled(),
                    TextInput::make('entidade')->disabled()->columnSpan(2),
                    Textarea::make('objeto')->disabled()->columnSpan(3),
                    TextInput::make('valor_global')->disabled()->prefix('R$'),
                    TextInput::make('valor_empenhado')->disabled()->prefix('R$'),
                    TextInput::make('valor_pago')->disabled()->prefix('R$'),
                ])->columns(3),

                Section::make('Plano de Ação')->schema([
                    RichEditor::make('andamento'),
                    RichEditor::make('dificuldades'),
                    RichEditor::make('atores'),
                    RichEditor::make('providencias'),
                ])->columns(2)

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //TextColumn::make('foto'),
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
            'index' => Pages\ListMonitoramentos::route('/'),
            'create' => Pages\CreateMonitoramento::route('/create'),
            'edit' => Pages\EditMonitoramento::route('/{record}/edit'),
        ];
    }
}

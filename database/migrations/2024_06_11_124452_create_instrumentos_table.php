<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('instrumentos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('fiscal_id')->constrained('fiscals');
            $table->enum('tipo', ['Contrato', 'Convênio', 'Carta Contrato', 'Ordem de Fornecimento', 'Ordem de Serviço', 'Termo de Parceria', 'Termo de Cooperação Técnica', 'Contrato de Cessão']);
            $table->string('numero_sigec')->nullable();
            $table->string('numero_transferegov')->nullable();
            $table->date('celebracao')->nullable();
            $table->date('vigencia')->nullable();
            $table->text('objeto');
            $table->string('latitude')->nullable();
            $table->string('longitude')->nullable();
            $table->string('entidade');
            $table->string('beneficiarios')->nullable();
            $table->string('foto')->nullable();
            $table->enum('status', ['Execução', 'Paralisado', 'Concluído']);
            $table->double('valor_global', 10, 2)->nullable();
            $table->double('valor_empenhado', 10, 2)->nullable();
            $table->double('valor_liquidado', 10, 2)->nullable();
            $table->double('valor_pago', 10, 2)->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {

        Schema::dropIfExists('instrumentos');
    }
};

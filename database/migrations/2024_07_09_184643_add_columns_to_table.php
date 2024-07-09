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
        Schema::table('monitoramentos', function (Blueprint $table) {
            $table->foreignId('fiscal_id')->constrained('fiscals');
            $table->string('tipo')->nullable();
            $table->string('numero_sigec')->nullable();
            $table->string('entidade')->nullable();
            $table->text('objeto')->nullable();
            $table->double('valor_global', 10, 2)->nullable();
            $table->double('valor_empenhado', 10, 2)->nullable();
            $table->double('valor_pago', 10, 2)->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('monitoramentos', function (Blueprint $table) {
            $table->dropColumn('fiscal_id');
            $table->dropColumn('tipo')->nullable();
            $table->dropColumn('numero_sigec')->nullable();
            $table->dropColumn('entidade')->nullable();
            $table->dropColumn('objeto')->nullable();
            $table->dropColumn('valor_global')->nullable();
            $table->dropColumn('valor_empenhado')->nullable();
            $table->dropColumn('valor_pago')->nullable();
        });
    }
};

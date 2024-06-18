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
        Schema::create('municipios', function (Blueprint $table) {
            $table->id();
            $table->foreignId('mesorregiao_id')->constrained('mesoregiaos');
            $table->string('nome')->unique();
            $table->text('descricao')->nullable();
            $table->timestamps();
        });

        Schema::create('instrumento_municipio', function (Blueprint $table) {
            $table->id();
            $table->foreignId('instrumento_id')->constrained('instrumentos');
            $table->foreignId('municipio_id')->constrained('municipios');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('instrumento_municipio');
        Schema::dropIfExists('municipios');
    }
};

<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * 
     * Run the migrations.
     * 
     */
    public function up(): void
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->mediumInteger('user_id')->nullable();
            $table->decimal('total', 12, 2)->nullable();
            $table->integer('quantity')->nullable();
            $table->string('status')->nullable();
            $table->longText('notes')->nullable();
            $table->string('ref_no')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};

<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAnswerUpDownModelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answer_up_down_models', function (Blueprint $table) {
            $table->increments('id');
            $table->bigInteger('auserId');
            $table->bigInteger('ques_id');
            $table->bigInteger('aup');
            $table->bigInteger('adown');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('answer_up_down_models');
    }
}

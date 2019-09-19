<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('position_id')->unsigned()->index();
            $table->integer('parent_id');
            $table->string('name');
            $table->date('date_of_employment');
            $table->string('cell_number');
            $table->string('salary');
            $table->string('email')->unique();
            $table->string('photo')->nullable();
            $table->timestamps();
            $table->integer('admin_created_id')->nullable();
            $table->integer('admin_updated_id')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
}

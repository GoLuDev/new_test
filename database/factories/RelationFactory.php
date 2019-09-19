<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Relation;
use Faker\Generator as Faker;

$factory->define(Relation::class, function (Faker $faker) {
    return [
        'position_id' => $faker->numberBetween(1,3),
    ];
});

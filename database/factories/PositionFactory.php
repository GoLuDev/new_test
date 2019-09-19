<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Position;
use Faker\Generator as Faker;

$factory->define(Position::class, function (Faker $faker) {
    return [

        'chief' => $faker->numberBetween(1,5),
        'name' => $faker->jobTitle,
    ];
});
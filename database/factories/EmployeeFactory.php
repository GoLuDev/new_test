<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Employee;
use Faker\Generator as Faker;
use Faker\Factory;


$factory->define(Employee::class, function (Faker $faker) {
    return [
        'position_id' => $faker->numberBetween(1,12),
        'name' => $faker->name,
        'parent_id' => $faker->numberBetween(1,25),
        'date_of_employment' => $faker->date('Y-m-d', 'now'),
        'cell_number' => function() {
            $faker = Factory::create('uk_UA');
            return $faker->phoneNumber;
        },
        'salary' => '$' . $faker->numberBetween(10000, 15000),
        'email' => $faker->email,
        'photo' => $faker->imageUrl($width = 300, $height = 300),
    ];
});

<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Nilai;
use Faker\Factory as Faker;

class NilaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 1; $i < 200; $i++) {
            Nilai::create([
                'user_id' => $i,
                'periode' => '04/21/2024 - 04/21/2024',
                'c1' => $faker->numberBetween(1, 5),
                'c2' => $faker->numberBetween(1, 5),
                'c3' => $faker->numberBetween(1, 5),
                'c4' => $faker->numberBetween(1, 5),
                'c5' => $faker->numberBetween(1, 5),
                'c6' => $faker->numberBetween(1, 5),
                'c7' => $faker->numberBetween(1, 5),
                'c8' => $faker->numberBetween(1, 5),
                'c9' => $faker->numberBetween(1, 5),
                'c10' => $faker->numberBetween(1, 5),
                'c11' => $faker->numberBetween(1, 5),
                'c12' => $faker->numberBetween(1, 5),
                'c13' => $faker->numberBetween(1, 5),
                'c14' => $faker->numberBetween(1, 5)
            ]);
        }
    }
}

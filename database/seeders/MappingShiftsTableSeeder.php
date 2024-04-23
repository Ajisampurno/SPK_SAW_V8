<?php

namespace Database\Seeders;

use App\Models\MappingShift;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class MappingShiftsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        for ($i = 0; $i < 200; $i++) {
            MappingShift::create([
                'user_id' => $faker->numberBetween(1, 100), // Ganti dengan batasan user ID yang sesuai
                'shift_id' => $faker->numberBetween(1, 4), // Ganti dengan batasan shift ID yang sesuai
                'tanggal' => $faker->date(),
                'jam_absen' => $faker->time(),
                'telat' => $faker->boolean(),
                'lat_absen' => '-7.5472515',
                'long_absen' => '110.1998238',
                'jarak_masuk' => $faker->numberBetween(1, 10) . ' km',
                'foto_jam_absen' => $faker->imageUrl(),
                'jam_pulang' => $faker->time(),
                'pulang_cepat' => $faker->boolean(),
                'foto_jam_pulang' => $faker->imageUrl(),
                'lat_pulang' => $faker->latitude(),
                'long_pulang' => $faker->longitude(),
                'jarak_pulang' => $faker->numberBetween(1, 10) . ' km',
                'status_absen' => $faker->randomElement(['Hadir', 'Tidak Hadir', 'Izin', 'Cuti']),
            ]);
        }
    }
}

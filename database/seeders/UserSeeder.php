<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Faker\Factory as Faker;

class UserSeeder extends Seeder
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
            User::create([
                'name' => $faker->name,
                'foto_karyawan' => ' ', // Ganti dengan nama file foto jika Anda menggunakan penyimpanan gambar
                'email' => $faker->unique()->safeEmail,
                'telepon' => $faker->phoneNumber,
                'username' => $faker->userName,
                'password' => Hash::make('password'), // Anda bisa menghasilkan password acak jika diperlukan
                'tgl_lahir' => $faker->date,
                'gender' => $faker->randomElement(['Laki-Laki', 'Perempuan']),
                'tgl_join' => $faker->date,
                'status_nikah' => $faker->randomElement(['Menikah', 'Lajang']),
                'alamat' => $faker->address,
                'cuti_dadakan' => $faker->numberBetween(0, 10),
                'cuti_bersama' => $faker->numberBetween(0, 10),
                'cuti_menikah' => $faker->numberBetween(0, 10),
                'cuti_diluar_tanggungan' => $faker->numberBetween(0, 10),
                'cuti_khusus' => $faker->numberBetween(0, 10),
                'cuti_melahirkan' => $faker->numberBetween(0, 90),
                'izin_telat' => $faker->numberBetween(0, 5),
                'izin_pulang_cepat' => $faker->numberBetween(0, 5),
                'is_admin' => $faker->randomElement(['admin', 'user']),
                'jabatan_id' => $faker->numberBetween(1, 5), // Ganti dengan logika sesuai kebutuhan Anda
            ]);
        }
    }
}

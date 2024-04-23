<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Models\ActivityLog;

class ActivityLogsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();

        $activities = ['tambah', 'create', 'edit', 'hapus'];

        for ($i = 0; $i < 200; $i++) {
            ActivityLog::create([
                'user_id' => $faker->numberBetween(1, 100), // Ganti dengan batasan user ID yang sesuai
                'activity' => 'tambah',
                'description' => 'Absen Pulang Pada Tanggal 2023-02-25',
            ]);
        }
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use App\Models\Nilai;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ReportController extends Controller
{
    public function index()
    {
        // Ambil data nilai
        $data = Nilai::select(
            'nilais.id',
            'user_id',
            'name',
            'periode',
            'c1',
            'c2',
            'c3',
            'c4',
            'c5',
            'c6',
            'c7',
            'c8',
            'c9',
            'c10',
            'c11',
            'c12',
            'c13',
            'c14',
        )
            ->join('users', 'users.id', '=', 'nilais.user_id')
            ->get();

        // Mendefinisikan array untuk normalisasi
        $normalisasi = [];

        // Mendefinisikan kolom c1 hingga c14
        $kolom = [
            'c1',
            'c2',
            'c3',
            'c4',
            'c5'
        ];

        // Perulangan untuk setiap data
        foreach ($data as $key => $dt) {
            // Perulangan untuk setiap kolom
            foreach ($kolom as $kol) {
                // Hitung persentase untuk kolom saat ini
                $persentase = ($dt->$kol / Nilai::max($kol)) * 100;

                // Tentukan nilai kategori berdasarkan persentase
                if ($persentase >= 0 && $persentase <= 20) {
                    ${$kol} = 1;
                } elseif ($persentase > 20 && $persentase <= 40) {
                    ${$kol} = 2;
                } elseif ($persentase > 40 && $persentase <= 60) {
                    ${$kol} = 3;
                } elseif ($persentase > 60 && $persentase <= 80) {
                    ${$kol} = 4;
                } elseif ($persentase > 80 && $persentase <= 100) {
                    ${$kol} = 5;
                }
            }

            // Simpan data normalisasi ke dalam array
            $nilais[$key] = [
                'id' => $dt->id,
                'user_id' => $dt->user_id,
                'name' => $dt->name,
                'periode' => $dt->periode,
                'c1' => $c1,
                'c2' => $c2,
                'c3' => $c3,
                'c4' => $c4,
                'c5' => $c5,
                'c6' => $dt->c6,
                'c7' => $dt->c7,
                'c8' => $dt->c8,
                'c9' => $dt->c9,
                'c10' => $dt->c10,
                'c11' => $dt->c11,
                'c12' => $dt->c12,
                'c13' => $dt->c13,
                'c14' => $dt->c14,
            ];
        }
        return view('report.index', [
            'title' => 'Report',
            'nilais' => $nilais
        ]);
    }

    public function index2()
    {
        // Ambil data nilai
        $data = Nilai::select(
            'nilais.id',
            'user_id',
            'name',
            'periode',
            'c1',
            'c2',
            'c3',
            'c4',
            'c5',
            'c6',
            'c7',
            'c8',
            'c9',
            'c10',
            'c11',
            'c12',
            'c13',
            'c14',
        )
            ->join('users', 'users.id', '=', 'nilais.user_id')
            ->get();

        // Mendefinisikan array untuk normalisasi
        $normalisasi = [];

        // Mendefinisikan kolom c1 hingga c14
        $kolom = [
            'c1',
            'c2',
            'c3',
            'c4',
            'c5'
        ];

        // Perulangan untuk setiap data
        foreach ($data as $key => $dt) {
            // Perulangan untuk setiap kolom
            foreach ($kolom as $kol) {
                // Hitung persentase untuk kolom saat ini
                $persentase = ($dt->$kol / Nilai::max($kol)) * 100;

                // Tentukan nilai kategori berdasarkan persentase
                if (
                    $persentase >= 0 && $persentase <= 20
                ) {
                    ${$kol} = Nilai::min($kol) / 1;
                } elseif ($persentase > 20 && $persentase <= 40) {
                    ${$kol} = Nilai::min($kol) / 2;
                } elseif ($persentase > 40 && $persentase <= 60) {
                    ${$kol} = Nilai::min($kol) / 3;
                } elseif ($persentase > 60 && $persentase <= 80) {
                    ${$kol} = Nilai::min($kol) / 4;
                } elseif ($persentase > 80 && $persentase <= 100) {
                    ${$kol} = Nilai::min($kol) / 5;
                }
            }

            // Simpan data normalisasi ke dalam array
            $normalisasi[$key] = [
                'id' => $dt->id,
                'user_id' => $dt->user_id,
                'name' => $dt->name,
                'periode' => $dt->periode,
                'c1' => $c1,
                'c2' => $c2,
                'c3' => $c3,
                'c4' => $c4,
                'c5' => $c5,
                'c6' => $dt->c6 / Nilai::max('c6'),
                'c7' => $dt->c7 / Nilai::max('c7'),
                'c8' => $dt->c8 / Nilai::max('c8'),
                'c9' => $dt->c9 / Nilai::max('c9'),
                'c10' => $dt->c10 / Nilai::max('c10'),
                'c11' => $dt->c11 / Nilai::max('c11'),
                'c12' => $dt->c12 / Nilai::max('c12'),
                'c13' => $dt->c13 / Nilai::max('c13'),
                'c14' => $dt->c14 / Nilai::max('c14'),
            ];
        }


        return view('report.index2', [
            'title' => 'Report',
            'nilais' => $normalisasi
        ]);
    }

    public function index3()
    {
        // Ambil data nilai
        $data = Nilai::select(
            'nilais.id',
            'user_id',
            'name',
            'periode',
            'c1',
            'c2',
            'c3',
            'c4',
            'c5',
            'c6',
            'c7',
            'c8',
            'c9',
            'c10',
            'c11',
            'c12',
            'c13',
            'c14',
        )
            ->join('users', 'users.id', '=', 'nilais.user_id')
            ->get();

        // Mendefinisikan array untuk preferensi
        $preferensi = [];

        // Mendefinisikan kolom c1 hingga c14
        $kolom = [
            'c1',
            'c2',
            'c3',
            'c4',
            'c5'
        ];

        // Perulangan untuk setiap data
        foreach ($data as $key => $dt) {
            // Perulangan untuk setiap kolom
            foreach ($kolom as $kol) {
                // Hitung persentase untuk kolom saat ini
                $persentase = ($dt->$kol / Nilai::max($kol)) * 100;

                // Tentukan nilai kategori berdasarkan persentase
                if (
                    $persentase >= 0 && $persentase <= 20
                ) {
                    ${$kol} = Nilai::min($kol) / 1;
                } elseif ($persentase > 20 && $persentase <= 40) {
                    ${$kol} = Nilai::min($kol) / 2;
                } elseif ($persentase > 40 && $persentase <= 60) {
                    ${$kol} = Nilai::min($kol) / 3;
                } elseif ($persentase > 60 && $persentase <= 80) {
                    ${$kol} = Nilai::min($kol) / 4;
                } elseif ($persentase > 80 && $persentase <= 100) {
                    ${$kol} = Nilai::min($kol) / 5;
                }
            }

            $_c1 = $c1 * 0.06;
            $_c2 = $c2 * 0.08;
            $_c3 = $c3 * 0.08;
            $_c4 = $c4 * 0.05;
            $_c5 = $c5 * 0.05;
            $_c6 = $dt->c6 / Nilai::max('c6') * 0.08;
            $_c7 = $dt->c7 / Nilai::max('c7') * 0.06;
            $_c8 = $dt->c8 / Nilai::max('c8') * 0.08;
            $_c9 = $dt->c9 / Nilai::max('c9') * 0.08;
            $_c10 = $dt->c10 / Nilai::max('c10') * 0.08;
            $_c11 = $dt->c11 / Nilai::max('c11') * 0.06;
            $_c12 = $dt->c12 / Nilai::max('c12') * 0.08;
            $_c13 = $dt->c13 / Nilai::max('c13') * 0.08;
            $_c14 = $dt->c14 / Nilai::max('c14') * 0.08;

            $nilai_akir = $_c1 +
                $_c2 +
                $_c3 +
                $_c4 +
                $_c5 +
                $_c6 +
                $_c7 +
                $_c8 +
                $_c9 +
                $_c10 +
                $_c11 +
                $_c12 +
                $_c13 +
                $_c14;

            // Simpan data preferensi ke dalam array
            $preferensi[$key] = [
                'id' => $dt->id,
                'user_id' => $dt->user_id,
                'name' => $dt->name,
                'periode' => $dt->periode,
                'nilai_akhir' => $nilai_akir,
            ];
        }

        // Urutkan array preferensi berdasarkan nilai akhir
        usort($preferensi, function ($a, $b) {
            return $b['nilai_akhir'] <=> $a['nilai_akhir'];
        });

        // Beri peringkat pada setiap entri
        $peringkat = 1;
        foreach ($preferensi as &$entry) {
            $entry['peringkat'] = $peringkat;
            $peringkat++;
        }

        return view('report.index3', [
            'title' => 'Report',
            'nilais' => $preferensi
        ]);
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Absen;
use App\Models\Nilai;
use App\Models\Jabatan;
use App\Models\MappingShift;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\DB;

class NilaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $nilai = Nilai::select('nilais.id', 'user_id', 'name', 'periode')
            ->join('users', 'users.id', '=', 'nilais.user_id')
            ->get();

        return view('input.index', [
            'title' => 'Report',
            'nilais' => $nilai
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::get();
        return view('input.create', [
            'title' => 'Tambah Data Jabatan',
            'users' => $users
        ]);
    }

    public function insert(Request $request)
    {
        $cuti = MappingShift::where('user_id', $request->user_id)
            ->where('status_absen', 'Cuti')
            ->count();

        $alpa = MappingShift::where('user_id', $request->user_id)
            ->where('status_absen', 'Tidak Masuk')
            ->count();

        $terlambat = MappingShift::where('user_id', $request->user_id)
            ->where('telat', '>', 0) // Pastikan hanya menghitung yang bernilai lebih dari 0
            //->sum('telat');
            ->count();

        $pulang_awal = MappingShift::where('user_id', $request->user_id)
            ->where('pulang_cepat', '>', 0) // Pastikan hanya menghitung yang bernilai lebih dari 0
            //->sum('pulang_cepat');
            ->count();

        $izin_pulang = MappingShift::where('user_id', $request->user_id)
            ->where('status_absen', 'Izin Pulang Cepat')
            ->count();

        $izin_telat = MappingShift::where('user_id', $request->user_id)
            ->where('status_absen', 'Izin Telat')
            ->count();

        $ijin = $izin_pulang + $izin_telat;

        // Buat rekaman Nilai
        Nilai::create([
            'user_id' => $request->user_id,
            'periode' => $request->periode,
            'c1' => $terlambat,
            'c2' => $pulang_awal,
            'c3' => $alpa,
            'c4' => $ijin,
            'c5' => $cuti,
            'c6' => $request->c6,
            'c7' => $request->c7,
            'c8' => $request->c8,
            'c9' => $request->c9,
            'c10' => $request->c10,
            'c11' => $request->c11,
            'c12' => $request->c12,
            'c13' => $request->c13,
            'c14' => $request->c14,
        ]);

        return redirect('/input')->with('success', 'Data Berhasil di Tambahkan');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Nilai  $nilai
     * @return \Illuminate\Http\Response
     */
    public function show(Nilai $nilai)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Nilai  $nilai
     * @return \Illuminate\Http\Response
     */
    public function edit(Nilai $nilai)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Nilai  $nilai
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Nilai $nilai)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Nilai  $nilai
     * @return \Illuminate\Http\Response
     */

    public function delete($id)
    {
        Nilai::find($id)->delete();
        return redirect('/input')->with('success', 'Data Berhasil dihapus');
    }


    public function destroy(Nilai $nilai)
    {
        //
    }
}

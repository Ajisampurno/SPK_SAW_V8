<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ReportController extends Controller
{
    public function index()
    {
        return view('report.index', [
            'title' => 'Report',
            'data_jabatan' => Jabatan::all()
        ]);
    }

    public function index2()
    {
        return view('report.index2', [
            'title' => 'Report',
            'data_jabatan' => Jabatan::all()
        ]);
    }

    public function index3()
    {
        return view('report.index3', [
            'title' => 'Report',
            'data_jabatan' => Jabatan::all()
        ]);
    }
}

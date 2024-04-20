<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class KriteriaController extends Controller
{
    public function index()
    {
        return view('kriteria.index', [
            'title' => 'Kriteria dan Bobot'
        ]);
    }
}

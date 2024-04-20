@extends('layouts.dashboard')
@section('isi')
    <div class="container-fluid">
        <div class="card card-outline card-primary">
            <!--
                <div class="card-header">
                <center>
                    <a href="{{ url('/jabatan/create') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Data Jabatan</a>
                </center>
            </div>
        -->
            <!-- /.card-header -->
            <div class="card-body">
                <table id="tableprint" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th class="text-center">No.</th>
                            <th class="text-center">Sumber Data</th>
                            <th class="text-center">Kriteria</th>
                            <th class="text-center">Bobot</th>
                            <th class="text-center">Atribute</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-center">C1</td>
                            <td>Absen</td>
                            <td>Terlambat</td>
                            <td class="text-center">0,06</td>
                            <td class="text-center">Cost</td>
                        </tr>
                        <tr>
                            <td class="text-center">C2</td>
                            <td>Absen</td>
                            <td>Pulang Awal</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Cost</td>
                        </tr>
                        <tr>
                            <td class="text-center">C3</td>
                            <td>Absen</td>
                            <td>Alpa</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Cost</td>
                        </tr>
                        <tr>
                            <td class="text-center">C4</td>
                            <td>Absen</td>
                            <td>Ijin</td>
                            <td class="text-center">0,05</td>
                            <td class="text-center">Cost</td>
                        </tr>
                        <tr>
                            <td class="text-center">C5</td>
                            <td>Absen</td>
                            <td>Cuti</td>
                            <td class="text-center">0,05</td>
                            <td class="text-center">Cost</td>
                        </tr>
                        <tr>
                            <td class="text-center">C6</td>
                            <td>Penilaian Kerja</td>
                            <td>Kualitas Kerja</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C7</td>
                            <td>Penilaian Kerja</td>
                            <td>Kuantitas Kerja</td>
                            <td class="text-center">0,06</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C8</td>
                            <td>Penilaian Kerja</td>
                            <td>Inisiatif</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C9</td>
                            <td>Penilaian Kerja</td>
                            <td>Disiplin</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C10</td>
                            <td>Penilaian Kerja</td>
                            <td>Tanggung Jawab</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C11</td>
                            <td>Penilaian Kerja</td>
                            <td>Motivasi</td>
                            <td class="text-center">0,06</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C12</td>
                            <td>Penilaian Kerja</td>
                            <td>Kerjasama</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C13</td>
                            <td>Penilaian Kerja</td>
                            <td>Pemahaman Terhadap Tugas</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                        <tr>
                            <td class="text-center">C14</td>
                            <td>Penilaian Kerja</td>
                            <td>Penyesuaian Diri</td>
                            <td class="text-center">0,08</td>
                            <td class="text-center">Benefit</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
    <br>
@endsection

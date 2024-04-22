@extends('layouts.dashboard')
@section('isi')
    <div class="container-fluid">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/report">Matrix Keputusan</a></li>
                <li class="breadcrumb-item"><a href="/report2">Matrix Normalisasi</a></li>
                <li class="breadcrumb-item active" aria-current="page">Matrix Perankingan</li>
            </ol>
        </nav>
        <div class="card card-outline card-primary">
            <div class="card-header">
                <h4>Matrix Keputusan</h4>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="tableprint" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>Nilai Akhir</th>
                            <th>Peringkat</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($nilais as $nilai)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $nilai['user_id'] }}</td>
                                <td style="white-space: nowrap;">{{ $nilai['name'] }}</td>
                                <td>{{ $nilai['nilai_akhir'] }}</td>
                                <td>Peringkat ke {{ $nilai['peringkat'] }}</td>
                                <td>
                                    <a href="{{ url('/karyawan/detail/'.$nilai['user_id']) }}" class="btn btn-sm btn-info"><i class="fa fa-solid fa-eye"></i></a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
    <br>
@endsection

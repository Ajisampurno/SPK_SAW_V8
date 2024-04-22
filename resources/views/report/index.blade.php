@extends('layouts.dashboard')
@section('isi')
    <div class="container-fluid">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item active" aria-current="page">Matrix Keputusan</li>
                <li class="breadcrumb-item"><a href="/report2">Matrix Ternormalisasi</a></li>
                <li class="breadcrumb-item"><a href="/report3">Matrix Perankingan</a></li>
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
                            <th>C1</th>
                            <th>C2</th>
                            <th>C3</th>
                            <th>C4</th>
                            <th>C5</th>
                            <th>C6</th>
                            <th>C7</th>
                            <th>C8</th>
                            <th>C9</th>
                            <th>C10</th>
                            <th>C11</th>
                            <th>C12</th>
                            <th>C13</th>
                            <th>C14</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($nilais as $nilai)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $nilai['user_id'] }}</td>
                                <td style="white-space: nowrap;">{{ $nilai['name'] }}</td>
                                <td>{{ $nilai['c1'] }}</td>
                                <td>{{ $nilai['c2'] }}</td>
                                <td>{{ $nilai['c3'] }}</td>
                                <td>{{ $nilai['c4'] }}</td>
                                <td>{{ $nilai['c5'] }}</td>
                                <td>{{ $nilai['c6'] }}</td>
                                <td>{{ $nilai['c7'] }}</td>
                                <td>{{ $nilai['c8'] }}</td>
                                <td>{{ $nilai['c9'] }}</td>
                                <td>{{ $nilai['c10'] }}</td>
                                <td>{{ $nilai['c11'] }}</td>
                                <td>{{ $nilai['c12'] }}</td>
                                <td>{{ $nilai['c13'] }}</td>
                                <td>{{ $nilai['c14'] }}</td>
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

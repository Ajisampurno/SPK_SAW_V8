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
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--@foreach ($data_jabatan as $dj)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $dj->nama_jabatan }}</td>
                                <td>
                                    <a href="{{ url('/jabatan/edit/'.$dj->id) }}" class="btn btn-sm btn-warning"><i class="fa fa-solid fa-edit"></i></a>
                                    <form action="{{ url('/jabatan/delete/'.$dj->id) }}" method="post" class="d-inline">
                                        @method('delete')
                                        @csrf
                                        <button class="btn btn-danger btn-sm btn-circle" onClick="return confirm('Are You Sure')"><i class="fa fa-solid fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach-->
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
    <br>
@endsection

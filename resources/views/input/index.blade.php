@extends('layouts.dashboard')
@section('isi')
    <div class="container-fluid">
        <div class="card card-outline card-primary">
            <div class="card-header">
                <center>
                    <a href="{{ url('/input/create') }}" class="btn btn-primary"><i class="fa fa-plus"></i> Tambah Data Nilai</a>
                </center>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="tableprint" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>NIP</th>
                            <th>Nama</th>
                            <th>Periode</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($nilais as $nilai)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $nilai->user_id }}</td>
                                <td>{{ $nilai->name }}</td>
                                <td>{{ $nilai->periode }}</td>
                                <td>
                                    <!--<a href="{{ url('/input/edit/'.$nilai->id) }}" class="btn btn-sm btn-warning"><i class="fa fa-solid fa-edit"></i></a>-->
                                    <form action="{{ url('/input/delete/'.$nilai->user_id) }}" method="post" class="d-inline">
                                        @method('delete')
                                        @csrf
                                        <button class="btn btn-danger btn-sm btn-circle" onClick="return confirm('Are You Sure')"><i class="fa fa-solid fa-trash"></i></button>
                                    </form>
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

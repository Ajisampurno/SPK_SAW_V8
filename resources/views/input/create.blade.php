@extends('layouts.dashboard')
@section('isi')
    <center>
        <div class="container-fluid">
            <div class="card card-outline card-primary col-lg-6 bg-light">
                <div class="p-4">
                    <form method="post" action="{{ url('/input/insert') }}">
                        @csrf
                        <div class="form-group">
                            <label for="user_id" class="float-left">Nama Jabatan</label>
                            <select class="form-control @error('user_id') is-invalid @enderror" id="user_id" name="user_id" autofocus>
                                <option value="">Pilih Karyawan</option>
                                @foreach ($users as $user)    
                                <option value="{{ $user->id }}" {{ old('user_id') == $user->id ? 'selected' : '' }}>{{ $user->name }}</option>
                                @endforeach
                            </select>
                            @error('user_id')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <!-- Date range -->
                            <label for="reservation" class="float-left">Date range:</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                <span class="input-group-text">
                                    <i class="far fa-calendar-alt"></i>
                                </span>
                                </div>
                                <input type="text" class="form-control float-right" id="reservation" name="periode">
                            </div>
                        </div>
                        <br>
                        <hr>
                        <br>
                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Kualitas kerja
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c6" name="c6" value="5">
                                        <label for="5c6" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c6" name="c6" value="4">
                                        <label for="4c6" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c6" name="c6" value="3">
                                        <label for="3c6" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c6" name="c6" value="2">
                                        <label for="2c6" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c6" name="c6" value="1">
                                        <label for="1c6" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Kuantitas kerja
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c7" name="c7" value="5">
                                        <label for="5c7" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c7" name="c7" value="4">
                                        <label for="4c7" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c7" name="c7" value="3">
                                        <label for="3c7" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c7" name="c7" value="2">
                                        <label for="2c7" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c7" name="c7" value="1">
                                        <label for="1c7" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Inisiatif
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c8" name="c8" value="5">
                                        <label for="5c8" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c8" name="c8" value="4">
                                        <label for="4c8" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c8" name="c8" value="3">
                                        <label for="3c8" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c8" name="c8" value="2">
                                        <label for="2c8" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c8" name="c8" value="1">
                                        <label for="1c8" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Disiplin
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c9" name="c9" value="5">
                                        <label for="5c9" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c9" name="c9" value="4">
                                        <label for="4c9" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c9" name="c9" value="3">
                                        <label for="3c9" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c9" name="c9" value="2">
                                        <label for="2c9" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c9" name="c9" value="1">
                                        <label for="1c9" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Tanggung jawab
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c10" name="c10" value="5">
                                        <label for="5c10" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c10" name="c10" value="4">
                                        <label for="4c10" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c10" name="c10" value="3">
                                        <label for="3c10" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c10" name="c10" value="2">
                                        <label for="2c10" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c10" name="c10" value="1">
                                        <label for="1c10" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Motivasi
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c11" name="c11" value="5">
                                        <label for="5c11" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c11" name="c11" value="4">
                                        <label for="4c11" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c11" name="c11" value="3">
                                        <label for="3c11" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c11" name="c11" value="2">
                                        <label for="2c11" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c11" name="c11" value="1">
                                        <label for="1c11" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Kerjasama
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c12" name="c12" value="5">
                                        <label for="5c12" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c12" name="c12" value="4">
                                        <label for="4c12" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c12" name="c12" value="3">
                                        <label for="3c12" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c12" name="c12" value="2">
                                        <label for="2c12" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c12" name="c12" value="1">
                                        <label for="1c12" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Pemahaman terhadap tugas
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c13" name="c13" value="5">
                                        <label for="5c13" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c13" name="c13" value="4">
                                        <label for="4c13" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c13" name="c13" value="3">
                                        <label for="3c13" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c13" name="c13" value="2">
                                        <label for="2c13" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c13" name="c13" value="1">
                                        <label for="1c13" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="card">
                                <div class="card-header">
                                    Penyesuaian diri
                                </div>
                                <div class="card-body">
                                    <!-- star rating -->
                                    <div class="rating-wrapper">
                                        <!-- star 5 -->
                                        <input type="radio" id="5c14" name="c14" value="5">
                                        <label for="5c14" class="star-rating">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 4 -->
                                        <input type="radio" id="4c14" name="c14" value="4">
                                        <label for="4c14" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 3 -->
                                        <input type="radio" id="3c14" name="c14" value="3">
                                        <label for="3c14" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 2 -->
                                        <input type="radio" id="2c14" name="c14" value="2">
                                        <label for="2c14" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                        <!-- star 1 -->
                                        <input type="radio" id="1c14" name="c14" value="1">
                                        <label for="1c14" class="star-rating star">
                                        <i class="fas fa-star d-inline-block"></i>
                                        </label>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary float-right">Submit</button>
                    </form>
                    <br>
                </div>
            </div>
        </div>
    </center>
    <br>
@endsection
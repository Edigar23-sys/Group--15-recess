@extends('layouts.admin')

@section('content')

    <h1>Deposits</h1>
    <div class="row mt-3">
        <div class="col-sm-12 col-md-4">
            <div class="card p-2">
                <h1>{{ count($member_count) }}</h1>
                <p class="text-muted">Registered Deposits Made</p>
            </div>
        </div>
        <div class="col-sm-12 col-md-4">
        <div class="card p-2"> 
          <!-- Total deposits -->
            <h1>Ugx {{$sum_deposit}} </h1>
            <p class="text-muted">Total Deposists</p>
        </div>
        </div>
        <div class="col-sm-12 col-md-4">
       <button class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#makeDeposit">Make deposit</button>
        </div>
    </div>
    @include('admin.deposits.depositmodal')
    
    <div class="">
      <h1 class="text-left mt-4">Upload CSV Bank File Deposits</h1>
      <div class="row align-items-center justify-content-center mt-4">
        <div class="col-md-6">
          <div class="p-3 dotted h-300 d-flex align-items-center justify-content-center rounded-5">
            <div>
              <h3 class="text-center">Choose CSV file</h3>
              <p class="text-muted text-xl text-center">
                <i class="feather-upload text-4xl"></i>
              </p>
              <p class="text-center text-primary">Drag and Drop</p>
            </div>
          </div>
          <div class="mt-3 d-flex justify-content-end align-items-center gap-2">
            <div>
              <form action="{{ route('upload.csv') }}" method="POST" enctype="multipart/form-data">
                  @csrf
                  <input type="file" name="csv_file">
                  <button type="submit">Upload CSV</button>
            </form>

            </div>
            <div>
              <button class="btn btn-outline-primary shadow-sm">Browse</button>
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection
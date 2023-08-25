@extends('layouts.admin')

@section('content')
<div class="text-center">
    <h1>Reports</h1>
  </div>
<div class="row justify-content-center align-items-center">

  <div class="col-sm-6 mb-4">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Loan Performance Reports</h5>
        <p class="card-text">Get a high level overview 0r summary of the Uprise Sacco Performance</p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loanModal">
          View Report
        </button>
      </div>
    </div>
  </div>
  <div class="col-sm-6 mb-4">
    <div class="card" >
      <div class="card-body">
        <h5 class="card-title">Deposit Performance Reports</h5>
        <p class="card-text">Unlocking Insights: Exploring Deposit Performance Reports</p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#depositmodal">
          View Report
        </button>
      </div>
    </div>
  </div>
   <!-- <hr> -->
    

    <div class="row">
      <h2>Loans</h2>
        <div class="col-sm-12 col-md-6">
            <div class="card p-2">
                <h3>{{ $total_loaned_memb[0]->total_members ?? 'N/A' }} </h3>
                <p class="text-muted">Granted Loans</p>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
        <div class="card p-2">
            <h3>Ugx {{ $total_loan_req[0]->total_loans_requested ?? 'N/A' }}</h3>
            <p class="text-muted">Total Granted Loan amount</p>
        </div>
    </div>

    <div class="row">
      <h2>Deposit</h2>
        <div class="col-sm-12 col-md-6">
            <div class="card p-2">
                <h3>{{ $member_count ?? 'N/A' }} </h3>
                <p class="text-muted">Granted Loans</p>
            </div>
        </div>
        <div class="col-sm-12 col-md-6">
        <div class="card p-2">
            <h3>Ugx {{ $total_contribution ?? 'N/A' }}</h3>
            <p class="text-muted">Total Granted Loan amount</p>
        </div>
    </div>
    







  <!-- Add similar cards for other sections -->
@include('admin.partials.depositmodal')
@include('admin.partials.loan_performance_modal')
</div>
@endsection

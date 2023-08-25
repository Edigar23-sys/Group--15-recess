
@extends('layouts.admin')

@section('content')

    <div class="container">
        <form class="row g-3">
            <div class="col-12 text-center mb-4">
                <h1 class="modal-title" id="loanModalLabel">Uprise Sacco Deposit Performance Report {{ date('Y') . '/' . (date('Y') + 1) }}</h1>
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Financial Year</strong></label>
                <input type="text" class="form-control" value="{{ date('Y') . '/' . (date('Y') + 1) }}" disabled aria-label="financialYear">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Deposit Or Contribution Target</strong></label>
                <input type="text" class="form-control" value="Shs. 1,200,000" disabled aria-label="financialYear">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Total  Deposits Made</strong></label>
                <input type="text" disabled class="form-control" value="Shs. {{ $total_contribution ?? 'N/A' }}"  aria-label="loanRepaid">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Average Deposit as of Target(Shs. 1,200,00)</strong></label>
                <input type="text" disabled class="form-control" value="Shs. {{ $average ?? 'N/A' }}"  aria-label="Last name">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Highest Deposit Made</strong></label>
                <input type="text" disabled class="form-control"  value="Shs. {{ $recordWithHighestPledge->max_client_pledge_cleared ?? 'N/A' }}"  aria-label="Last name">
                <h6 class="mt-2"><strong>
                        <em>{{"  "}}By : {{ $recordWithHighestPledge->clientName ?? 'N/A' }}</em>
                    </strong></h6>
            </div>
            <div class="form-group">
                <label for="loanAmount"><strong>Total Number Of Clients That Have Deposited </strong></label>
                <input type="text" disabled class="form-control" value="{{ $member_count ?? 'N/A' }}"   aria-label="Last name">
              </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Average Deposit Performance</strong></label>
                <input type="text" class="form-control"value="{{ $average ?? 'N/A' }}"  disabled aria-label="First name">
            </div>
            <div class="form-group">
                <label for="loanAmount"><strong>Total Number Of Clients That Have Deposited </strong></label>
                <input type="text" disabled class="form-control" value="{{ $member_count ?? 'N/A' }}"   aria-label="Last name">
              </div>
            <div class="col-12 text-center mb-4">
                <h4>Client Performance Table Ranking For The Financial Year {{ date('Y') . '/' . (date('Y') + 1) }} </h4>
                <div>
                    
                </div>
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Total Loan Amount</strong></label>
                <input type="text" disabled class="form-control" value="Shs. 100,000,000" aria-label="loan_amount">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Loans Repaid</strong></label>
                <input type="text" disabled class="form-control" value="Shs. 1000,000" aria-label="loanRepaid">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Pending Unpaid</strong></label>
                <input type="text" disabled class="form-control" value="Shs. 2000,000" aria-label="Last name">
            </div>
            <div class="col-md-4">
                <label for="loanAmount"><strong>Total Number Of Clients Loaned in Financial Year </strong></label>
                <input type="text" disabled class="form-control" value="100" aria-label="Last name">
            </div>
            <div class="col-md-6">
                <label for="loanAmount"><strong>Average loan Performance</strong></label>
                <input type="text" class="form-control" value="2023/2024" disabled aria-label="First name">
            </div>
            <a href="admin.email-reports.email" ><button type="button" class="btn btn-outline-danger">send email</button></a>
        </form>
    </div>
@endsection

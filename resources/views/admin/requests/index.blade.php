@extends('layouts.admin')

@section('content')
<div>
<div class="accordion" id="accordionPanelsStayOpenExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
        <h5>Loan Requests</h5>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show">
      <div class="accordion-body" style=" background-color: white !important;">
        <div class=" mt-2">
      <strong><div class="shadow-sm  bg-white"> <em>Client submitted loan requests awaitng approval.</em></div></strong>
      <div class="mt-3">
        <div class="search"></div>
        <table class="table table-striped table-hover table-light">
    <thead>
        <tr>
            <th scope="col">Client</th>
            <th scope="col">Full Name</th>
            <th scope="col">Phone Number</th>
            <th scope="col">RequestAmount</th>
            <th scope="col">Previous Loan Progress Status</th>
            <th scope="col">Average Loan Performance</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    @if ($loan_req === null || count($loan_req) === 0)
        <tr>
            <td colspan="7">No Requests yet!</td>
        </tr>
    @else
        @foreach ($loan_req as $client)
        <tr class="p-2 hover-bg-slate">
            <td>{{ $client->client_id }}</td>
            <td>{{ $client->clientName }}</td>
            <td>{{ $client->phone_number }}</td>
            <td>{{ $client->loan_request_amount }}</td>
            <td>
                @if ($client->loan_progress_status !== null)
                    {{ $client->loan_progress_status }}
                @else
                    <strong style="color: red;"><em>New Member</em></strong>
                @endif
            </td>
            <td>{{ $client->loan_performance }}</td>
            <td>
                <a href="{{ route('admin.requests', ['client_id' => $client->client_id]) }}">
                    <button type="button" class="btn btn-success">Set Interest</button>
                </a>
            </td>
        </tr>
        @endforeach
    @endif
</tbody>


</table>


      </div>
    </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
        <h5 class="text-center">Pending Login Requests</h5>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
      <div class="accordion-body" style=" background-color: white !important;">
        <div class=" mt-2">
      <strong><div class="shadow-sm  bg-white"><em>Pending client login request issues .</em></div></strong>
      <div class="mt-3">
        <form action="" method="get">
          <input type="text" name="ref_number_search" placeholder="Search Reference Num....">
        </form>
        <div class="search"></div>
        <table class="table table-hover">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Full Name</th>
              <th scope="col">Phone Number</th>
              <th scope="col">Reference Number</th>
              <th scope="col">Update Password</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($data as $client)
          <tr class="p-2 hover-bg-slate">
            <td>{{ $client['client_id'] }} </td>
            <td>{{ $client['client_name'] }}</td>
            <td>{{ $client['phone_number'] }}</td>
            <td>{{ $client['latest_ref_number'] }}</td>
            <td>
              <input type="text" name="ref_no_update">
            </td>
            <td>
              <a href="mailto:{{$client['email']}}">
                <button type="button" class="btn btn-info">email Client</button>
              </a>
             <button type="button" class="btn btn-success">wee</button></td>
          </tr>
          @endforeach
          </tbody>
        </table>

      </div>
    </div>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
        <h5 class="text-center">Client Accepted Loan (<em>In Past 72 Hours</em>)</h5>
      </button>
    </h2>
    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse">
      <div class="accordion-body" style=" background-color: white !important;">
        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
      </div>
    </div>
  </div>
</div>









  <div class="row justify-content-center align-items-center ">
  

    
    

    
    
  </div>
</div>
@endsection
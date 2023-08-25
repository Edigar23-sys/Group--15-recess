@extends('layouts.admin')

@section('content')

<div class="row" style="color: black; font-size: 46px; text-align:center;" >
  <div class="col-md-6 mb-3">
    <div class="card text-center p-2 d-flex justify-content-center align-items-center">
      <div>
        <h3 class=" text-uppercase">Total members</h3>
        <img src="{{ asset('images/users.png') }}" alt="" class="mx-auto my-3" width="100">
        <p class="h1">{{count($membersCount)}}</p>
      </div>
    </div>
  </div>
  <div class="col-md-6 mb-3">
    <div class="card text-center p-2 d-flex justify-content-center align-items-center">
      <div>
    <h3 class="text-uppercase">Active clients</h3>
    <img src="{{ asset('images/meme.png') }}" alt="" class="mx-auto my-3" width="100">
    <p class="h1">{{ $activeCount }}</p>
</div>

    </div>
  </div>
  <div class="col-md-6 mb-3">
    <div class="card text-center p-2 d-flex justify-content-center align-items-center">
      <div>
        <h3 class=" text-uppercase">loans</h3>
        <img src="{{ asset('images/Coins.png') }}" alt="" class="mx-auto my-3" width="100">
        <p class="h1">Shs. {{ $loans }}</p>
      </div>
    </div>
  </div>
  <div class="col-md-6 mb-3">
    <div class="card text-center p-2 d-flex justify-content-center align-items-center">
      <div>
        <h3 class=" text-uppercase">sacco funds</h3>
        <img src="{{ asset('images/moneybag.png') }}" alt="" class="mx-auto my-3" width="100">
        <p class="h1">Shs. {{ $total_cont }}</p>
      </div>
    </div>
  </div>
</div>
<div class="row" style="color: black; font-size: 46px; text-align:center;" >
  <h2><strong>Graphical Overview of the Sacco Performance</strong></h2>

        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
          google.charts.load("current", {packages:["corechart"]});
          google.charts.setOnLoadCallback(drawChart);
          function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Month', 'Contributions'],
          
              <?php echo $chartData ?>
              
            ]);

            var options = {
              title: 'Monthly Contributions',
              pieSliceText: 'label',
              slices: {  2: {offset: 0.2},
                      4: {offset: 0.2},
                      6: {offset: 0.2},
                      8: {offset: 0.3},
                      10: {offset: 0.2},

              },
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
          }
        </script>

       <div id="piechart_3d" style="height: 300px; width:50%; border: 2px solid black"></div> 
  </div>
</div>
@endsection
<!-- <div id="piechart_3d" style="width: 60%; height: 500px; border: 2px solid black"></div> -->
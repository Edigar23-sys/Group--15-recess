<?php
namespace App\Http\Controllers;

use App\Models\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminHomeController extends Controller
{
    public function index()
    {   
        // PieChart 1
        $total_loan_requests = DB::select("
            SELECT MONTHNAME(start_date) AS month, SUM(loan_request_amount) AS total_requested_loan
            FROM loan
            WHERE grant_status = 'Granted' AND client_decision = 'Accepted'
            GROUP BY YEAR(start_date), MONTH(start_date), start_date
            ORDER BY YEAR(start_date) DESC, MONTH(start_date) DESC
        ");
        
        $data = "";
        foreach ($total_loan_requests as $key => $val) {
            $data .= "['" . $val->month . "', " . $val->total_requested_loan . "],";
        }
        $chartData = $data;
        // dd($chartData);
        $membersCount = Member::all();

         $active_members = DB::select('SELECT COUNT(DISTINCT id) as active
        FROM contributions
        WHERE YEAR(deposit_date) = YEAR(CURRENT_DATE())
              AND MONTH(deposit_date) >= 6
              OR (YEAR(deposit_date) = YEAR(CURRENT_DATE()) + 1 AND MONTH(deposit_date) <= 6)
    ');

    $activeCount = $active_members[0]->active; // Extracting the active count

    $total_contributions =DB::select('select sum(client_pledge_cleared) as total from contributions');
    $total_cont = $total_contributions[0]->total;
    $unpaid= DB::select('SELECT sum(amount) as total FROM loan WHERE client_decision="Accepted" and loan_progress_status < 100');
    $loans = $unpaid[0]->total;
    // dd($total_contributions);

    return view('admin.home.index', compact('membersCount', 'chartData','total_cont', 'loans','activeCount'));
    }
}

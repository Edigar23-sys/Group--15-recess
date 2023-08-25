<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
//use Carbon\Carbon;
use App\Models\Report;

use Barryvdh\DomPDF\PDF;
use App\Models\Member;
use Illuminate\Http\Request;
use App\Http\Controllers\MemberController;
use App\Mail\WelcomeMail;

class EmailReportController extends Controller
{
    //


    public function email()
    {

        $membersController = new MemberController();

       // $sixMonthsAgo = Carbon::now()->subMonths(6);
        $active_members = DB::select('SELECT DISTINCT username as active
        FROM contributions
        WHERE YEAR(deposit_date) = YEAR(CURRENT_DATE())
              AND MONTH(deposit_date) >= 6
              OR (YEAR(deposit_date) = YEAR(CURRENT_DATE()) + 1 AND MONTH(deposit_date) <= 6)
    ');



        foreach ($active_members as $member) {

        
                Mail::to($member->username)->send(new WelcomeMail($member));
           
        }
        return redirect('admin.email-reports');
    }

    public function index()
    {
        $table = DB::select('SELECT c.client_id, AVG(c.contribution_progress) AS max_contribution_progress, SUM(c.client_pledge_cleared) AS max_client_pledge_cleared, m.clientName, m.phone_number FROM contributions c JOIN members m ON c.client_id = m.id GROUP BY c.client_id, m.clientName, m.phone_number;');

        // Initialize variables
        $sumFromTable = 0;
        $highestPledge = 0;
        $recordWithHighestPledge = null;
        $averagePerformance = 0;
        $member_count = count($table);

        foreach ($table as $row) {
            $sumFromTable += (float) $row->max_client_pledge_cleared;
            $averagePerformance += (float) $row->max_contribution_progress;
            if ((float) $row->max_client_pledge_cleared > $highestPledge) {
                $highestPledge = (float) $row->max_client_pledge_cleared;
                $recordWithHighestPledge = $row;
            }
        }

        $total_contribution = $sumFromTable;
        $average = $averagePerformance / $member_count;

        // Modify the $dataArray variable
        $dataArray = [
            'total_contribution' => $total_contribution,
            'average' => $average,
            'table' => $table,
            'recordWithHighestPledge' => $recordWithHighestPledge,
            'member_count' => $member_count,
        ];
        $total_loan_req = DB::select('SELECT sum(loan_request_amount) as total_loans_requested from loan where client_decision="Accepted"');
        $total_loan_paid_100 = DB::select('SELECT sum(clearance_status) as total_loans_cleared from loan where loan_progress_status=100');
        $total_loan_paid_less_100 = DB::select('SELECT sum(clearance_status) as total_loans_uncleared from loan where loan_progress_status < 100');
        $total_loaned_memb = DB::select('SELECT count(*) as total_members from loan');
        $average_loan_perf = DB::select('SELECT AVG(COALESCE(loan_performance, 0)) as average_loan_perf FROM loan');

        $data = [
            'total_loan_req' => $total_loan_req,
            'total_loan_paid_100' => $total_loan_paid_100,
            'total_loan_paid_less_100' => $total_loan_paid_less_100,
            'total_loaned_memb' => $total_loaned_memb,
            'average_loan_perf' => $average_loan_perf,
        ];
       

           return view('admin.email-reports.display', $data, compact('total_contribution', 'average', 'recordWithHighestPledge', 'member_count'));

    }
    // Additional logic if needed
    // You can return a response or redirect if needed
}

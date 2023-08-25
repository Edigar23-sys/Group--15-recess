<?php

namespace App\Http\Controllers;

use App\Models\PendingRequest;
use Illuminate\Http\Request;
use DB;

class PendingRequestController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pending_login_req = DB::select("SELECT client_id, MAX(ref_number) AS latest_ref_number FROM login_reference GROUP BY client_id");
        
        $data = [];
        foreach ($pending_login_req as $key => $val) {
            $client_id = $val->client_id;
            $latest_ref_number = $val->latest_ref_number;
            
            $client_data = DB::table('members')->where('id', $client_id)->first();
            // dd($client_data);
            if ($client_data) {
                $client_info = [
                    'client_id' => $client_id,
                    'latest_ref_number' => $latest_ref_number,
                    'client_name' => $client_data->clientName,
                    'phone_number' => $client_data->phone_number,
                    'email' => $client_data->username,
                ];
                $data[] = $client_info;
            }
        } 
        
        // loan request
        $loan_request = DB::select('
    SELECT * FROM loan l JOIN members m ON l.client_id = m.id WHERE l.grant_status != "granted"  AND (l.loan_progress_status = 100 OR l.loan_progress_status IS NULL) ORDER BY l.req_sub_date LIMIT 10;
');


$loan_req = $loan_request; 
        // dd($loan_request);
        
        return view('admin.requests.index', compact('data', 'loan_req'));
    }






    public function client_details($client_id) {
    $client_data_overall = DB::table('loan AS l')
        ->join('members AS m', 'l.client_id', '=', 'm.id')
        ->where('l.client_id', $client_id)
        ->where('l.grant_status', '!=', 'granted')
        ->where(function ($query) {
            $query->where('l.loan_progress_status', '=', 100)
                  ->orWhereNull('l.loan_progress_status');
        })
        ->orderBy('l.req_sub_date')
        ->take(10)
        ->get();
        if ($client_data_overall->isEmpty()) {
        abort(404); // Or handle the case where no client data is found
    }

    $client = $client_data_overall->first();
        // $client = $client_data_overall;
        // dd($client);


    return view('admin.requests.client_details', compact('client'));
}


}

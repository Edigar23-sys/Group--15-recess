<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\WelcomeMail;
use Illuminate\Support\Facades\DB;

class EmailReportController extends Controller
{
    public function index(Request $request)
    {
        try {
            // Fetching  the data to be sent to the email view
            $clientIds = DB::select("
                SELECT DISTINCT client_id
                FROM contributions
                WHERE (YEAR(deposit_date) = YEAR(CURRENT_DATE()) AND MONTH(deposit_date) >= 6)
                OR (YEAR(deposit_date) = YEAR(CURRENT_DATE()) + 1 AND MONTH(deposit_date) <= 6) 
            ");
            //loans details
            $total_loan_req = DB::select('SELECT sum(loan_request_amount) as total_loans_requested from loan where client_decision="Accepted"');
            $total_loan_paid_100 = DB::select('SELECT sum(clearance_status) as total_loans_cleared from loan where loan_progress_status=100');
            $total_loan_paid_less_100 = DB::select('SELECT sum(clearance_status) as total_loans_uncleared from loan where loan_progress_status < 100');
            $total_loaned_memb = DB::select('SELECT count(*) as total_members from loan');
            $average_loan_perf = DB::select('SELECT AVG(COALESCE(loan_performance, 0)) as average_loan_perf FROM loan');


            $successClients = [];
            foreach ($clientIds as $key => $clientIdObject) {
                $clientId = $clientIdObject->client_id;

                // Fetch client's email based on the client_id
                $client = DB::table('members')->where('id', $clientId)->first();

                if ($client) {
                    try {
                        // Prepare the data to pass to the WelcomeMail
                        $emailData = [
                            'total_contribution' => $total_contribution,
                            'total_loan_paid_100' => $total_loan_paid_100,
                        ];

                        Mail::to($client->username)->send(new WelcomeMail($emailData));

                        $successClients[] = $client->username; // Store the successful clients

                    } catch (\Exception $e) {
                        // Handle the exception (e.g., log it)
                        // This might help you identify any issues with email sending
                        // You can add a log entry or use dd($e->getMessage()) to see the error
                    }
                }
            }

            // Debug the contents of $successClients
            // dd($successClients);

            // Determine the success message based on $successClients
            $successMessage = (!empty($successClients))
                ? 'Emails sent successfully to clients with usernames: ' . implode(', ', $successClients)
                : 'No emails sent.';

            return response()->json(['success' => $successMessage]);

        } catch (\Exception $ex) {
            // Handle the exception (e.g., log it) and provide an error response
            return response()->json(['error' => 'An error occurred.']);
        }
    }
}
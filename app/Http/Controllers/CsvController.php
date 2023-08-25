<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;

class CsvController extends Controller
{
    public function uploadCsv(Request $request){
            if ($request->hasFile('csv_file')) {
                $path = $request->file('csv_file')->getRealPath();
                $file = fopen($path, 'r'); // Open the CSV file for reading

                $header = fgetcsv($file); // Get the header row

                while (($row = fgetcsv($file)) !== false) {
                    if (count($header) === count($row)) {
                        $record = array_combine($header, $row);

                        // Insert $record data into the MySQL database
                        DB::table('contributions')->insert($record);
                    } else {
                        // Handle the case where the number of columns doesn't match
                        // You can log an error or handle it according to your needs
                    }
                }

                fclose($file); // Close the CSV file
            return redirect('admin')->with('success', 'CSV file uploaded and data inserted.');
        }

        return redirect()->back()->with('error', 'No CSV file uploaded.');
    }




    public function uploadloanCsv(Request $request)
{
    if ($request->hasFile('csv_file')) {
        $path = $request->file('csv_file')->getRealPath();
        $file = fopen($path, 'r'); // Open the CSV file for reading

        $header = fgetcsv($file); // Get the header row

        while (($row = fgetcsv($file)) !== false) {
            if (count($header) === count($row)) {
                $record = array_combine($header, $row);

                // Extract the loan_application_no and client_id from the record
                $loan_application_no = $record['loan_application_no'];
                $client_id = $record['client_id'];

                // Remove loan_application_no and client_id from the record
                unset($record['loan_application_no'], $record['client_id']);

                // Update specific columns for the matching record
                DB::table('loan')
                    ->where('loan_application_no', $loan_application_no)
                    ->where('client_id', $client_id)
                    ->update($record);
            } else {
                // Handle the case where the number of columns doesn't match
                // You can log an error or handle it according to your needs
            }
        }

        fclose($file); // Close the CSV file

        return redirect('admin')->with('success', 'CSV file uploaded and data updated.');
    }

    return redirect()->back()->with('error', 'No CSV file uploaded.');
}

}

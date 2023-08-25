<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class UpdateController extends Controller
{
    public function update(Request $request){
        $id = $request->input('client_id');
        $interest = $request->input('interest');
        // dd($id);
        DB::update('update loan set grant_status = ? , interest_rate = ? where client_id = ?', ['Granted',$interest ,$id ]);
        return redirect('admin/requests');
    }
}

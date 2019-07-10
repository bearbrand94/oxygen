<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class Invoice extends Model
{
    public static function get_invoice($transaction_id=1){
        $transaction_data = DB::table('transactions')
        		->select('transactions.*')
        		->where('transactions.id', $transaction_id)->first();

        $transaction_data->detail = DB::table('transaction_detail')
                ->select('transaction_detail.*')
                ->where('transaction_detail.transaction_id', $transaction_data->id)->get();
        return $transaction_data;
    }
}

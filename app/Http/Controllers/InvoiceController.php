<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Invoice;

class InvoiceController extends Controller
{
    //
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('invoice')->with('invoice_data', Invoice::get_invoice(1));
    }

    public function invoice($invoice_id){
        return view('invoice')->with('invoice_data', Invoice::get_invoice($invoice_id));
    }
}

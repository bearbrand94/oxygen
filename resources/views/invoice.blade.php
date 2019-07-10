@extends('adminlte::page')

@section('title', '')



@section('content')
<style type="text/css" media="print">
    div.page
    {
        page-break-after: always;
        page-break-inside: avoid;
    }
</style>
<!-- <body onload="window.print();"> -->
<div class="wrapper">
    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i> PT. Karya Bersama Bersaudara
            <small class="pull-right">Tanggal Cetak: {{date('d M Y', strtotime(now()))}}</small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
      <!-- info row -->
      <div class="row invoice-info">
        <div class="col-xs-12">
          <h4><strong>Nota Pembelian Oksigen</strong></h4>
        </div>
        <div class="col-xs-8">
          <address>
            <strong>Kepada Yth, </strong><br>
            Sumber Baru<br>
            Pangkalan Bun
          </address>
        </div>
        <!-- /.col -->
        <div class="col-xs-4 text-right">
          No. Invoice: <b>{{$invoice_data->order_id}}</b><br>
          <b>Surabaya, {{date('d M Y', strtotime($invoice_data->order_date))}}</b>
          <br>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Table row -->
      <br>Dengan ini kami mengirimkan nota pembelian oksigen yang dikirimkan dengan truck <b>{{$invoice_data->truck_name}}</b> plat nomor <b>{{$invoice_data->truck_id}}</b> pada tanggal {{date('d M Y', strtotime($invoice_data->order_date))}} dengan rincian barang sebagai berikut:
      <div class="row" style="margin-top: 20px;">
        <div class="col-xs-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr>
              <th>No</th>
              <th>Nama Barang</th>
              <th>Deskripsi</th>
              <th class="text-right">Jumlah</th>
              <th class="text-right">Harga Sat.</th>
              <th class="text-right">Subtotal</th>
            </tr>
            </thead>
            <tbody>
              <?php $no=1; $total_price=0;?>
              @foreach ($invoice_data->detail as $invoice_detail)
                <tr>
                  <td>{{ $no }}</td>
                  <td>{{ $invoice_detail->product_name }}</td>
                  <td>{{ $invoice_detail->description }}</td>
                  <td class="text-right">{{ $invoice_detail->qty }} Tabung</td>
                  <td class="text-right">{{ number_format($invoice_detail->price_each) }}</td>
                  <td class="text-right">{{ number_format($invoice_detail->price_each*$invoice_detail->qty) }}</td>
                </tr>
                <?php $no++; $total_price += $invoice_detail->price_each*$invoice_detail->qty; ?>
              @endforeach
            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row" style="margin-top: 20px;">
        <div class="col-xs-6">
          <p class="lead">Transfer Bank:</p>

          <p class="well well-sm no-shadow">
            <b>BCA</b><br>
            No Rekening: 5200255170<br>
            a.n: Paulus Wey
          </p>
          

        </div>
        <div class="col-xs-3 col-xs-offset-3">
          <div class="table-responsive">
            <table class="table">
              <tbody><tr>
                <th style="width:50%">Subtotal:</th>
                <td class="pull-right">Rp. {{number_format($total_price)}}</td>
              </tr>
              <tr>
                <th>Shipping:</th>
                <td class="pull-right">-</td>
              </tr>
              <tr>
                <th>Total:</th>
                <td class="pull-right">Rp. {{number_format($total_price)}}</td>
              </tr>
            </tbody></table>
          </div>
        </div>
      </div>
    </section>
    <!-- /.content -->

  </div>

</div>
<!-- ./wrapper -->
@stop


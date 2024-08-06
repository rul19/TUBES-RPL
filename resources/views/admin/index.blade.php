@extends('admin.app')

@section('style')
    @include('admin.style')
@endsection

@section('content')
<!-- End Navbar -->
      {{-- <div class="panel-header panel-header-lg">
        <canvas id="bigDashboardChart"></canvas>
      </div> --}}
      <div class="panel-header panel-header-sm">
        </div>
      <div class="content">
        <div class="row">
          <div class="col-lg-4">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Data</h5>
                <h4 class="card-title">Pesanan</h4>
                <div class="dropdown">
                  
                
                </div>
              </div>
              <div class="card-body">
                <p class="text-center" style="font-size: 70px">{{ $data_pesan }}</p>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <a href="{{ route ('datapesan')}}">Details More -></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Data</h5>
                <h4 class="card-title">Meja</h4>
                <div class="dropdown">
                 
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                    <a class="dropdown-item text-danger" href="#">Remove Data</a>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <p class="text-center" style="font-size: 70px">{{ $data_meja }}</p>
              </div>
              <div class="card-footer">
                  <a href="{{ route ('datameja')}}">Details More -></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Data</h5>
                <h4 class="card-title">Menu</h4>
              </div>
              <div class="card-body">
                <p class="text-center" style="font-size: 70px">{{ $data_menu }}</p>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <a href="{{ route ('datamenu')}}">Details More-></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="card card-chart">
              <div class="card-header">
                <h5 class="card-category">Data</h5>
                <h4 class="card-title">Kategori</h4>
              </div>
              <div class="card-body">
                <p class="text-center" style="font-size: 70px">{{ $data_kategori }}</p>
              </div>
              <div class="card-footer">
                <div class="stats">
                  <a href="{{ route ('datakategori')}}">Details More -></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      @endsection
      @section('script')
        @include('admin.script')
      @endsection
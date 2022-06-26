@extends('layouts.main')
@section('container')
<div class="row align-items-md-stretch">
      <div class="col-md-12">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
            <div class="row">
                <div class="col-md-6">
                    <h2>Tentang Website</h2>
                    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum architecto obcaecati fugiat, eligendi similique neque esse aspernatur corrupti ullam quam molestiae libero impedit nulla veniam minima debitis odit laudantium rerum!</p>
                </div>
                <div class="col-md-6 text-center">
                    <img src="img/{{ $image }}" alt="" width="200" class="rounded-circle img-thumbnail">
                    <H2>{{ $name }}</H2>
                    <h4>{{$email}}</h4>
                </div>
            </div>
        </div>
      </div>
    </div>
<p>
<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Hubungi
</button>
</p>
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 300px;">
      <a href="https://api.whatsapp.com/send/?phone=%2B89515128855&text&app_absent=0" class="text-decoration-none text-primary"><i class="bi bi-whatsapp"></i> +89515128855</a>
      <a href="https://www.instagram.com/akramullfata/" class="text-decoration-none text-primary"><i class="bi bi-instagram"></i> akramullfata</a>
      <a href="https://github.com/akramulfata10" class="text-decoration-none text-primary"><i class="bi bi-github"></i> akramulfata10</a>
    </div>
  </div>
</div>
@endsection

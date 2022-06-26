@extends('layouts.main')
@section('container')
<main>
  <div class="container py-4">
    <header class="pb-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
        <span class="fs-4">Web Sederhana Documentasi Erorr / Blog Pribadi Website</span>
      </a>
    </header>

    <div class="p-5 mb-4 bg-dark rounded-3">
      <div class="container-fluid">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-md-9">
                            <img src="{{asset('img/databases seeder.png')}}" class="d-block w-50 img-thumbnail">
                        </div>
                        <div class="col align-self-start m-auto p-lg-2">
                            <h4 class="badge bg-primary text-wrap" style="width: 6rem;">Melakukan Migrate Fresh Dengan Databases Seeder</h4>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-9">
                            <img src="{{asset('img/insert artisan tinker.png')}}" class="d-block w-50 img-thumbnail">
                        </div>
                        <div class="col align-self-start m-auto p-lg-2">
                            <h4 class="badge bg-primary text-wrap" style="width: 6rem;">Insert Data Tinker</h4>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="row">
                        <div class="col-md-9">
                            <img src="{{asset('img/insert slug.png')}}" class="d-block w-50 img-thumbnail">
                        </div>
                        <div class="col align-self-start m-auto p-lg-2">
                            <h4 class="badge bg-primary text-wrap" style="width: 6rem;">Insert Slug Di Tinker</h4>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
      </div>
    </div>

    <div class="row align-items-md-stretch">
      <div class="col-md-6">
        <div class="h-100 p-5 text-white bg-dark rounded-3">
          <h2>Tentang Website</h2>
          <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nostrum architecto obcaecati fugiat, eligendi similique neque esse aspernatur corrupti ullam quam molestiae libero impedit nulla veniam minima debitis odit laudantium rerum!</p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="h-100 p-5 bg-light border rounded-3">
          <h2>Design Template</h2>
          <img src="{{asset('img/temlet.jpg')}}" alt="" class="img-thumbnail">
        </div>
      </div>
    </div>

    <!-- <footer class="pt-3 mt-4 text-muted border-top">
      &copy; 2021
    </footer> -->
  </div>
</main>
<section id="Projects" class="mt-5 mb-3">
      <div class="container">
        <div class="row text-center mb-5 mt-5">
          <div class="col">
            <h2>My Projects</h2>
          </div>
        </div>
        <div class="row mt-3">
          <div class="col-md-6">
            <div class="card">
              <h3 class="text-center mb-3 mt-3 p-1">Materiallize Fremwork css</h3>
              <img src="{{asset('img/company.png')}}" class="w-full" alt="Projects1"/>
              <div class="card-body">
                <p class="mt-2 mb-2 p-2">ipsum dolor sit amet consectetur adipisicing elit. Totam veniam libero aliquid asperiores eius mollitia soluta maiores tenetur, doloremque nam.</p>
                <a href="https://akramulfata10.github.io/CompanyProfile/" class="text-decoration-none btn btn-primary">Kunjungi Halaman...</a>
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-5">
            <div class="card">
              <h3 class="text-center mb-3 mt-3 p-1">Tailwind Fremwork css</h3>
              <img src="{{asset('img/tailwindcss.png')}}" class="w-full" alt="Projects1"/>
              <div class="card-body">
              <p class="mt-2 mb-2 p-2">ipsum dolor sit amet consectetur adipisicing elit. Totam veniam libero aliquid asperiores eius mollitia soluta maiores tenetur, doloremque nam.</p>
                <a href=" https://akramulfata10.github.io/Portfolio-Tailwind-Css/" class="text-decoration-none btn btn-primary">Kunjungi Halaman...</a>
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-5">
            <div class="card">
              <h3 class="text-center mb-3 mt-3 p-1">Betulnut Website Projek</h3>
              <img src="{{asset('img/betelnutwebsite.png')}}" class="w-full" alt="Projects1"/>
              <div class="card-body">
              <p class="mt-2 mb-2 p-2">ipsum dolor sit amet consectetur adipisicing elit. Totam veniam libero aliquid asperiores eius mollitia soluta maiores tenetur, doloremque nam.</p>
                <a href="https://akramulfata10.github.io/projek/" class="text-decoration-none btn btn-primary">Kunjungi Halaman...</a>
              </div>
            </div>
          </div>
          <div class="col-md-6 mt-5">
            <div class="card">
              <h3 class="text-center mb-3 mt-3 p-1">Bootstrap Sederhana</h3>
              <img src="{{asset('img/bootstrap.png')}}" class="w-full" alt="Projects1"/>
              <div class="card-body">
              <p class="mt-2 mb-2 p-2">ipsum dolor sit amet consectetur adipisicing elit. Totam veniam libero aliquid asperiores eius mollitia soluta maiores tenetur, doloremque nam.</p>
                <a href="https://akramulfata10.github.io/akramulfata10/" class="text-decoration-none btn btn-primary">Kunjungi Halaman...</a>
              </div>
            </div>
          </div>
        </div>
      </div>
</section>
@endsection

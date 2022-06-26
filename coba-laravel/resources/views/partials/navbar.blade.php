<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <div class="container">
    <a class="navbar-brand" href="/">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'home') ? 'active': '' }}" href="/">Home</a>
        </li>
        <!-- <li class="nav-item">
          <a class="nav-link {{ ($active === 'portfolio') ? 'active': '' }}" href="/portfolio">Belajar Website</a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'about') ? 'active': '' }}" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'posts') ? 'active': '' }}" href="/posts">Posts</a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ ($active === 'categories') ? 'active': '' }}" href="/categories">Categories</a>
        </li>
        <ul class="navbar-nav">
        @auth
            <!-- kalau sudah login tampilkan menu logout dan user yang sedang login -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Welcome Back, {{ auth()->user()->name }}
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-file-earmark-minus"></i> My Dashboard</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                  <form action="/logout" method="POST">
                    @csrf
                    <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-right"></i> Logout</button>
                  </form>
                </li>
              </ul>
            </li>
          @else
             <!-- kalau belum login tampilkan menu login  -->
            <li class="nav-item">
              <a class="nav-link {{ ($active === 'login') ? 'active': '' }}" href="/login"><i class="bi bi-box-arrow-in-right"> Login</i></a>
            </li>
          @endauth
        </ul>
      </ul>
    </div>
  </div>
</nav>

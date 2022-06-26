<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link  {{ Request::is('dashboard') ? 'active' : ''}} " aria-current="page" href="/dashboard">
            <i data-feather="home"></i>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard/posts*') ? 'active' : ''}} " href="/dashboard/posts">
              <i data-feather="file-text"></i>
              My Post
            </a>
          </li>
        </ul>


        @can('admin')
        <h6 class="sedebar-heading d-flex justify-content-between align-items-center mb-1 px-2 mt-3">
          <span>Administrator</span>
        </h6>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link {{ Request::is('dashboard/categories*') ? 'active' : ''}} " href="/dashboard/categories">
              <i data-feather="grid"></i>
              Post Categories
            </a>
          </li>
        </ul>
        @endcan
      </div>
    </nav>

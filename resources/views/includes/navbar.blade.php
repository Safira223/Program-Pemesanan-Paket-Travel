<!-- navbar -->
<div class="container">
     <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <a href="#" class="navbar-brand">
                <img src="{{ url('frontend/images/logo_nomads.png') }}" alt="Logo">
            </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mr-3">
              <li class="nav-item mx-md-2">
                <a href="{{ route('home') }}" class="nav-link active">Home</a>
              </li>
              <li class="nav-item mx-md-2">
                <a href="#" class="nav-link">Paket Travel</a>
              </li>
              <li class="nav-item dropdown mx-md-2">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Service
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a href="#" class="dropdown-item">Link</a></li>
                  <li><a href="#" class="dropdown-item">Link</a></li>
                  <li><a href="#" class="dropdown-item">Link</a></li>
                </ul>
              </li>
              <li class="nav-item mx-md-2">
                <a href="#" class="nav-link">Testimonial</a>
              </li>
            </ul>

            @guest()

            <!-- mobile button -->
            <form class="form-inline d-sm-block d-md-none">
              <button class="btn btn-login my-2 my-sm-0 mx-md-2" type="button" onclick="event.preventDefault(); location.href='{{ url('login') }}';">
                  Login
              </button>
            </form>

            <!-- desktop button -->
            <form class="form-inline my-2 my-lg-0 d-none k d-md-block">
              <button class="btn btn-login btn-navbar-right my-2 my-sm-0.px-4 mx-md-2" type="button" onclick="event.preventDefault(); location.href='{{ url('login') }}';">
                  Login
              </button>
            </form>

            @endguest

            @auth()

            <!-- mobile button -->
            <form class="form-inline d-sm-block d-md-none" action="{{ url('logout') }}" method="POST">
                @csrf
              <button class="btn btn-login my-2 my-sm-0 mx-md-2" type="submit">
                  Logout
              </button>
            </form>

            <!-- desktop button -->
            <form class="form-inline my-2 my-lg-0 d-none k d-md-block" action="{{ url('logout') }}" method="POST">
                @csrf
              <button class="btn btn-login btn-navbar-right my-2 my-sm-0.px-4 mx-md-2" type="submit">
                  Logout
              </button>
            </form>

            @endauth

          </div>
      </nav>
</div>
<nav class="navbar sticky-top navbar-dark bg-dark fixed-top" >
  <div class="container-fluid">
    <a class="navbar-brand" href="home.do">Home</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Menu
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="croplist.do">List Active Crops</a></li>
            <li><a class="dropdown-item" href="routetofind.do">Find Crop By Id</a></li>
            <li><a class="dropdown-item" href="addplant.do">Add Plant To Crop</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex" role="search" action="search.do" method="GET">
        <input class="form-control me-2" type="text" name="search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

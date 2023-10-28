<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultas</title>

    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/Styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</head>

<body class="sb-nav-fixed">
    <div class="form">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="#">Turismo</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                <li>
                    <hr class="dropdown-divider" />
                </li>
                <li><a class="dropdown-item" href="./admin.php">Regresar</a></li>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePagos" aria-expanded="false" aria-controls="collapsePagos">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Fun De Solicitudes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePagos" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="../views/solicitudTur.php">Listado</a>
                                    <a class="nav-link" href="../views/Actualizar.php">Actualizar</a>
                                    <a class="nav-link" href="../views/buscarSoli.php">Buscar</a>
                                    <a class="nav-link" href="../views/estadoTrue.php">Estado Activo</a>
                                    <a class="nav-link" href="../views/estadoNull.php">Estado Inactivo</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>

        <div class="Actualizar">
            <h1 class="title">Buscar Solicitudes</h1>
            <div>
                <h2>Buscar por ID</h2>
                <label form="idBuscar">ID a buscar:</label>
                <input type="text" id="idBuscar">
                <button type="button" id="botonBuscar">Buscar</button>
            </div>
            <div id="resultadoBusqueda">

            </div>

        </div>


        <script src="../js/script.js"></script>
</body>

</html>
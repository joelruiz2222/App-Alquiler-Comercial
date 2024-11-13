<%-- 
    Document   : principal
    Created on : 8 nov. 2024, 04:17:28
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">

    <title>J.A.P | Alquiler Comercial</title>
    <link rel="icon" href="/images/LOGO.png">
    <style>
        .til {
            height: 100px;
            margin-top: 100px;
            text-align: center;
        }
        
        /* Navbar styling */
        .navbar-custom {
            background-color: #333;
        }

        .navbar-brand img {
            height: 60px;
            width: auto;
        }

        .carousel-logo {
            position: absolute;
            top: 100px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 10;
            height: 200px; /* Adjust height as needed */
        }

        
        
    </style>
</head>
<body>
    

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
        <div class="container">
            <a class="navbar-brand mx-auto" href="#">
                <img src="images/LOGO.png" alt="Logo"> <!-- Logo image -->
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Inicio de Sesión</a> 
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    

    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
            <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/IMAGEN.webp" class="d-block w-100" alt="...">
                <img src="images/LOGO2.png" class="carousel-logo" alt="Logo">
                <div class="carousel-caption d-none d-md-block">
                    <h2>ENCUENTRA TU COMERCIO IDEAL</h2>
                    <p>Alquileres de comercios</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/si.png" class="d-block w-100" alt="...">
                <img src="images/LOGO2.png" class="carousel-logo" alt="Logo">
                <div class="carousel-caption d-none d-md-block">
                    <h2>ENCUENTRA TU COMERCIO IDEAL</h2>
                    <p>Alquileres de comercios</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/co.png" class="d-block w-100" alt="...">
                <img src="images/LOGO2.png" class="carousel-logo" alt="Logo">
                <div class="carousel-caption d-none d-md-block">
                    <h2>ENCUENTRA TU COMERCIO IDEAL</h2>
                    <p>Alquileres de comercios</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </button>
    </div>

    <h1 class="til">COMERCIOS PARA ALQUILAR</h1>

    <div class="row row-cols-1 row-cols-md-3">
        <div class="col mb-4">
            <div class="card">
                <img src="images/comercio1.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">DEPARTAMENTO COMPLEJO ARENALES</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva Ahora</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="images/comercio2.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">DEPARTAMENTE J.A.P</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva Ahora</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="images/DEPA.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">DEPARTAMENTO LK</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva Ahora</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="images/ALBAÑIL.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">LOTE PABLITO ALBAÑIL</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva Ahora</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="images/lote.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">LOTE BARRIO A LA PAR DE RUIZ</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva Ahora</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card">
                <img src="images/barrio de ratas.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">TERRENO BARRIO (puede que tenga ratas)</h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <a href="login.jsp" class="btn btn-primary">Reserva  Ahorar</a>
                </div>
            </div>
        </div>
    </div>

    <script src="js/jquery-3.7.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/fontawesome.js"></script>
</body>
</html>

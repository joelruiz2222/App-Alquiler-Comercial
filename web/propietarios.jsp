<%-- 
    Document   : propietarios
    Created on : 12 nov. 2024, 20:13:26
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

      
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .til {
                height: 100px;
                margin-top: 100px;
                text-align: center;
            }

            
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
                height: 200px;
            }
        </style>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
            <div class="container">
                <a class="navbar-brand mx-auto" href="#">
                    <img src="images/LOGO.png" alt="Logo"> 
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarContent">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <form action="Historialpagos" method="get">

                                <button type="submit" class="btn btn-primary">Historial De Pagos</button>
                                
                            </form>

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
        <div class="container mt-5">
            <div class="modal fade" id="createOwnerModal" tabindex="-1" aria-labelledby="createOwnerModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="createOwnerModalLabel">Pago del comercio</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="ownerForm" action="Historialpagos" method="post">
                                <div class="mb-3">
                                    <label for="ownerTarjeta" class="form-label">Monto</label>
                                    <input type="text" class="form-control" name="monto" required>
                                </div>
                                <div class="mb-3">
                                    <label for="ownercodigo" class="form-label">Fecha pago</label>
                                    <input type="date" class="form-control" name="fecha" required>
                                </div>
                                <div class="mb-3">
                                    <label for="newsStatus" class="form-label">Tipo pago</label>
                                    <select class="form-control" name="tipo_pago" required>
                                        <option value="Pago Mensual">Pagar Mes</option>
                                        <option value="Adelanto">Adelanto</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Pagar</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

            <div class="row row-cols-1 row-cols-md-3">
                <div class="col mb-4">
                    <div class="card">
                        <img src="images/comercio1.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">DEPARTAMENTO COMPLEJO ARENALES</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="images/comercio2.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">DEPARTAMENTO J.A.P</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="images/DEPA.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">DEPARTAMENTO LK</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="images/ALBAÑIL.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">LOTE PABLITO ALBAÑIL</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                <div class="card">
                        <img src="images/lote.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">LOTE BARRIO A LA PAR DE RUIZ</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
                <div class="col mb-4">
                    <div class="card">
                        <img src="images/barrio de ratas.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">TERRENO BARRIO (puede que tenga ratas)</h5>
                            <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Reserva Ahora</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.7.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/fontawesome.js"></script>
    </body>
</html>

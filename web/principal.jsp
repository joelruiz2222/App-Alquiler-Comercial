<%-- 
    Document   : principal
    Created on : 8 nov. 2024, 04:17:28
    Author     : Joel
--%>

<%@page import="ar.com.terciario.n6030.model.entity.Locales"%>
<%@page import="java.util.List"%>
<%@page import="ar.com.terciario.n6030.model.service.impl.localImple"%>
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
            h2{
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 2);

            }
            .color{
                text-shadow: 2px 2px 4px rgba(0, 0, 0, 1);
            }

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
                        <p class="color">Alquileres de comercios</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/si.png" class="d-block w-100" alt="...">
                    <img src="images/LOGO2.png" class="carousel-logo" alt="Logo">
                    <div class="carousel-caption d-none d-md-block">
                        <h2>ENCUENTRA TU COMERCIO IDEAL</h2>
                        <p class="color">Alquileres de comercios</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/co.png" class="d-block w-100" alt="...">
                    <img src="images/LOGO2.png" class="carousel-logo" alt="Logo">
                    <div class="carousel-caption d-none d-md-block">
                        <h2>ENCUENTRA TU COMERCIO IDEAL</h2>
                        <p class="color">Alquileres de comercios</p>
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

        <div class="container">
    <h1 class="my-4">COMERCIOS PARA ALQUILAR</h1>
    <div class="row">
        <%
            
            localImple loccc = new localImple();
            
            List<Locales> listaLocales = loccc.ListaLocales();

            if (listaLocales != null && !listaLocales.isEmpty()) {
                for (Locales l : listaLocales) {
        %>
        <div class="col-md-4">
            <div class="card local-card">
                <img class="card-img-top local-image" src="/MostrarImagen?id=<%= l.getId()%>" width="200" height="180" alt="imagen">
                <div class="card-body">
                    <h5 class="card-title">Local :)</h5>
                    <p class="card-text">Superficie: <%= l.getSuperficie()%> m²</p>
                    <p class="card-text">Costo Por Mes: <%= l.getCosto_mes()%> $</p>
                    <p class="card-text">Estado: <%= l.isHabilitado() ? "Habilitado" : "Inhabilitado"%></p>
                    <p class="card-text">Condición: <%= l.isAlquilado() ? "Alquilado" : "Sin Alquilar"%></p>
                    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Alquilar Ahora</button>
                </div>
            </div>
        </div>
        <%
                }
            } else {
        %>
            <div class="col-12">
                <p>No hay locales disponibles en este momento.</p>
            </div>
        <%
            }
        %>
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

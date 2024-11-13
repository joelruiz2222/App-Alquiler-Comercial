<%-- 
    Document   : dueño
    Created on : 12 nov. 2024, 20:14:45
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link type = "text/css" rel="stylesheet" href="css/bootstrap.min.css" >
        <title>Dueño</title>

        <style>

            body{
                background: #f5f5f5
            }
            .rounded{
                border-radius: 1rem
            }
            .nav-pills .nav-link{
                color: #555
            }
            .nav-pills .nav-link.active{
                color: white
            }
            input[type="radio"]{
                margin-right: 5px
            }
            .bold{
                font-weight:bold
            }


        </style>

    </head>

    <body>

        <div class="container py-5">

            <div class="row mb-4">
                <div class="col-lg-8 mx-auto text-center">
                    <h1 class="">Vision General Del Sistema</h1>
                </div>
            </div> 
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <div class="card ">
                        <div class="card-header">
                            <div class="bg-white shadow-sm pt-4 pl-2 pr-2 pb-2">

                                <ul role="tablist" class="nav bg-light nav-pills rounded nav-fill mb-3">

                                    <li class="nav-item"><a  href="usuario.jsp" class="nav-link active "> <i class=""></i> Usuarios </a> </li> 
                                    <li class="nav-item"> <a  href="" class="nav-link "> <i class=""></i> Locales </a> </li>
                                    <li class="nav-item"> <a  href="" class="nav-link "> <i class=" "></i> Pagos </a> </li>
                                    <li class="nav-item"> <a href="" class="nav-link "> <i class=""></i> Novedades </a> </li>

                                </ul>
                            </div>
                        </div>
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

<%-- 
    Document   : usuario
    Created on : 13 nov. 2024, 11:29:58
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link type = "text/css" rel="stylesheet" href="css/bootstrap.min.css" >
        <title>Usuarios</title>

        <style>

            .card{

                width: 400px;
                border:none;
                border-style: outset;
                border-color: gray;

            }


            .btr{

                border-top-right-radius: 5px !important;
            }


            .btl{

                border-top-left-radius: 5px !important;
            }

            .btn-dark {
                color: #fff;
                background-color: #0d6efd;
                border-color: #0d6efd;
            }


            .btn-dark:hover {
                color: #fff;
                background-color: #0d6efd;
                border-color: #0d6efd;
            }


            .nav-pills{

                display:table !important;
                width:100%;
            }

            .nav-pills .nav-link {
                border-radius: 0px;
                border-bottom: 1px solid #0d6efd40;

            }

            .nav-item{
                display: table-cell;
                background: #0d6efd2e;
            }


            .form{

                padding: 10px;
                height: 300px;
            }

            .form input{

                margin-bottom: 12px;
                border-radius: 3px;
            }


            .form input:focus{

                box-shadow: none;
            }


            .form button{

                margin-top: 20px;
            }



        </style>

    </head>

    <body>


        <div class="d-flex justify-content-center align-items-center mt-5">


            <div class="card">

                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                    <li class="nav-item text-center">
                        <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#crearUsuario" role="tab" aria-controls="pills-profile" aria-selected="false">Crear</a>
                    </li>

                    <li class="nav-item text-center">
                        <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#eliminarUsuario" role="tab" aria-controls="pills-profile" aria-selected="false">Eliminar</a>
                    </li>

                    <li class="nav-item text-center">
                        <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#buscarUsuario" role="tab" aria-controls="pills-profile" aria-selected="false">Buscar</a>
                    </li>

                    <li class="nav-item text-center">
                        <a class="nav-link btr" id="pills-profile-tab" data-toggle="pill" href="#modificarUsuario" role="tab" aria-controls="pills-profile" aria-selected="false">Modificar</a>
                    </li>

                </ul>

                <div class="tab-content" id="pills-tabContent">


                    <div class="tab-pane fade" id="crearUsuario" role="tabpanel" aria-labelledby="pills-profile-tab">

                        <div class="form px-4">

                            <form action="AltaUsuario" method="post">

                                <div>

                                    <div "> 

                                        <input class="form-control" type="email" name="email" placeholder="Ingrese un Email/Ej:hola22@gmail.com"> 
                                    </div> 
                                    <div class="form-group"> 

                                        <div "> 
                                            <input class="form-control" type="text" name="usu" placeholder="Nombre de Usuario"> 
                                        </div> 
                                    </div> 
                                    <div> 

                                        <div> 
                                            <input class="form-control" type="password" name="contraseña" placeholder="Contraseña"> 
                                        </div> 
                                    </div> 

                                    <div>
                                        <select id="estado" name="estado" required>  
                                            <option value="" disabled selected>Selecciona un estado</option> 
                                            <option value="true">Activo (1)</option> 
                                            <option value="false">Inactivo (0)</option> 
                                        </select>
                                    </div>

                                    <div>
                                            <select name="perfi" required> 
                                            <option value="" disabled selected>Selecciona un Perfil</option> 
                                            <option value="propietario">Propietario</option> 
                                            <option value="administrador">Administrador</option> 
                                        </select>
                                    </div>

                                    <button type="submit" class="btn btn-dark btn-block">Confirmar</button>

                                </div>

                            </form>

                        </div>
                    </div>



                    <div class="tab-pane fade" id="eliminarUsuario" role="tabpanel" aria-labelledby="pills-profile-tab">


                        <div class="form px-4">

                            <form action="" >

                                <div>

                                    <div class="form-group"> 
                                        <label >Ingresa el Usuario a Eliminar</label> 
                                        <div class="input-group"> 
                                            <input class="form-control" type="text" name="usu" placeholder="Nombre de Usuario"> 
                                        </div> 
                                    </div> 

                                    <button type="submit" class="btn btn-dark btn-block">Eliminar</button>

                                </div>

                            </form>

                        </div>
                    </div>

                    <div class="tab-pane fade" id="buscarUsuario" role="tabpanel" aria-labelledby="pills-profile-tab">


                        <div class="form px-4">

                            <form action="" >

                                <div>

                                    <div class="form-group"> 
                                        <label >Ingresa el Usuario a Buscar</label> 
                                        <div class="input-group"> 
                                            <input class="form-control" type="text" name="usu" placeholder="Nombre de Usuario"> 
                                        </div> 
                                    </div> 

                                    <button type="submit" class="btn btn-dark btn-block">Buscar</button>

                                </div>

                            </form>

                        </div>
                    </div>

                    <div class="tab-pane fade" id="modificarUsuario" role="tabpanel" aria-labelledby="pills-profile-tab">


                        <div class="form px-4">

                            <form action="" >

                                <div>

                                    <div class="form-group"> 
                                        <label >Ingresa el Usuario a Modificar</label> 
                                        <div class="input-group"> 
                                            <input class="form-control" type="text" name="usu" placeholder="Nombre de Usuario"> 
                                        </div> 
                                    </div> 

                                    <button type="submit" class="btn btn-dark btn-block">Modificar</button>

                                </div>

                            </form>

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

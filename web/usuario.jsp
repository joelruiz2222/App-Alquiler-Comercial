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
    </head>

    <body>

        <form action="AltaUsuario" method="post">
            <div class="form-group"> 
                <label for="username">Email</label> 
                <input type="text" id="username" name="email" placeholder="Ingrese un Email/Ej:hola22@gmail.com" required class="form-control"> 
            </div> 
            <div class="form-group"> 
                <label for="usuario">Usuario</label> 
                <div class="input-group"> 
                    <input type="text" id="usuario" name="usu" placeholder="Nombre de Usuario" class="form-control" required> 
                </div> 
            </div> 
            <div class="form-group"> 
                <label for="contraseña">Contraseña</label> 
                <div class="input-group"> 
                    <input type="password" id="password" name="password" placeholder="Contraseña" class="form-control" required> 
                </div> 
            </div> 

            <div class="form-group">
                <select id="estado" name="estado" required>  
                    <option value="" disabled selected>Selecciona un estado</option> 
                    <option value=true>Activo (1)</option> 
                    <option value=false>Inactivo (0)</option> 
                </select>
            </div>

            <div class="form-group">
                <select id="tipoCargo" name="perfi" required> 
                    <option value="" disabled selected>Selecciona un Perfil</option> 
                    <option value="propietario">Propietario</option> 
                    <option value="administrador">Administrador</option> 
                </select>
            </div>

            <button type="submit" class=""> Confirmar</button>

        </form>

            <div id="paypal" class="tab-pane fade pt-3">
                <h6 class="pb-2">Select your paypal account type</h6>
                <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked> Domestic </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5">International </label></div>
                <p> <button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Log into my Paypal</button> </p>
                <p class="text-muted"> Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
            </div> <!-- End -->
            <!-- bank transfer info -->
            <div id="net-banking" class="tab-pane fade pt-3">
                <div class="form-group "> <label>
                        Select your Bank
                    </label> <select class="form-control" id="ccmonth">
                        <option value="" selected disabled>--Please select your Bank--</option>
                        <option>Bank 1</option>
                        <option>Bank 2</option>
                        <option>Bank 3</option>
                        <option>Bank 4</option>
                        <option>Bank 5</option>
                        <option>Bank 6</option>
                        <option>Bank 7</option>
                        <option>Bank 8</option>
                        <option>Bank 9</option>
                        <option>Bank 10</option>
                    </select> </div>
                <div class="form-group">
                    <p> <button type="button" class="btn btn-primary "><i class="fas fa-mobile-alt mr-2"></i> Proceed Payment</button> </p>
                </div>
                <p class="text-muted">Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
            </div> 
           


            <script src="js/jquery-3.7.1.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/fontawesome.js"></script>

    </body>
</html>

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
        <title>JSP Page</title>
    </head>
    <body>
                            <!-- Credit card form content -->
                            <div class="tab-content">
                                <!-- credit card info-->
                                <form action="AltaUsuario" method="post">
                                    
                                <div id="credit-card" class="tab-pane fade show active pt-3">
                                    <form role="form" onsubmit="event.preventDefault()">
                                        <div class="form-group"> <label for="username">
                                                <h6>Email</h6>
                                            </label> <input type="text" name="username" placeholder="Ingrese un Email/Ej:hola22@gmail.com" required class="form-control "> </div>
                                            
                                        <div class="form-group"> <label for="cardNumber">
                                                <h6>Usuario</h6>
                                            </label>
                                            <div class="input-group"> <input type="text" name="cardNumber" placeholder="Nombre de Usuario" class="form-control " required>
                                            </div>
                                        </div>
                                        
                                          <div class="form-group"> <label for="cardNumber">
                                                <h6>Contraseña</h6>
                                            </label>
                                            <div class="input-group"> <input type="text" name="cardNumber" placeholder="Contraseña" class="form-control " required>
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
                                        
                                        <div class="row">
                                           
                                        <div class="card-footer"> <button type="button" class="subscribe btn btn-primary btn-block shadow-sm"> Confirmar</button>
                                    </form>
                                </div>
                            </div> 
                                        </form> <!-- End -->
                            <!-- Paypal info -->
                            <div id="paypal" class="tab-pane fade pt-3">
                                <h6 class="pb-2">Select your paypal account type</h6>
                                <div class="form-group "> <label class="radio-inline"> <input type="radio" name="optradio" checked> Domestic </label> <label class="radio-inline"> <input type="radio" name="optradio" class="ml-5">International </label></div>
                                <p> <button type="button" class="btn btn-primary "><i class="fab fa-paypal mr-2"></i> Log into my Paypal</button> </p>
                                <p class="text-muted"> Note: After clicking on the button, you will be directed to a secure gateway for payment. After completing the payment process, you will be redirected back to the website to view details of your order. </p>
                            </div> <!-- End -->
                            <!-- bank transfer info -->
                            <div id="net-banking" class="tab-pane fade pt-3">
                                <div class="form-group "> <label for="Select Your Bank">
                                        <h6>Select your Bank</h6>
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
                            </div> <!-- End -->
                            <!-- End -->
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

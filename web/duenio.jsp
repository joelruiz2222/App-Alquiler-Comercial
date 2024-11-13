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
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            .form-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .button-group {
                display: flex;
                gap: 10px; /* Separación entre botones */
            }
        </style>

    </head>

    <body>
        <div class="form-container">
            <form action="AltaUsuario" method="post">
                <div class="section text-center">
                    <h3>Ceo De App :)</h3>
                    <h5>Crear Usuario</h5>

                    <div class="form-group">
                        <input type="email" name="email" placeholder="Tu Email">
                    </div>
                    <div class="form-group">
                        <i class="input-icon fas fa-regular fa-user"></i>
                        <input type="text" name="usu" placeholder="Tu Usuario">
                    </div>
                    <div class="form-group">
                        <i class="fas fa-solid fa-lock"></i>
                        <input type="password" name="contraseña" placeholder="Tu Contraseña">
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
                    <div class="button-group">
                        
                        <button type="submit" class="btn btn-dark">Confirmar</button>

                    </div>
                </div>
            </form>
        </div>

        <script src="js/jquery-3.7.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/fontawesome.js"></script>
    </body>

</html>

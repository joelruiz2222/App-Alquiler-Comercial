<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <title>Usuarios</title>
        <style>
            .btn-custom {
    color: #0d6efd;
    background-color: transparent;
    border: none;
    border-bottom: 1px solid #0d6efd40;
    border-radius: 0px;
    display: block;
    width: 100%;
    text-align: center;
    padding: 0.5rem 1rem;
}

.btn-custom:hover {
    color: #0d6efd;
    background-color: #0d6efd2e;
    border-color: #0d6efd40;
}

.center-content {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

            .card {
                width: 400px;
                border: none;
                border-style: outset;
                border-color: gray;
            }
            .btr {
                border-top-right-radius: 5px !important;
            }
            .btl {
                border-top-left-radius: 5px !important;
            }
            .nav-pills {
                display: table !important;
                width: 100%;
            }
            .nav-pills .nav-link {
                border-radius: 0px;
                border-bottom: 1px solid #0d6efd40;
            }
            .nav-item {
                display: table-cell;
                background: #0d6efd2e;
            }
            .form {
                padding: 10px;
                height: 300px;
            }
            .form input {
                margin-bottom: 12px;
                border-radius: 3px;
            }
            .form input:focus {
                box-shadow: none;
            }
            .form button {
                margin-top: 20px;
            }
            .btn-custom {
                color: #0d6efd;
                background-color: transparent;
                border: none;
                border-bottom: 1px solid #0d6efd40;
                border-radius: 0px;
                display: block;
                width: 100%;
                text-align: center;
                padding: 0.5rem 1rem;
            }
            .btn-custom:hover {
                color: #0d6efd;
                background-color: #0d6efd2e;
                border-color: #0d6efd40;
            }
            .center-content {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
        </style>
    </head>
    <body>
        <div class="center-content">
            <div class="card">
                <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item text-center">
                        <a class="nav-link btr btn-custom" id="pills-profile-tab" data-toggle="pill" href="#crearUsuario" role="tab" aria-controls="pills-profile" aria-selected="false">Crear</a>
                    </li>
                    <li class="nav-item text-center">
                        <form action="AltaUsuario" method="get">
                            
                           <button type="submit" class="btn-custom">Lista</button>

                        </form>
                    </li>
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade" id="crearUsuario" role="tabpanel" aria-labelledby="pills-profile-tab">
                        <div class="form px-4">
                            
                            <form action="AltaUsuario" method="post">
                                <div>
                                    <div>
                                        <input class="form-control" type="email" name="email" placeholder="Ingrese un Email/Ej:hola22@gmail.com">
                                    </div>
                                    <div class="form-group">
                                        <div>
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
                                            <option value="Activo">Activo (1)</option>
                                            <option value="Inactivo">Inactivo (0)</option>
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
                </div>
            </div>
        </div>
        <script src="js/jquery-3.7.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/fontawesome.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

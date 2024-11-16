<%-- 
    Document   : administradores
    Created on : 12 nov. 2024, 20:13:38
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Panel Administrativo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">

            <h1 class="text-center">Panel Administrativo</h1>
            <p class="text-center">Gestiónde propetarios y novedades</p>


            <div class="card my-4">
                <div class="card-header">
                    <h2>Gestión de Propietarios</h2>
                </div>
                <div class="card-body">
                    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createOwnerModal">Agregar Propietario</button>


                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Apellido</th>
                                <th>Nombres</th>
                                <th>Email</th>
                                <th>Teléfono</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="ownerTableBody">

                        </tbody>
                    </table>
                </div>
            </div>


            <div class="modal fade" id="createOwnerModal" tabindex="-1" aria-labelledby="createOwnerModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="createOwnerModalLabel">Agregar/Editar Propietario</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form id="ownerForm">
                                <div class="mb-3">
                                    <label for="ownerLastName" class="form-label">Apellido</label>
                                    <input type="text" class="form-control" id="ownerLastName" required>
                                </div>
                                <div class="mb-3">
                                    <label for="ownerFirstName" class="form-label">Nombres</label>
                                    <input type="text" class="form-control" id="ownerFirstName" required>
                                </div>
                                <div class="mb-3">
                                    <label for="ownerEmail" class="form-label">Email</label>
                                    <input type="email" class="form-control" id="ownerEmail" required>
                                </div>
                                <div class="mb-3">
                                    <label for="ownerPhone" class="form-label">Teléfono</label>
                                    <input type="text" class="form-control" id="ownerPhone" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


            <div class="card my-4">
                <div class="card-header">
                    <h2>Gestión de Novedades</h2>
                </div>
                <div class="card-body">
                    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#createNewsModal">Agregar Novedad</button>


                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Texto</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody id="newsTableBody">

                        </tbody>
                    </table>
                </div>
            </div>


            <div class="modal fade" id="createNewsModal" tabindex="-1" aria-labelledby="createNewsModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="createNewsModalLabel">Agregar/Editar Novedad</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>


                        <div class="modal-body">
                            <form id="newsForm">
                                <div class="mb-3">
                                    <label for="newsText" class="form-label">Texto</label>
                                    <textarea class="form-control" id="newsText" required></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="newsStatus" class="form-label">Estado</label>
                                    <select class="form-control" id="newsStatus" required>
                                        <option value="pendiente">Pendiente</option>
                                        <option value="procesado">Procesado</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>

<%@ page import="java.util.List" %>
<%@ page import="ar.com.terciario.n6030.model.entity.Novedades" %>
<%@ page import="ar.com.terciario.n6030.model.entity.Usuario" %>
<%@ page import="ar.com.terciario.n6030.model.entity.Alquiler" %>
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
            <p class="text-center">Gestión de propietarios y novedades</p>
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
                        <tbody>
                            <%
                                List<Novedades> novedades = (List<Novedades>) request.getAttribute("novedades");
                                if (novedades != null) {
                                    for (Novedades novedad : novedades) {
                            %>
                            <tr>
                                <td><%= novedad.getUsuario().getUsuario() %></td>
                                <td><%= novedad.getTexto() %></td>
                                <td><%= novedad.getEstado() %></td>
                                <td>
                                    <form action="BajaNovedadServlet" method="post">
                                        <input type="hidden" name="id" value="<%= novedad.getId() %>">
                                        <button type="submit" class="btn btn-danger">Eliminar</button>
                                    </form>
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
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
                            <form id="newsForm" action="NovedadesServlet" method="post">
                                <div class="mb-3">
                                    <label for="newsText" class="form-label">Texto</label>
                                    <textarea class="form-control" id="newsText" name="texto" required></textarea>
                                </div>
                                <div class="mb-3">
                                    <label for="newsStatus" class="form-label">Estado</label>
                                    <select class="form-control" id="newsStatus" name="estado" required>
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

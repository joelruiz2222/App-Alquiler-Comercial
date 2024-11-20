<%@ page import="java.util.List" %>
<%@ page import="ar.com.terciario.n6030.model.entity.Usuario" %>
<%@ page import="ar.com.terciario.n6030.model.service.impl.usuarioImple" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Panel Administrativo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h1 class="text-center">LISTA DE USUARIOS</h1>
            <p class="text-center">Gestión de eliminación de usuarios</p>
            <div class="card my-4">
                <div class="card-header">
                    <h2>DATOS DE USUARIOS</h2>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Usuario</th>
                                <th>Contraseña</th>
                                <th>Estado</th>
                                <th>Perfil</th>                              
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                usuarioImple usu = new usuarioImple();
                                List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("alu");
                                for (Usuario usuario : listaUsuarios) {
                            %>
                            <tr>
                                <td><%= usuario.getId()%></td>
                                <td><%= usuario.getEmail()%></td>
                                <td><%= usuario.getUsuario()%></td>
                                <td><%= usuario.getPassword()%></td>
                                <td><%= usuario.getActivo()%></td>
                                <td><%= usuario.getPerfil()%></td>
                                <td>

                                    <form action="BajaUsuario" method="post">
                                        <input type="hidden" name="id" value="<%= usuario.getId()%>">
                                        <button type="submit" class="btn btn-danger">Eliminar</button>
                                    </form>

                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>

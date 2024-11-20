<%-- 
    Document   : hpago
    Created on : 14 nov. 2024, 20:15:34
    Author     : Pablo
--%>

<%@page import="ar.com.terciario.n6030.model.entity.Pago"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Historial de Pagos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <div class="container mt-5">
     <a class="nav-link" href="propietarios.jsp">Volver al inicio</a>
    <h1 class="text-center">Historial de Pagos</h1>
    <p class="text-center">Consulta todos tus pagos realizados</p>

    <table class="table table-striped mt-4">
      <thead class="table-dark">
        <tr>
          <th>ID Pago</th>
          <th>Monto</th>
          <th>Fecha</th>
          <th>Tipo de Pago</th>
          <th>Estado</th>
        </tr>
      </thead>
      
      <%List <Pago> p = (List) request.getSession().getAttribute("listap");%>
      
      <tbody>
          
<%for (Pago pa : p) { %>
    
          <tr>
            <td><%=pa.getId()%></td>
            <td><%=pa.getMonto()%></td>
            <td><%=pa.getFecha()%></td>
            <td><%=pa.getTipoPago()%></td>
            <td><%=pa.getEstadoPago()%></td>
          </tr>
          
          <%}%>
      
      </tbody>
    </table>
          
  </div>

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>


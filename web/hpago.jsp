<%-- 
    Document   : hpago
    Created on : 14 nov. 2024, 20:15:34
    Author     : Pablo
--%>

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
    
    <h1 class="text-center">Historial de Pagos</h1>
    <p class="text-center">Consulta de todos los pagos realizados</p>

   
    <table class="table table-striped mt-4">
      <thead class="table-dark">
        <tr>
          <th>ID Pago</th>
          <th>Fecha</th>
          <th>Monto</th>
          <th>Estado</th>
        </tr>
      </thead>
      <tbody>
       
        <tr>
          <td>1</td>
          <td>01/10/2024</td>
          <td>$15,000</td>
          <td>Completado</td>
        </tr>
        <tr>
          <td>2</td>
          <td>01/11/2024</td>
          <td>$15,000</td>
          <td>Pendiente</td>
        </tr>
        <tr>
          <td>3</td>
          <td>01/12/2024</td>
          <td>$15,000</td>
          <td>Completado</td>
        </tr>
      </tbody>
    </table>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>

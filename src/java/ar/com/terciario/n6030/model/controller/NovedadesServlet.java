package ar.com.terciario.n6030.controller;

import ar.com.terciario.n6030.model.entity.Novedades;
import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.repository.NovedadesJpaController;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//ESTO SE ENCUENTRA EN REVISION POR JOEL RUIZ/ ESTE SERVLET FUE HECHO POR PABLO :0

@WebServlet(name = "NovedadesServlet", urlPatterns = {"/NovedadesServlet"})
public class NovedadesServlet extends HttpServlet {

    private final EntityManagerFactory emf = Persistence.createEntityManagerFactory("YourPersistenceUnitName");
    private final NovedadesJpaController novedadesController = new NovedadesJpaController(emf);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Obtener los parámetros del formulario
            String texto = request.getParameter("texto");
            String estado = request.getParameter("estado");
            int userId = Integer.parseInt(request.getSession().getAttribute("userId").toString()); // Ejemplo de obtener el usuario logueado

            // Crear la novedad
            Usuario usuario = new Usuario(); // Instancia de usuario (puedes mejorar esto)
            usuario.setId(userId);           // Asignar ID del usuario

            Novedades novedad = new Novedades();
            novedad.setTexto(texto);
            novedad.setEstado(estado);
            novedad.setUsuario(usuario);

            // Guardar la novedad en la base de datos
            novedadesController.create(novedad);

            // Redirigir con éxito
            response.sendRedirect("novedades.jsp?success=true");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("novedades.jsp?error=true");
        }
    }
}

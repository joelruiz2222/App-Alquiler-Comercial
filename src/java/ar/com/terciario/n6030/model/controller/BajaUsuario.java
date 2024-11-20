package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.service.impl.usuarioImple;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "BajaUsuario", urlPatterns = {"/BajaUsuario"})
public class BajaUsuario extends HttpServlet {

    usuarioImple usu = new usuarioImple();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // No se usa en este caso
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt (request.getParameter("id"));
        
        usu.EliminarUsuario(id);
        
        response.sendRedirect("usuario.jsp");
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

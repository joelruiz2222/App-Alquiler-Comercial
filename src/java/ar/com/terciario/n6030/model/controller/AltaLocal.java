package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.entity.Locales;
import ar.com.terciario.n6030.model.service.impl.localImple;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "AltaLocal", urlPatterns = {"/AltaLocal"})
public class AltaLocal extends HttpServlet {

    localImple locc = new localImple();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Locales> Lista = locc.ListaLocales();

        HttpSession session = request.getSession();

        session.setAttribute("listaL", Lista);

        response.sendRedirect("principal.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Superficie = request.getParameter("superficie");

        String Estado = request.getParameter("estado");

        //boolean EstadoB = Boolean.parseBoolean(Estado);
        String costoMes = request.getParameter("costo");

        //double costoDou = Double.parseDouble(costoMes);
        String Condicion = request.getParameter("estadoR");

        //boolean CondicionB = Boolean.parseBoolean(Condicion);
        Part part = request.getPart("imagen");

        if (Superficie == null || Estado == null || costoMes == null || Condicion == null || part == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Todos los campos son obligatorios.");
            return;
        }

        boolean EstadoB = Boolean.parseBoolean(Estado.trim());
        double costoDou = Double.parseDouble(costoMes.trim());
        boolean CondicionB = Boolean.parseBoolean(Condicion.trim());

        byte[] imagenBytes = null;

        if (part != null) {

            imagenBytes = part.getInputStream().readAllBytes();

        }

        locc.CrearLocal(Superficie, EstadoB, costoDou, CondicionB, imagenBytes);

        response.sendRedirect("local.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.entity.Pago;
import ar.com.terciario.n6030.model.service.impl.pagoImple;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Historialpagos", urlPatterns = {"/Historialpagos"})
public class Historialpagos extends HttpServlet {

    pagoImple p = new pagoImple();
    
    private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("AlquilerComercialPU");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();

        List<Pago> ListaP = p.ListaPago();

        HttpSession session = request.getSession();
        
        session.setAttribute("listap", ListaP);
        
        response.sendRedirect("hpago.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = emf.createEntityManager();

            String monto = request.getParameter("monto");
            String fecha = request.getParameter("fecha");
            String tipoPago = request.getParameter("tipo_pago");
            
            double montoD = Double.parseDouble(monto);
            
            p.CrearPago(montoD, fecha, tipoPago, "Procesado");
            
            response.sendRedirect("propietarios.jsp");

    }
}


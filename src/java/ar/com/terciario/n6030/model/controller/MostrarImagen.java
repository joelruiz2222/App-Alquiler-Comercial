/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.service.impl.localImple;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Joel
 */
@WebServlet(name = "MostrarImagen", urlPatterns = {"/MostrarImagen"})
public class MostrarImagen extends HttpServlet {

 
     localImple locc = new localImple();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));

        byte[] imagenBytes = locc.obtenerImagenPorId(id);

        if (imagenBytes != null) {
            response.setContentType("image/jpeg");
            response.setContentLength(imagenBytes.length); 
            OutputStream outputStream = response.getOutputStream();
            outputStream.write(imagenBytes);
            outputStream.close();
        } else {
            
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Imagen no encontrada");

        }

        response.sendRedirect("principal.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

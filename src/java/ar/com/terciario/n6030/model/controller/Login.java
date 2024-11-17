
package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.service.impl.loginImple;
import ar.com.terciario.n6030.model.service.impl.usuarioImple;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    usuarioImple us = new usuarioImple();
    
    loginImple log = new loginImple();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //PROCESO DE LOGIN EN EL DO POST
        
        String usuario = request.getParameter("usu");
        
        String contraseña = request.getParameter("contra");
        
        Usuario u = log.BusquedaUs(usuario);
        
        if (u != null && log.PassDesec(contraseña, u.getPassword())) {
            
               HttpSession session = request.getSession(true);
                
               session.setAttribute("usuarioo", u.getEmail());
               
               response.sendRedirect("propietarios.jsp");
               
        }else{

response.getWriter().write("NO EXISTE EL USUARIO");
        
        }
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

package ar.com.terciario.n6030.model.controller;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.service.impl.usuarioImple;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "AltaUsuario", urlPatterns = {"/AltaUsuario"})
public class AltaUsuario extends HttpServlet {

    usuarioImple usu = new usuarioImple();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         List<Usuario> ListaUsu = usu.ListaUsuComple();
         
         HttpSession session = request.getSession();
         
         session.setAttribute("alu", ListaUsu);
         
         response.sendRedirect("duenio.jsp");
        
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String Email = request.getParameter("email");
        String Usuario = request.getParameter("usu");
        String Password = request.getParameter("contraseña");
        
        String SActivo = request.getParameter("estado");
        
        boolean BActivo = Boolean.parseBoolean(SActivo);
        
        String Perfil = request.getParameter("perfi");
        
        usu.CrearUsuario(Email, Usuario, Password, BActivo, Perfil);

        response.sendRedirect("duenio.jsp");
        
        /*
        int encontrado = 0;
        
        List<Usuario> ListaUsu = usu.ListaUsuComple();
        
        for (Usuario usu : ListaUsu) {
            
            if (usu.getUsuario().equalsIgnoreCase(Usuario)) {
                
                encontrado = 1;
                
                break;
                
            }
            
            if (encontrado==1) {
                
                response.getWriter().write("Usuario Ya Existente!!");
                
            } else {

                usu.CrearUsuario(Email, Usuario, Password, BActivo, Perfil);

                response.sendRedirect("duenio.jsp");

            }

        }*/

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

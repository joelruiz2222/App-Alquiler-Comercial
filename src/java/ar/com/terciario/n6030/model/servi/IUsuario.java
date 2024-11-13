package ar.com.terciario.n6030.model.servi;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.repository.UsuarioJpaController;
import java.util.List;


public interface IUsuario {
    
    UsuarioJpaController usu = new UsuarioJpaController();
    
     void CrearUsuario(String Email, String Usuario, String Contraseña, boolean Activo, String Perfil);
    
     List <Usuario> ListaUsuComple();
     
}

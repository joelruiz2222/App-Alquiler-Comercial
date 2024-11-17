package ar.com.terciario.n6030.model.servi;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.repository.UsuarioJpaController;

public interface ILogin {
    
    UsuarioJpaController usu = new UsuarioJpaController();
    
    String encriptado (String contraseña);
    
    boolean PassDesec (String pass, String encriptado);
    
    Usuario BusquedaUs(String usuario);
    
}

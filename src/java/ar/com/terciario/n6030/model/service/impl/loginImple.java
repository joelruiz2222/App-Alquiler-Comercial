
package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.servi.ILogin;
import java.util.List;
import org.mindrot.jbcrypt.BCrypt;

public class loginImple implements ILogin{

    @Override
    public String encriptado(String contraseña) {
        
        return BCrypt.hashpw(contraseña, BCrypt.gensalt());
        
    }

    @Override
    public boolean PassDesec(String pass, String encriptado) {
        
        return BCrypt.checkpw(pass, encriptado);
        
    }

    @Override
    public Usuario BusquedaUs(String usuario) {

        List<Usuario> u = usu.findUsuarioEntities();

        for (Usuario usuario1 : u) {

            if (usuario1.getUsuario().equalsIgnoreCase(usuario)) {

                return usuario1;

            }

        }

        return null;

    }

}

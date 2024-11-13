package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.servi.IUsuario;
import java.util.List;

public class usuarioImple implements IUsuario{

    @Override
    public void CrearUsuario(String Email, String Usuario, String Contraseña, boolean Activo, String Perfil) {
        
        Usuario u = new Usuario();
        
        u.setEmail(Email);
        
        u.setUsuario(Usuario);
        
        u.setPassword(Perfil);
        
        u.setActivo(Activo);
        
        u.setPerfil(Perfil);
        
        usu.create(u);
        
    }

    @Override
    public List<Usuario> ListaUsuComple() {
        
        return usu.findUsuarioEntities();
        
    }



    
}

package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Usuario;
import ar.com.terciario.n6030.model.repository.exceptions.NonexistentEntityException;
import ar.com.terciario.n6030.model.servi.IUsuario;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class usuarioImple implements IUsuario{

    @Override
    public void CrearUsuario(String Email, String Usuario, String Contraseña, boolean Activo, String Perfil) {
        
        Usuario u = new Usuario();
        
        u.setEmail(Email);
        
        u.setUsuario(Usuario);
        
        u.setPassword(Contraseña);
        
        u.setActivo(Activo);
        
        u.setPerfil(Perfil);
        
        usu.create(u);
        
    }

    @Override
    public List<Usuario> ListaUsuComple() {
        
        return usu.findUsuarioEntities();
        
    }

    @Override
    public void EliminarUsuario(int id) {
        
        try {
            usu.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(usuarioImple.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }



    
}


package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Propietario;
import ar.com.terciario.n6030.model.servi.IPropietario;
import static ar.com.terciario.n6030.model.servi.IPropietario.propi;

public class propietarioImple implements IPropietario{

    @Override
    public void CrearPropietario(String dni, String nombre, String apellido, String email, String telefono) {
    
    Propietario p = new Propietario();
        
        p.setDni(dni);
        p.setNombre(nombre);
        p.setApellido(apellido);
        p.setEmail(email);
        p.setTelefono(telefono);
        
        propi.create(p);
    

    
    
    }
        
        
        
    
    
    
}

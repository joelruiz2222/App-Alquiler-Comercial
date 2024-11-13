
package ar.com.terciario.n6030.model.servi;

import ar.com.terciario.n6030.model.repository.PropietarioJpaController;

public interface IPropietario {
    
    PropietarioJpaController propi = new PropietarioJpaController();
    
    void CrearPropietario(String dni, String nombre, String apellido, String email, String telefono);
    
    
    
    
}

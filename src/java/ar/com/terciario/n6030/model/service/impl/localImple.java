package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Locales;
import ar.com.terciario.n6030.model.servi.ILocal;
import java.net.ResponseCache;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class localImple implements ILocal{
  
    List<Locales> locales = new ArrayList<>();
    
    @Override
    public List<Locales> ListaLocales() {

        return lc.findLocalesEntities();

    }

    @Override
    public void CrearLocal(String Superficie, boolean Estado, double costoMes, boolean Condicion, byte[] Imagen) {
        Locales l = new Locales();

        l.setSuperficie(Superficie);

        l.setHabilitado(Estado);

        l.setCosto_mes(costoMes);

        l.setAlquilado(Condicion);

        l.setImagen(Imagen);
        
        lc.create(l);
    }

    @Override
    public byte[] obtenerImagenPorId(int id) {
        
        for (Locales local : locales) {
            if (local.getId() == id) {
                
                return local.getImagen();
            }
        }
        return null;
                
    }



}

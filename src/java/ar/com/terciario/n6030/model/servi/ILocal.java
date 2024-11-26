package ar.com.terciario.n6030.model.servi;

import ar.com.terciario.n6030.model.entity.Locales;
import ar.com.terciario.n6030.model.repository.LocalesJpaController1;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

public interface ILocal {
    
    LocalesJpaController1 lc = new LocalesJpaController1();
    
   void CrearLocal(String Superficie, boolean Estado, double costoMes, boolean Condicion, byte[] Imagen);
    
   List <Locales> ListaLocales();
   
   byte[] obtenerImagenPorId(int id);
   
}

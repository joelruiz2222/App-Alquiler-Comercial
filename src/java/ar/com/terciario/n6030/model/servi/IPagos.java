package ar.com.terciario.n6030.model.servi;

import ar.com.terciario.n6030.model.entity.Pago;
import ar.com.terciario.n6030.model.repository.PagoJpaController;
import java.util.List;

public interface IPagos {
    
    PagoJpaController pag = new PagoJpaController();
    
    void CrearPago(double monto, String fecha, String tipoP,String estadoP);
    
    List <Pago> ListaPago();
    
}

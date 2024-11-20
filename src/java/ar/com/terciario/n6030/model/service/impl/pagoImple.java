package ar.com.terciario.n6030.model.service.impl;

import ar.com.terciario.n6030.model.entity.Pago;
import ar.com.terciario.n6030.model.servi.IPagos;
import java.util.List;

public class pagoImple implements IPagos{

    @Override
    public void CrearPago(double monto, String fecha, String tipoP, String estadoP) {
        
        Pago pagito = new Pago();
        
        pagito.setMonto(monto);
        
        pagito.setFecha(fecha);
        
        pagito.setTipoPago(tipoP);
        
        pagito.setEstadoPago(estadoP);
        
        pag.create(pagito);
        
    }

    @Override
    public List<Pago> ListaPago() {
        
        return pag.findPagoEntities();
        
    }
    
}

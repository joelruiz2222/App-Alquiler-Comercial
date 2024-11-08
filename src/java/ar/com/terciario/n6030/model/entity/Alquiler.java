package ar.com.terciario.n6030.model.entity;

import java.util.Date;

public class Alquiler {
    
     int id;
    Propietario propi ;
    Local loc;
    int plazo_mes;
    int costo_alquiler;
    Date fecha_alquiler;

    public Alquiler() {
    }

    public Alquiler(int id, Propietario propi, Local loc, int plazo_mes, int costo_alquiler, Date fecha_alquiler) {
        this.id = id;
        this.propi = propi;
        this.loc = loc;
        this.plazo_mes = plazo_mes;
        this.costo_alquiler = costo_alquiler;
        this.fecha_alquiler = fecha_alquiler;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Propietario getPropi() {
        return propi;
    }

    public void setPropi(Propietario propi) {
        this.propi = propi;
    }

    public Local getLoc() {
        return loc;
    }

    public void setLoc(Local loc) {
        this.loc = loc;
    }

    public int getPlazo_mes() {
        return plazo_mes;
    }

    public void setPlazo_mes(int plazo_mes) {
        this.plazo_mes = plazo_mes;
    }

    public int getCosto_alquiler() {
        return costo_alquiler;
    }

    public void setCosto_alquiler(int costo_alquiler) {
        this.costo_alquiler = costo_alquiler;
    }

    public Date getFecha_alquiler() {
        return fecha_alquiler;
    }

    public void setFecha_alquiler(Date fecha_alquiler) {
        this.fecha_alquiler = fecha_alquiler;
    }
    
    
    
}

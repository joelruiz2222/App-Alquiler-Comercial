package ar.com.terciario.n6030.model.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Alquiler implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
     int id;
    
    @OneToOne
    @JoinColumn(name = "id_propietario")       
    Propietario propi ;
    
    @OneToOne
    @JoinColumn(name = "id_local")
    Local loc;
    
    @Basic
    int plazo_mes;
    int costo_alquiler;
    
    @Temporal(TemporalType.DATE)
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

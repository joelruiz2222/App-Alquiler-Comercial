package ar.com.terciario.n6030.model.entity;

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
public class Precio_Local {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @OneToOne
    @JoinColumn(name = "id_local")
    int id;
    
    @Basic
    double costo_mes;
    
    @Temporal(TemporalType.DATE)
    Date FechaActualizacion;

    public Precio_Local() {
    }

    public Precio_Local(int id, double costo_mes, Date FechaActualizacion) {
        this.id = id;
        this.costo_mes = costo_mes;
        this.FechaActualizacion = FechaActualizacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getCosto_mes() {
        return costo_mes;
    }

    public void setCosto_mes(double costo_mes) {
        this.costo_mes = costo_mes;
    }

    public Date getFechaActualizacion() {
        return FechaActualizacion;
    }

    public void setFechaActualizacion(Date FechaActualizacion) {
        this.FechaActualizacion = FechaActualizacion;
    }
    
    
}

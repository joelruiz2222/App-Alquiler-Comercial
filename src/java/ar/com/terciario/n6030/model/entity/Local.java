package ar.com.terciario.n6030.model.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Local implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    int id;
    
    @Basic
    int superficie;
    boolean habilitado;
    int costo_mes;
    boolean alquilado;

    public Local() {
    }

    public Local(int id, int superficie, boolean habilitado, int costo_mes, boolean alquilado) {
        this.id = id;
        this.superficie = superficie;
        this.habilitado = habilitado;
        this.costo_mes = costo_mes;
       
        this.alquilado = alquilado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSuperficie() {
        return superficie;
    }

    public void setSuperficie(int superficie) {
        this.superficie = superficie;
    }

    public boolean isHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    public int getCosto_mes() {
        return costo_mes;
    }

    public void setCosto_mes(int costo_mes) {
        this.costo_mes = costo_mes;
    }

    public boolean isAlquilado() {
        return alquilado;
    }

    public void setAlquilado(boolean alquilado) {
        this.alquilado = alquilado;
    }
    
}

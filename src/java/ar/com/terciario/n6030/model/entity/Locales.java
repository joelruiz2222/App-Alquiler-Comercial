package ar.com.terciario.n6030.model.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Locales implements Serializable {
   
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    int id;
    
    @Basic
    String superficie;
    boolean habilitado;
    double costo_mes;
    boolean alquilado;
    byte[] imagen;

    public Locales() {
    }

    public Locales(int id, String superficie, boolean habilitado, double costo_mes, boolean alquilado, byte[] imagen) {
        this.id = id;
        this.superficie = superficie;
        this.habilitado = habilitado;
        this.costo_mes = costo_mes;
        this.alquilado = alquilado;
        this.imagen = imagen;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSuperficie() {
        return superficie;
    }

    public void setSuperficie(String superficie) {
        this.superficie = superficie;
    }

    public boolean isHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    public double getCosto_mes() {
        return costo_mes;
    }

    public void setCosto_mes(double costo_mes) {
        this.costo_mes = costo_mes;
    }

    public boolean isAlquilado() {
        return alquilado;
    }

    public void setAlquilado(boolean alquilado) {
        this.alquilado = alquilado;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

}

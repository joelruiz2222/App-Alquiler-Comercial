package ar.com.terciario.n6030.model.entity;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Novedades {
       
    @Id
    @GeneratedValue (strategy = GenerationType.SEQUENCE)
     int id;
    
    @OneToOne
    @JoinColumn(name = "id_usuario")        
    Usuario usuario;
    
    @OneToOne
    @JoinColumn(name = "id_alquiler")
    Alquiler alqui;
    
    @Basic
    String texto;
    String estado;

    public Novedades() {
    }

    public Novedades(int id, Usuario usuario, Alquiler alqui, String texto, String estado) {
        this.id = id;
        this.usuario = usuario;
        this.alqui = alqui;
        this.texto = texto;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Alquiler getAlqui() {
        return alqui;
    }

    public void setAlqui(Alquiler alqui) {
        this.alqui = alqui;
    }
    
}

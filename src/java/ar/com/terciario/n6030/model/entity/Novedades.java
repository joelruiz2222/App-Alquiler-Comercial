package ar.com.terciario.n6030.model.entity;

public class Novedades {
       
     int id;
    Usuario usuario;
    Alquiler alqui;
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

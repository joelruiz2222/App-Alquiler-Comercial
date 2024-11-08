package ar.com.terciario.n6030.model.entity;

public class Usuario {
    
     int id;
    String usuario;
    String password;
    boolean activo;
    String email;
    String perfil;

    public Usuario() {
    }

    public Usuario(int id, String usuario, String password, boolean activo, String email, String perfil) {
        this.id = id;
        this.usuario = usuario;
        this.password = password;
        this.activo = activo;
        this.email = email;
        this.perfil = perfil;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }
    
    
    
    
}

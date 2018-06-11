/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

import java.io.Serializable;
import java.util.Objects;

/**
 *
 * @author Thalicia Oliveira
 */
public class Usuario implements Serializable {
  
    private Integer idlogin;
    private String usuario;
    private String senha;
    private int nivelAcesso;
    private String nome;
    private String email;
    
  
    public Usuario() {
    }
  
    public Usuario(Integer idlogin, String usuario, String senha, int nivelAcesso) {
        this.idlogin = idlogin;
        this.usuario = usuario;
        this.senha = senha;
        this.nivelAcesso = nivelAcesso;
    }
        public Usuario(String nome, String email, String usuario, String senha) {
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
        this.email = email;
    }
  
  
    public Integer getIdlogin() {
        return idlogin;
    }
  
    public void setIdlogin(Integer idlogin) {
        this.idlogin = idlogin;
    }
  
    public String getUsuario() {
        return usuario;
    }
  
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
  
  
    public String getSenha() {
        return senha;
    }
  
    public void setSenha(String senha) {
        this.senha = senha;
    }
  
    public int getNivelAcesso() {
        return nivelAcesso;
    }
  
    public void setNivelAcesso(int nivelAcesso) {
        this.nivelAcesso = nivelAcesso;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
  
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.idlogin);
        return hash;
    }
  
    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Usuario other = (Usuario) obj;
        if (!Objects.equals(this.idlogin, other.idlogin)) {
            return false;
        }
        return true;
    }
}
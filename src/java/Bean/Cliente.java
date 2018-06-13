/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author Thalicia Oliveira
 */
public class Cliente {
    private int idcliente;
   private String nome;
   private String cpf;
   private String endereco;
   private String email;
   private String cidade;
   private String estado;
   private String CNH;

    public Cliente(String nome, String cpf, String endereco, String email, String cidade, String estado, String CNH) {
        this.nome = nome;
        this.cpf = cpf;
        this.endereco = endereco;
        this.email = email;
        this.cidade = cidade;
        this.estado = estado;
        this.CNH = CNH;
    }
   
   

    public Cliente(int idcliente, String nome, String cpf, String endereco, String email, String cidade, String estado, String CNH) {
        this.idcliente = idcliente;
        this.nome = nome;
        this.cpf = cpf;
        this.endereco = endereco;
        this.email = email;
        this.cidade = cidade;
        this.estado = estado;
        this.CNH = CNH;
    }
   
   
   

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCNH() {
        return CNH;
    }

    public void setCNH(String CNH) {
        this.CNH = CNH;
    }
    
}

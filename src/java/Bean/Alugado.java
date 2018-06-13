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
public class Alugado {
    private String nome;
    private String modelo;
    private int dias;
    private double custo;

    public double getCusto() {
        return custo;
    }

    public void setCusto(double custo) {
        this.custo = custo;
    }


    public Alugado(String nome, String modelo, int dias, double custo) {
        this.nome = nome;
        this.modelo = modelo;
        this.dias = dias;
        this.custo = custo;

    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getDias() {
        return dias;
    }

    public void setDias(int dias) {
        this.dias = dias;
    }

    
    
}


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
public class Veiculo {
    private int idveiculo;
    private String placa;
    private String modelo;
    private String marca;
    private int ano;
    private String cor;
    private boolean disponibilidade;
    private double valor;

    public Veiculo(String placa, String modelo, String marca, int ano, String cor, boolean disponibilidade, double valor) {
        this.placa = placa;
        this.modelo = modelo;
        this.marca = marca;
        this.ano = ano;
        this.cor = cor;
        this.disponibilidade = disponibilidade;
        this.valor = valor;
    }
    
      public Veiculo(int idveiculo, String placa, String modelo, String marca, int ano, String cor, boolean disponibilidade, double valor) {
        this.idveiculo = idveiculo;
        this.placa = placa;
        this.modelo = modelo;
        this.marca = marca;
        this.ano = ano;
        this.cor = cor;
        this.disponibilidade = disponibilidade;
        this.valor = valor;
    }

    
    

    public int getIdveiculo() {
        return idveiculo;
    }

    public void setIdveiculo(int idveiculo) {
        this.idveiculo = idveiculo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public boolean isDisponibilidade() {
        return disponibilidade;
    }

    public void setDisponibilidade(boolean disponibilidade) {
        this.disponibilidade = disponibilidade;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    @Override
    public String toString(){
    
    return modelo;
    }
    
}

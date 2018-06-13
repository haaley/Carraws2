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
public class Aluguel {
 
    private long id;
    private int cliente;
    private int veiculo;
    private int tempoALuguel;
    private double custoTotal;
    private double desconto;

    public Aluguel(int cliente, int veiculo, int tempoALuguel, double custoTotal) {
        this.cliente = cliente;
        this.veiculo = veiculo;
        this.tempoALuguel = tempoALuguel;
        this.custoTotal = custoTotal;
    }
        public Aluguel(int cliente, int veiculo){
        this.cliente = cliente;
        this.veiculo = veiculo;
    }
    
    

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getCliente() {
        return cliente;
    }

    public void setCliente(int cliente) {
        this.cliente = cliente;
    }

    public int getVeiculo() {
        return veiculo;
    }

    public void setVeiculo(int veiculo) {
        this.veiculo = veiculo;
    }

    public int getTempoALuguel() {
        return tempoALuguel;
    }

    public void setTempoALuguel(int tempoALuguel) {
        this.tempoALuguel = tempoALuguel;
    }

    public double getCustoTotal() {
        return custoTotal;
    }

    public void setCustoTotal(double custoTotal) {
        this.custoTotal = custoTotal;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }
    
    
}

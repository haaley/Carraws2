/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.Veiculo;
import ConnectionFactory.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Thalicia Oliveira
 */
public class VeiculoDAO {

    public void insertSingle(Veiculo v) throws SQLException {

        Connection conn = Conexao.open();
        PreparedStatement ps;

        ps = conn.prepareStatement("INSERT INTO veiculo (placa, modelo, marca, ano, cor, disponibilidade, valor) VALUES (?,?,?,?,?,?,?)");
        ps.setString(1, v.getPlaca());
        ps.setString(2, v.getModelo());
        ps.setString(3, v.getMarca());
        ps.setInt(4, v.getAno());
        ps.setString(5, v.getCor());
        ps.setBoolean(6, v.isDisponibilidade());
        ps.setDouble(7, v.getValor());

        ps.execute();

        Conexao.close(ps, conn);

    }

    public ArrayList<String> listarModelos() throws SQLException {

        Connection conn = Conexao.open();

        ArrayList<String> modelos = new ArrayList<String>();

        Statement statement = conn.createStatement();
        ResultSet set = statement.executeQuery("SELECT modelo FROM veiculo");

        set.beforeFirst();
        while (set.next()) {
            String modelo = set.getString("modelo");
            modelos.add(modelo);

        }
        conn.close();
        return modelos;

    }

    public ArrayList<Veiculo> listarVeiculos() throws SQLException {

        Connection conn = Conexao.open();

        ArrayList<Veiculo> veiculos = new ArrayList<Veiculo>();

        Statement statement = conn.createStatement();
        ResultSet set = statement.executeQuery("SELECT * FROM veiculo");

        set.beforeFirst();
        while (set.next()) {
            int id = set.getInt("idveiculo");
            String modelo = set.getString("modelo");
            String placa = set.getString("placa");
            String marca = set.getString("marca");
            int ano = set.getInt("ano");
            String cor = set.getString("cor");
            boolean disp = set.getBoolean("disponibilidade");
            double valor = set.getDouble("valor");

            veiculos.add(new Veiculo(id, placa, modelo, marca, ano, cor, disp, valor));

        }
        conn.close();
        return veiculos;

    }

    public int veiculoIDByName(String nome) throws SQLException {
        Connection conn = Conexao.open();
        int id;
        PreparedStatement ps;
        ResultSet rs;

        ps = conn.prepareStatement("select idveiculo from veiculo where modelo LIKE '" + nome + "'");
        rs = ps.executeQuery();
        rs.beforeFirst();
        rs.first();
        id = rs.getInt("idveiculo");

        return id;
        
    
    }
    
    
        public double veiculoValorByName(String nome) throws SQLException {
        Connection conn = Conexao.open();
        double valor;
        PreparedStatement ps;
        ResultSet rs;

        ps = conn.prepareStatement("select valor from veiculo where modelo LIKE '" + nome + "'");
        rs = ps.executeQuery();
        rs.beforeFirst();
        rs.first();
        valor = rs.getDouble("valor");

        return valor;
        
    
    }

}

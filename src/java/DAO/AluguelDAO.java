/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.Alugado;
import Bean.Aluguel;
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
public class AluguelDAO {

    public boolean inserirAlguel(Aluguel obj) throws SQLException {
        Connection conn = Conexao.open();
        PreparedStatement ps;

        String sql = "INSERT INTO aluguel (cliente_idcliente, veiculo_idveiculo, dias, custoTotal) values (?,?,?,?)";
        ps = conn.prepareStatement(sql);

        ps.setInt(1, obj.getCliente());
        ps.setInt(2, obj.getVeiculo());
        ps.setInt(3, obj.getTempoALuguel());
        ps.setDouble(4, obj.getCustoTotal());
        ps.execute();
        Conexao.close(ps, conn);

        return true;

    }

    public boolean verificarPosseALuguel(String id) throws SQLException {
        Connection conn = Conexao.open();
        PreparedStatement ps;
        ResultSet rs;
        System.out.println(id);
        String sql = "SELECT cliente FROM aluguel";
        ps = conn.prepareStatement(sql);
        String CPF = null;
        rs = ps.executeQuery(sql);
        while (rs.next()) {
            CPF = rs.getString("cliente");
        }
        if (CPF.equals(id)) {
            return true;
        } else {
            return false;
        }
    }

    public void devolver(String cpf) throws SQLException {
        Connection conn = Conexao.open();
        PreparedStatement ps;
        ResultSet rs;
        String sql = "SELECT * FROM aluguel WHERE cliente_idcliente= '" + cpf + "'";
        ps = conn.prepareStatement(sql);

        String placa = null;
        rs = ps.executeQuery(sql);
        while (rs.next()) {
            placa = rs.getString("veiculo");
        }

        String sql1 = "UPDATE veiculo SET disponiblidade = true WHERE placa = '" + placa + "' ";
        int i = ps.executeUpdate(sql1);

        String sql2 = "DELETE FROM aluguel WHERE cliente_idcliente = '" + cpf + "'";
        int j = ps.executeUpdate(sql2);
    }

    public ArrayList<Aluguel> listaAlugel() throws SQLException {

        Connection conn = Conexao.open();
        ArrayList<Aluguel> aluguel = new ArrayList<Aluguel>();
        Statement statement = conn.createStatement();
        ResultSet set = statement.executeQuery("SELECT * FROM aluguel");

        set.beforeFirst();
        while (set.next()) {
            int idcliente = set.getInt("cliente_idcliente");
            System.out.println(idcliente);
            int idveiculo = set.getInt("veiculo_idveiculo");
            System.out.println(idveiculo);
            int dias = set.getInt("dias");
            System.out.println(dias);
            double custoTotal = set.getDouble("custoTotal");
            System.out.println(custoTotal);
            Aluguel a = new Aluguel(idcliente, idveiculo, dias, custoTotal);
            aluguel.add(a);

        }
        conn.close();

        return aluguel;

    }

    /*
    public ResultSet BuscaAluguel(String cpf) throws SQLException {
        Statement stm = this.conexao.createStatement();
        ResultSet rs;
        String sql = "SELECT * FROM ALGUGA WHERE cliente_idcliente = '"+cpf+"'";
        rs = stm.executeQuery(sql);
        return rs;
    }    
     */

    public ArrayList<Alugado> retrieveDadosAluguel(ArrayList<Aluguel> lista) throws SQLException {
        Connection conn = Conexao.open();

        ArrayList<Alugado> dados = new ArrayList<Alugado>();

        Statement statement = conn.createStatement();
        Statement statement2 = conn.createStatement();
        Statement statement3 = conn.createStatement();

        for (Aluguel L : lista) {

            ResultSet set = statement.executeQuery("SELECT nome FROM cliente WHERE idcliente =" + L.getCliente());
            ResultSet set2 = statement2.executeQuery("SELECT modelo FROM veiculo WHERE idveiculo =" + L.getVeiculo());
            ResultSet set3 = statement3.executeQuery("SELECT * FROM aluguel WHERE cliente_idcliente ="+L.getCliente() +" AND veiculo_idveiculo =" +L.getVeiculo());

            set.beforeFirst();
            set2.beforeFirst();
            set3.beforeFirst();
            while (set.next() && set2.next() && set3.next()) {
                String cliente = set.getString("nome");
                String modelo = set2.getString("modelo");
                int dias = set3.getInt("dias");
                double custo = set3.getDouble("custoTotal");
                Alugado a = new Alugado(cliente, modelo, dias, custo);
                dados.add(a);
            }

        }

        conn.close();
        return dados;

    }
}

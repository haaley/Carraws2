/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Bean.Cliente;
import Bean.Veiculo;
import ConnectionFactory.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Thalicia Oliveira
 */
public class ClienteDAO {
   
    public void inserirCliente(Cliente c) throws SQLException{
    
    Connection conn = Conexao.open();
        PreparedStatement ps;

        ps = conn.prepareStatement("INSERT INTO cliente (nome, cpf, endereco, email, estado, cidade, CNH) VALUES (?,?,?,?,?,?,?)");
        ps.setString(1, c.getNome());
        ps.setString(2, c.getCpf());
        ps.setString(3, c.getEndereco());
        ps.setString(4, c.getEmail());
        ps.setString(5, c.getEstado());
        ps.setString(6, c.getCidade());
        ps.setString(7, c.getCNH());

        ps.execute();

        Conexao.close(ps, conn);
    
    }
   
   
    public ArrayList<Cliente> listaClientes() throws SQLException{
           Connection conn = Conexao.open();

        ArrayList<Cliente> c = new ArrayList<Cliente>();

        Statement statement = conn.createStatement();
        ResultSet set = statement.executeQuery("SELECT * FROM cliente");

        set.beforeFirst();
        while (set.next()) {
            int id = set.getInt("idcliente");
            String nome = set.getString("nome");
            String cpf = set.getString("cpf");
            String endereco = set.getString("endereco");
            String email = set.getString("email");
            String cidade = set.getString("cidade");
            String estado = set.getString("estado");
            String cnh = set.getString("CNH");

            c.add(new Cliente(id, nome, cpf, endereco, email, cidade, estado, cnh));

        }
        conn.close();
        return c;
    
    }
}

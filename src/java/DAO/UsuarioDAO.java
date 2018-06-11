/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author Thalicia Oliveira
 */
import Bean.Usuario;
import ConnectionFactory.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
  
public class UsuarioDAO {
  
    public Usuario getSingle(String login) throws SQLException{
        Connection conn = Conexao.open();
        PreparedStatement ps;
        ResultSet rs;
      
            ps = conn.prepareStatement("select idlogin, usuario, senha, nivelAcesso from login where usuario = ?");
            ps.setString(1, login);
            rs = ps.executeQuery();
            if (rs.next()) {
                
                Usuario user = new Usuario(rs.getInt("idlogin"), rs.getString("usuario"), rs.getString("senha"), rs.getInt("nivelAcesso"));
                System.out.println(user.getSenha());
                return user;
            } else
          
            Conexao.close(rs, ps, conn);
            
            return null;
        }
        
    
    public void insertSingle(Usuario usu) throws SQLException{
    
        Connection conn = Conexao.open();
        PreparedStatement ps;
       
      
            ps = conn.prepareStatement("INSERT INTO login (nome, email, usuario, senha) VALUES (?,?,?,?)");
            ps.setString(1,usu.getNome());
            ps.setString(2,usu.getEmail());
            ps.setString(3,usu.getUsuario());
            ps.setString(4,usu.getSenha());

            ps.execute();
          
            Conexao.close(ps, conn);
            
           
    
    }
    
    public Usuario getSingle(Object... chave) throws Exception {
        if (chave[0] instanceof Integer) {
            Connection conn = Conexao.open();
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                ps = conn.prepareStatement("select idlogin, usuario, senha, nivelAcesso from login where usurio = ?");
                ps.setInt(1, (Integer) chave[0]);
                rs = ps.executeQuery();
                if (rs.next()) {
                    return new Usuario(rs.getInt("idlogin"), rs.getString("usuario"), rs.getString("senha"), rs.getInt("nivelAcesso"));
                    
                }
                System.out.println(rs.getString("usuario"));
            } catch (SQLException ex) {
            } finally {
                Conexao.close(rs, ps, conn);
            }
        }
        return null;
    }
   
    public List<Usuario> getList() throws Exception{
        return getList(0);
    }
  

    public List<Usuario> getList(int top) throws Exception {
        if (top < 0) {
            return null;
        }
        List<Usuario> lista = null;
        Connection conn = Conexao.open();
        Statement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.createStatement();
            rs = ps.executeQuery("select " + (top > 0 ? "top " + top : "") + "idlogin, usuario, senha, nivelAcesso from login");
            lista = new ArrayList<>();
            while (rs.next()) {
                lista.add(new Usuario(rs.getInt("idlogin"), rs.getString("usuario"), rs.getString("senha"), rs.getInt("nivelAcesso")));
            }
        } catch (SQLException ex) {
        } finally {
            Conexao.close(rs, ps, conn);
        }
        return lista;
    }
}
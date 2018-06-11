/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectionFactory;

/**
 *
 * @author Thalicia Oliveira
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
  


public class Conexao {

    private static final String USUARIO = "root";
    private static final String SENHA = "";
    private static final String URL = "jdbc:mysql://127.0.0.1:3306/carraws";
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    // Conectar ao banco
    public static Connection open(){
       try{ // Registrar o driver
        Class.forName(DRIVER);
        // Capturar a conexão
        Connection conn = DriverManager.getConnection(URL, USUARIO, SENHA);
        // Retorna a conexao aberta
        return conn;
       } catch (SQLException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
       return null;
    }


  
    public static void close(ResultSet rs, Statement st, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
            }
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException e) {
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
            }
        }
    }
  
    public static void close(Statement st, Connection conn) {
        close(null, st, conn);
    }
  
    public static void close(Connection conn) {
        close(null, null, conn);
    }
}

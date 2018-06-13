/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Bean.Cliente;
import Bean.Veiculo;
import DAO.ClienteDAO;
import DAO.VeiculoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.Erro;

/**
 *
 * @author Thalicia Oliveira
 */
@WebServlet(name = "inserirCliente", urlPatterns = {"/logado/inserirCliente"})
public class inserirCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Erro erros = new Erro();

            if (request.getParameter("bOK") != null) {
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String endereco = request.getParameter("endereco");
                String email = request.getParameter("email");
                String estado = request.getParameter("estado");
                String cidade = request.getParameter("cidade");
                String cnh = request.getParameter("cnh");


                if (!erros.isExisteErros()) {
                    ClienteDAO dao = new ClienteDAO();
                    Cliente v = new Cliente(nome, cpf, endereco, email, cidade, estado, cnh);

                    if (v != null) {

                        dao.inserirCliente(v);

                        request.setAttribute("profilestrength",
                                "<b>Cliente Cadastrado com Sucesso");
                        RequestDispatcher rd = request.getRequestDispatcher("cadastroClientes.jsp");
                        rd.forward(request, response);

                    }
                }
            }
        }
    }
        // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
        /**
         * Handles the HTTP <code>GET</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doGet
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(inserirCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        }

        /**
         * Handles the HTTP <code>POST</code> method.
         *
         * @param request servlet request
         * @param response servlet response
         * @throws ServletException if a servlet-specific error occurs
         * @throws IOException if an I/O error occurs
         */
        @Override
        protected void doPost
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(inserirCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }

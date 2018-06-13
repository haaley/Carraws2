/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Bean.Aluguel;
import DAO.AluguelDAO;
import DAO.UsuarioDAO;
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
@WebServlet(name = "NovoAluguel", urlPatterns = {"/logado/NovoAluguel"})
public class NovoAluguel extends HttpServlet {

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
                String cliente = request.getParameter("cpf");
                String veiculo = request.getParameter("veiculo");
                int dia = Integer.parseInt(request.getParameter("tempoAluguel"));
                double custoTotal = Double.parseDouble(request.getParameter("custoTotal"));
                AluguelDAO dao = new AluguelDAO();
                VeiculoDAO daov = new VeiculoDAO();
                UsuarioDAO daou = new UsuarioDAO();

                int id = daou.userIDByName(cliente);

                int idv = daov.veiculoIDByName(veiculo);

                System.out.println(cliente + veiculo);

                if (!erros.isExisteErros()) {

                    Aluguel a = new Aluguel(id, idv, dia, custoTotal);

                    if (a != null) {

                        dao.inserirAlguel(a);

                        request.setAttribute("novoAluguel",
                                "<b>Veiculo Alugado com Sucesso!");
                        RequestDispatcher rd = request.getRequestDispatcher("/logado/alugar");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(novoVeiculo.class.getName()).log(Level.SEVERE, null, ex);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(novoVeiculo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

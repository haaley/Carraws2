/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Bean.Veiculo;
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
@WebServlet(name = "novoVeiculo", urlPatterns = {"/logado/novoVeiculo"})
public class novoVeiculo extends HttpServlet {

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
                String placa = request.getParameter("placa");
                String modelo = request.getParameter("modelo");
                String marca = request.getParameter("marca");
                int ano = Integer.parseInt(request.getParameter("ano"));
                String cor = request.getParameter("cor");
                Double valor = Double.parseDouble(request.getParameter("valor"));

                if (modelo == null || modelo.isEmpty()) {
                    erros.add("Modelo não informado!");
                }

                if (placa == null || placa.isEmpty()) {
                    erros.add("Placa não informada!");
                }
                if (marca == null || marca.isEmpty()) {
                    erros.add("Marca não informada!");
                }

                if (!erros.isExisteErros()) {
                    VeiculoDAO dao = new VeiculoDAO();
                    Veiculo v = new Veiculo(placa, modelo, marca, ano, cor, true, valor);

                    if (v != null) {

                        dao.insertSingle(v);

                        request.setAttribute("profilestrength",
                                "<b>Veiculo Cadastrado com Sucesso");
                        RequestDispatcher rd = request.getRequestDispatcher("cadastroVeiculo.jsp");
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

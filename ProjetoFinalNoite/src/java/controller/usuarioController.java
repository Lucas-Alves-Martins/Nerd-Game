/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Usuarios;
import model.dao.UsuariosDAO;

/**
 *
 * @author aluno
 */
//A anotação @WebServlet é um recurso do framework Spring MVC para agilizar a configuração de páginas
// Essa anotação serve para substituir a necessidade de adicionar a url no web.xml
@WebServlet(name = "usuarioController", urlPatterns = {"/cadastrar-usuario", "/login", "/cadastro-usuario", "/logar"})
public class usuarioController extends HttpServlet {

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
            throws ServletException, IOException {
        String url = request.getServletPath();
        if (url.equals("/cadastrar-usuario")) {
            String nextPage = "/WEB-INF/jsp/cadastrarUsuario.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if (url.equals("/login")) {
            String nextPage = "/WEB-INF/jsp/login.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
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
        processRequest(request, response);
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
        String url = request.getServletPath();
        if (url.equals("/cadastro-usuario")) {
            Usuarios user = new Usuarios();
            user.setNome(request.getParameter("nome").equals("") ? "" : request.getParameter("nome"));
            user.setSenha(request.getParameter("senha"));
            user.setUsuario(request.getParameter("usuario"));
            user.setTelefone(request.getParameter("telefone"));
            user.setData_nascimento(Date.valueOf(request.getParameter("data-nascimento")));
            user.setCpf(request.getParameter("cpf"));

            UsuariosDAO userD = new UsuariosDAO();
            userD.cadastrarUsuario(user);

            response.sendRedirect("./login");
        } else if (url.equals("/logar")) {
            Usuarios user = new Usuarios();
            user.setUsuario(request.getParameter("usuario"));
            user.setSenha(request.getParameter("senha"));

            UsuariosDAO userD = new UsuariosDAO();
            user = userD.buscarLogin(user);
            if (user.getId_usuario() > 0) {
                response.sendRedirect("./CadastroProdutosController");
            } else {
                request.setAttribute("erroMensagem", "Erro ao realizar Login");
                String nextPage = "/WEB-INF/jsp/erroLogin.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }

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

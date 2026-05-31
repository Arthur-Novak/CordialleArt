package controller;

import dao.ProdutoDAO;
import model.Produto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/galeria")
public class GaleriaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            ProdutoDAO dao = new ProdutoDAO();

            // CORREÇÃO: Alterado de listar() para getProdutos()
            ArrayList<Produto> listaProdutos = dao.getProdutos();

            request.setAttribute("produtos", listaProdutos);

        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Galeria.jsp");
        rd.forward(request, response);
    }
}
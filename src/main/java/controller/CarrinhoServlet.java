package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/carrinho")
public class CarrinhoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Funciona apenas como um "porteiro" para abrir a página fixa que criamos
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Carrinho.jsp");
        rd.forward(request, response);
    }
}
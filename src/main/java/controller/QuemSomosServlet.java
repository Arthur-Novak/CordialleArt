package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/quemsomos")
public class QuemSomosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Pega a requisição e encaminha com segurança para a página dentro do WEB-INF
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Quemsomos.jsp");
        rd.forward(request, response);
    }
}
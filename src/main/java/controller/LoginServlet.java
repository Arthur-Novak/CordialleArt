package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Usuario;
import service.LoginService;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private LoginService loginService = new LoginService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Chamou o GET");

        PrintWriter out = resp.getWriter();

        out.println("<html>");
        out.println("<body>");
        out.println("Usuário clicou em alguma coisa");
        out.println("</body>");
        out.println("</html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Chamou o Post");

        String email = req.getParameter("email");
        String senha = req.getParameter("senha");

        System.out.println("Email: " + email);
        System.out.println("Senha: " + senha);

        Usuario usuarioAutenticado = loginService.autenticar(email, senha);

        if (usuarioAutenticado != null) {
            // Cria ou recupera a sessão do navegador
            HttpSession sessao = req.getSession();

            // Guarda o usuário na sessão com o nome "usuarioLogado"
            sessao.setAttribute("usuarioLogado", usuarioAutenticado);

            //  Redireciona para a home
            RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/pages/Home.jsp");
            rd.forward(req, resp);

        } else {
            RequestDispatcher rd = req.getRequestDispatcher("index.jsp");

            req.setAttribute("erro", "USUÁRIO OU SENHA INCORRETOS");
            rd.forward(req, resp);
        }
    }
}
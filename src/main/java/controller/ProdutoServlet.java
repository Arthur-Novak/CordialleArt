package controller;

import dao.ProdutoDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Produto;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/produto")
public class ProdutoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");

        try {

            ProdutoDAO dao = new ProdutoDAO();

            switch (acao) {

                case "cadastrar":
                    RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Cadastroproduto.jsp");
                    rd.forward(request, response);
                    break;

                case "listar":
                    ArrayList<Produto> produtos = dao.getProdutos();
                    request.setAttribute("produtos", produtos);

                    RequestDispatcher rdList = request.getRequestDispatcher("WEB-INF/pages/Listaprodutos.jsp");
                    rdList.forward(request, response);
                    break;

                case "editar":
                    try {
                        int idEditar = Integer.parseInt(request.getParameter("id"));

                        ProdutoDAO daox = new ProdutoDAO();
                        Produto produtoEditar = null;

                        for (Produto p : daox.getProdutos()) {
                            if (p.getCodigo() == idEditar) {
                                produtoEditar = p;
                                break;
                            }
                        }

                        request.setAttribute("produto", produtoEditar);

                        RequestDispatcher rdEditar = request.getRequestDispatcher("WEB-INF/pages/Editarproduto.jsp");
                        rdEditar.forward(request, response);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;

                case "deletar":
                    try {
                        String idParam = request.getParameter("id");

                        if (idParam == null || idParam.isEmpty()) {
                            response.sendRedirect("produto?acao=listar");
                            return;
                        }

                        int idDel = Integer.parseInt(idParam);

                        Produto produtoDel = null;

                        for (Produto p : dao.getProdutos()) {
                            if (p.getCodigo() == idDel) {
                                produtoDel = p;
                                break;
                            }
                        }

                        request.setAttribute("produto", produtoDel);

                        RequestDispatcher rdDel = request.getRequestDispatcher("WEB-INF/pages/Deletaproduto.jsp");
                        rdDel.forward(request, response);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;

                case "home":
                    RequestDispatcher rdDash = request.getRequestDispatcher("WEB-INF/pages/Home.jsp");
                    rdDash.forward(request, response);
                    break;

                case "dashboard":
                    RequestDispatcher rdDash1 = request.getRequestDispatcher("WEB-INF/pages/Dashboard.jsp");
                    rdDash1.forward(request, response);
                    break;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");

        if ("inserir".equals(acao)) {

            try {
                Produto p = new Produto();

                p.setNome(request.getParameter("nome"));
                p.setDescricao(request.getParameter("descricao"));

                // Convertendo a String do HTML para Double no Java
                p.setPreco(Double.parseDouble(request.getParameter("preco")));

                ProdutoDAO dao = new ProdutoDAO();
                dao.inserir(p);

                // Redireciona para a lista de produtos após inserir
                response.sendRedirect("produto?acao=listar");

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if ("atualizar".equals(acao)) {

            try {
                Produto p = new Produto();

                p.setCodigo(Integer.parseInt(request.getParameter("codigo")));
                p.setNome(request.getParameter("nome"));
                p.setDescricao(request.getParameter("descricao"));
                p.setPreco(Double.parseDouble(request.getParameter("preco")));

                ProdutoDAO dao = new ProdutoDAO();
                dao.atualizar(p);

                response.sendRedirect("produto?acao=listar");



            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().println("Erro: " + e.getMessage());
            }
        }

        if ("deletar".equals(acao)) {

            try {
                Produto p = new Produto();

                p.setCodigo(Integer.parseInt(request.getParameter("codigo")));

                ProdutoDAO dao = new ProdutoDAO();
                dao.excluir(p);

                response.sendRedirect("produto?acao=listar");

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
package controller;

import dao.UsuarioDAO;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Produto;
import model.Usuario;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/usuario")
public class UsuarioServlet extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String acao = request.getParameter("acao");


        try {

            UsuarioDAO dao = new UsuarioDAO();

            switch (acao) {

                case "cadastrar":
                    RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Cadastrousuario.jsp");
                    rd.forward(request, response);
                    break;

                case "listar":
                    ArrayList<Usuario> usuarios = dao.getUsuarios();
                    request.setAttribute("usuarios", usuarios);

                    RequestDispatcher rdList = request.getRequestDispatcher("WEB-INF/pages/Listausuarios.jsp");
                    rdList.forward(request, response);
                    break;

                case "editar":
                    try {
                        int idEditar = Integer.parseInt(request.getParameter("id"));

                        UsuarioDAO daox = new UsuarioDAO();
                        Usuario usuarioEditar = null;

                        for (Usuario u : daox.getUsuarios()) {
                            if (u.getCodigo() == idEditar) {
                                usuarioEditar = u;
                                break;
                            }
                        }

                        request.setAttribute("usuario", usuarioEditar);

                        RequestDispatcher rdEditar = request.getRequestDispatcher("WEB-INF/pages/Editarusuario.jsp");
                        rdEditar.forward(request, response);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;

                case "deletar":
                    try {
                        String idParam = request.getParameter("id");

                        if (idParam == null || idParam.isEmpty()) {
                            response.sendRedirect("usuario?acao=listar");
                            return;
                        }

                        int idDel = Integer.parseInt(idParam);

                        Usuario usuarioDel = null;

                        for (Usuario u : dao.getUsuarios()) {
                            if (u.getCodigo() == idDel) {
                                usuarioDel = u;
                                break;
                            }
                        }

                        request.setAttribute("usuario", usuarioDel);

                        RequestDispatcher rdDel = request.getRequestDispatcher("WEB-INF/pages/Deletausuario.jsp");
                        rdDel.forward(request, response);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    break;

                case "home":
                    RequestDispatcher rdDash = request.getRequestDispatcher("WEB-INF/pages/Home.jsp");
                    rdDash.forward(request, response);
                    break;

                case "Quemsomos":
                    RequestDispatcher rdDash1 = request.getRequestDispatcher("WEB-INF/pages/Quemsomos.jsp");
                    rdDash1.forward(request, response);
                    break;

                case "galeria":
                    RequestDispatcher rdDash2 = request.getRequestDispatcher("WEB-INF/pages/Galeria.jsp");
                    rdDash2.forward(request, response);
                    break;

                case "carrinho":
                    RequestDispatcher rdDash3 = request.getRequestDispatcher("WEB-INF/pages/Carrinho.jsp");
                    rdDash3.forward(request, response);
                    break;

                case "dashboard":
                    RequestDispatcher rdDash4 = request.getRequestDispatcher("WEB-INF/pages/Dashboard.jsp");
                    rdDash4.forward(request, response);
                    break;





            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {

        String acao = request.getParameter("acao");

        if ("inserir".equals(acao)) {

            try {
                Usuario u = new Usuario();

                u.setNome(request.getParameter("nome"));
                u.setEmail(request.getParameter("email"));
                u.setSenha(request.getParameter("senha"));
                u.setDatanascimento(request.getParameter("datanascimento"));
                u.setTelefone(request.getParameter("telefone"));
                u.setEstado(request.getParameter("estado"));
                u.setCidade(request.getParameter("cidade"));
                u.setAtivo(Boolean.parseBoolean(request.getParameter("ativo")));

                UsuarioDAO dao = new UsuarioDAO();
                dao.inserir(u);

                response.sendRedirect("usuario?acao=dashboard");

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        if ("atualizar".equals(acao))
        {

            try {
                Usuario u = new Usuario();

                u.setCodigo(Integer.parseInt(request.getParameter("codigo")));
                u.setNome(request.getParameter("nome"));
                u.setEmail(request.getParameter("email"));
                u.setSenha(request.getParameter("senha"));
                u.setDatanascimento(request.getParameter("datanascimento"));
                u.setTelefone(request.getParameter("telefone"));
                u.setEstado(request.getParameter("estado"));
                u.setCidade(request.getParameter("cidade"));
                u.setAtivo(Boolean.parseBoolean(request.getParameter("ativo")));

                UsuarioDAO dao = new UsuarioDAO();
                dao.atualizar(u);

                request.setAttribute("mensagem", "Dados atualizados com sucesso. Faça login novamente!");

                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);

            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().println("Erro: " + e.getMessage());
            }
        }


        if ("deletar".equals(acao)) {

            try {
                int codigoParaDeletar = Integer.parseInt(request.getParameter("codigo"));

                Usuario u = new Usuario();
                u.setCodigo(codigoParaDeletar);

                UsuarioDAO dao = new UsuarioDAO();
                dao.excluir(u);



                // Pega a sessão atual do usuário sem criar uma nova
                HttpSession sessao = request.getSession(false);

                if (sessao != null) {

                    Usuario usuarioLogado = (Usuario) sessao.getAttribute("usuarioLogado");

                    // Verifica se quem está logado é a mesma pessoa que acabou de ser excluída
                    if (usuarioLogado != null && usuarioLogado.getCodigo() == codigoParaDeletar) {

                        // Invalida (destrói) a sessão, forçando o logout
                        sessao.invalidate();

                        // Redireciona para a tela de login com uma mensagem (opcional, passando por parâmetro)
                        response.sendRedirect("index.jsp?msg=Sua conta foi excluida.");
                        return; // O 'return' impede que o código continue e tente redirecionar para a lista
                    }
                }

                // Se não for ele mesmo, apenas volta para a lista de usuários normalmente
                response.sendRedirect("usuario?acao=listar");

            } catch (Exception e) {
                e.printStackTrace();
            }
        }


    }
}
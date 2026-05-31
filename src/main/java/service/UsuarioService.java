package service;

import dao.UsuarioDAO;
import model.Usuario;
import java.util.ArrayList;

public class UsuarioService {

    public boolean cadastrar(Usuario u) {
        try {
            // nome, email e senha são obrigatórios
            if (u.getNome() == null || u.getNome().trim().isEmpty() ||
                    u.getEmail() == null || u.getEmail().trim().isEmpty() ||
                    u.getSenha() == null || u.getSenha().trim().isEmpty()) {

                System.out.println("Erro: Dados obrigatórios do usuário faltando para cadastro.");
                return false;
            }

            UsuarioDAO dao = new UsuarioDAO();
            return dao.inserir(u);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean atualizar(Usuario u) {
        try {
            //  código precisa ser válido e os dados principais não podem estar vazios
            if (u.getCodigo() <= 0 ||
                    u.getNome() == null || u.getNome().trim().isEmpty() ||
                    u.getEmail() == null || u.getEmail().trim().isEmpty()) {

                System.out.println("Erro: Dados inválidos para atualização do usuário.");
                return false;
            }

            UsuarioDAO dao = new UsuarioDAO();
            return dao.atualizar(u);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean excluir(Usuario u) {
        try {
            //  o código do usuário precisa ser maior que zero para excluir
            if (u.getCodigo() <= 0) {
                System.out.println("Erro: Código de usuário inválido para exclusão.");
                return false;
            }

            UsuarioDAO dao = new UsuarioDAO();
            return dao.excluir(u);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Usuario> listarTodos() {
        try {
            UsuarioDAO dao = new UsuarioDAO();
            return dao.getUsuarios();

        } catch (Exception e) {
            e.printStackTrace();
        }
        // retorna uma lista vazia para evitar que a tela JSP quebre com um NullPointerException
        return new ArrayList<>();
    }

    public ArrayList<Usuario> buscarPorNome(String nome) {
        try {
            //se o nome vier nulo, transforma em string vazia para o banco trazer todos e não dar erro
            if (nome == null) {
                nome = "";
            }

            UsuarioDAO dao = new UsuarioDAO();
            return dao.getUsuariosPorNome(nome);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }
}
package service;

import dao.ProdutoDAO;
import model.Produto;
import java.util.ArrayList;

public class ProdutoService {

    public boolean cadastrar(Produto p) {
        try {
            //  produto precisa ter nome e o preço não pode ser negativo
            if (p.getNome() == null || p.getNome().trim().isEmpty() || p.getPreco() < 0) {
                System.out.println("Erro: Produto inválido para cadastro.");
                return false;
            }

            ProdutoDAO dao = new ProdutoDAO();
            return dao.inserir(p);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean atualizar(Produto p) {
        try {
            // precisa de um código válido, nome e preço não negativo
            if (p.getCodigo() <= 0 || p.getNome() == null || p.getNome().trim().isEmpty() || p.getPreco() < 0) {
                System.out.println("Erro: Dados inválidos para atualização.");
                return false;
            }

            ProdutoDAO dao = new ProdutoDAO();
            return dao.atualizar(p);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean excluir(Produto p) {
        try {
            //só pode excluir se o código for maior que zero
            if (p.getCodigo() <= 0) {
                System.out.println("Erro: Código de produto inválido para exclusão.");
                return false;
            }

            ProdutoDAO dao = new ProdutoDAO();
            return dao.excluir(p);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<Produto> listarTodos() {
        try {
            ProdutoDAO dao = new ProdutoDAO();
            return dao.getProdutos();

        } catch (Exception e) {
            e.printStackTrace();
        }
        // retorna uma lista vazia em vez de null para evitar NullPointerException na tela
        return new ArrayList<>();
    }

    public ArrayList<Produto> buscarPorNome(String nome) {
        try {
            // se vier nulo da tela, transforma em string vazia para o LIKE do SQL não quebrar
            if (nome == null) {
                nome = "";
            }

            ProdutoDAO dao = new ProdutoDAO();
            return dao.getProdutosPorNome(nome);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }
}
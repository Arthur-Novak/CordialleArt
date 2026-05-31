package dao;

import model.Produto;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ProdutoDAO {

    private static Connection conexao;
    private static Statement stmt;
    private static ResultSet rs;

    public ProdutoDAO() throws SQLException {
        conexao = ConectaDBPostgres.getConexao();
        stmt = conexao.createStatement();
    }

    public boolean inserir(Produto p) throws SQLException {
        String sql = "INSERT INTO produto(nome, descricao, preco) " +
                "VALUES ('" + p.getNome() + "','"
                + p.getDescricao() + "',"
                + p.getPreco() + ")";

        System.out.println("SQL --> " + sql);
        stmt.execute(sql);

        return true;
    }

    public boolean excluir(Produto p) throws SQLException {
        String sql = "DELETE FROM produto WHERE codigo=" + p.getCodigo();
        stmt.execute(sql);

        return true;
    }

    public boolean atualizar(Produto p) throws SQLException {
        String sql = "UPDATE produto " +
                "SET nome='" + p.getNome() + "'," +
                " descricao='" + p.getDescricao() + "'," +
                " preco=" + p.getPreco() + " WHERE codigo=" + p.getCodigo();

        stmt.execute(sql);

        return true;
    }

    public ArrayList<Produto> getProdutosPorNome(String nome) throws SQLException {
        ArrayList<Produto> produtos = new ArrayList<>();

        ResultSet rs = stmt.executeQuery(
                "SELECT * FROM produto WHERE nome LIKE '%" + nome + "%' ");

        while (rs.next()) {
            Produto produto = new Produto();
            produto.setCodigo(rs.getInt("codigo"));
            produto.setNome(rs.getString("nome"));
            produto.setDescricao(rs.getString("descricao"));
            produto.setPreco(rs.getDouble("preco"));

            produtos.add(produto);
        }

        return produtos;
    }

    public ArrayList<Produto> getProdutos() throws SQLException {
        ArrayList<Produto> produtos = new ArrayList<>();

        ResultSet rs = stmt.executeQuery("SELECT * FROM produto");

        while (rs.next()) {
            Produto produto = new Produto();
            produto.setCodigo(rs.getInt("codigo"));
            produto.setNome(rs.getString("nome"));
            produto.setDescricao(rs.getString("descricao"));
            produto.setPreco(rs.getDouble("preco"));

            produtos.add(produto);
        }

        return produtos;
    }
}
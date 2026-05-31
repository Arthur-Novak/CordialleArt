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

@WebServlet("/relatorio")
public class RelatorioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // 1. Busca os dados brutos no banco
            ProdutoDAO dao = new ProdutoDAO();
            ArrayList<Produto> produtos = dao.getProdutos();

            // 2. Variáveis para armazenar o processamento
            int totalProdutos = 0;
            double valorTotalCatalogo = 0.0;
            double mediaPreco = 0.0;
            Produto maisCaro = null;
            Produto maisBarato = null;

            // 3. Lógica de Processamento (Relatório/Estatísticas)
            if (produtos != null && !produtos.isEmpty()) {
                totalProdutos = produtos.size();
                maisCaro = produtos.get(0);
                maisBarato = produtos.get(0);

                for (Produto p : produtos) {
                    valorTotalCatalogo += p.getPreco();

                    // Descobre o produto mais caro
                    if (p.getPreco() > maisCaro.getPreco()) {
                        maisCaro = p;
                    }
                    // Descobre o produto mais barato
                    if (p.getPreco() < maisBarato.getPreco()) {
                        maisBarato = p;
                    }
                }

                // Calcula o ticket médio do catálogo
                mediaPreco = valorTotalCatalogo / totalProdutos;
            }

            // 4. Envia os dados já processados para a View (JSP)
            request.setAttribute("totalProdutos", totalProdutos);
            request.setAttribute("valorTotalCatalogo", valorTotalCatalogo);
            request.setAttribute("mediaPreco", mediaPreco);
            request.setAttribute("maisCaro", maisCaro);
            request.setAttribute("maisBarato", maisBarato);

        } catch (Exception e) {
            e.printStackTrace();
        }

        // 5. Encaminha para a tela de exibição
        RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/pages/Relatorio.jsp");
        rd.forward(request, response);
    }
}
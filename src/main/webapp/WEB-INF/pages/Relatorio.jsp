<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Relatórios e Estatísticas - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/relatorio.css">
</head>
<body class="bg-light py-5">

<div class="container">

    <div class="d-flex justify-content-between align-items-center mb-5">
        <div>
            <h2 class="fw-bold mb-0" style="color: var(--dark-green);">
                <i class="fa-solid fa-chart-pie me-2"></i> Dashboard Financeiro e Estoque
            </h2>
            <p class="text-muted mt-1">Visão geral processada a partir dos registos do CRUD de Produtos.</p>
        </div>
        <a href="${pageContext.request.contextPath}/produto?acao=dashboard" class="btn btn-outline-secondary">
            <i class="fa-solid fa-arrow-left me-2"></i> Voltar ao Painel
        </a>
    </div>

    <c:choose>
        <c:when test="${totalProdutos > 0}">

            <div class="row g-4 mb-4">
                <div class="col-md-4">
                    <div class="stat-card">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-muted text-uppercase mb-2">Total de Produtos</h6>
                                <h2 class="fw-bold mb-0">${totalProdutos} <span class="fs-6 fw-normal text-muted">itens cadastrados</span></h2>
                            </div>
                            <i class="fa-solid fa-box-open stat-icon"></i>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="stat-card border-left-success">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-muted text-uppercase mb-2">Valor Total em Catálogo</h6>
                                <h2 class="fw-bold mb-0">
                                    R$ <fmt:formatNumber value="${valorTotalCatalogo}" pattern="#,##0.00" />
                                </h2>
                            </div>
                            <i class="fa-solid fa-sack-dollar stat-icon" style="color: #2e8b57;"></i>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="stat-card border-left-info">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h6 class="text-muted text-uppercase mb-2">Preço Médio / Ticket</h6>
                                <h2 class="fw-bold mb-0">
                                    R$ <fmt:formatNumber value="${mediaPreco}" pattern="#,##0.00" />
                                </h2>
                            </div>
                            <i class="fa-solid fa-calculator stat-icon" style="color: #4682b4;"></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-4">
                <div class="col-md-6">
                    <div class="form-card text-center card-maior-valor">
                        <h5 class="text-muted mb-3"><i class="fa-solid fa-arrow-trend-up me-2"></i>Produto de Maior Valor</h5>
                        <h4 class="fw-bold" style="color: var(--dark-green);">${maisCaro.nome}</h4>
                        <p class="fs-4 fw-bold mb-1">R$ <fmt:formatNumber value="${maisCaro.preco}" pattern="#,##0.00" /></p>
                        <span class="badge bg-secondary">Código #${maisCaro.codigo}</span>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-card text-center card-menor-valor">
                        <h5 class="text-muted mb-3"><i class="fa-solid fa-arrow-trend-down me-2"></i>Produto de Menor Valor</h5>
                        <h4 class="fw-bold" style="color: var(--dark-green);">${maisBarato.nome}</h4>
                        <p class="fs-4 fw-bold mb-1">R$ <fmt:formatNumber value="${maisBarato.preco}" pattern="#,##0.00" /></p>
                        <span class="badge bg-secondary">Código #${maisBarato.codigo}</span>
                    </div>
                </div>
            </div>

        </c:when>

        <c:otherwise>
            <div class="alert alert-warning text-center py-5 mt-4">
                <i class="fa-solid fa-circle-exclamation fs-1 mb-3"></i>
                <h4>Dados insuficientes</h4>
                <p>Cadastre alguns produtos no CRUD para que o sistema possa gerar os relatórios financeiros.</p>
            </div>
        </c:otherwise>
    </c:choose>

</div>

</body>
</html>
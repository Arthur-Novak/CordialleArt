<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Produtos - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="py-5">

<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h1 class="title-font mb-0">Catálogo de Produtos</h1>
            <p class="text-muted small">Gerencie os itens disponíveis na loja</p>
        </div>
        <a href="${pageContext.request.contextPath}/produto?acao=cadastrar" class="btn btn-dark-green">+ Novo Produto</a>
    </div>

    <div class="table-card">
        <table class="table table-hover mb-0">
            <thead>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>Descrição</th>
                <th>Preço</th>
                <th class="text-end">Ações</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="produto" items="${produtos}">
                <tr>
                    <td>#${produto.codigo}</td>
                    <td class="fw-medium">${produto.nome}</td>
                    <td class="text-muted small">${produto.descricao}</td>
                    <td>R$ ${produto.preco}</td>
                    <td class="text-end">
                        <a href="${pageContext.request.contextPath}/produto?acao=editar&id=${produto.codigo}" class="action-link link-edit">Editar</a>
                        <a href="${pageContext.request.contextPath}/produto?acao=deletar&id=${produto.codigo}" class="action-link link-delete">Excluir</a>
                    </td>
                </tr>
            </c:forEach>

            <c:if test="${empty produtos}">
                <tr>
                    <td colspan="5" class="text-center py-4 text-muted">Nenhum produto cadastrado ainda.</td>
                </tr>
            </c:if>
            </tbody>
        </table>
    </div>

    <div class="mt-4">
        <a href="${pageContext.request.contextPath}/produto?acao=dashboard" class="btn btn-outline-green">Voltar ao Painel</a>
    </div>
</div>

</body>
</html>
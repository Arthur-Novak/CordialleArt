<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuários - Cordialle Art</title>

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
            <h1 class="title-font mb-0">Controle de Usuários</h1>
            <p class="text-muted small">Gerencie os acessos ao sistema administrativo</p>
        </div>
        <a href="${pageContext.request.contextPath}/usuario?acao=cadastrar" class="btn btn-dark-green">+ Novo Usuário</a>
    </div>

    <div class="table-card">
        <table class="table table-hover mb-0">
            <thead>
            <tr>
                <th>Código</th>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Status</th>
                <th class="text-end">Ações</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="usuario" items="${usuarios}">
                <tr>
                    <td>#${usuario.codigo}</td>
                    <td class="fw-medium">${usuario.nome}</td>
                    <td class="text-muted">${usuario.email}</td>
                    <td class="text-muted">${usuario.telefone}</td>
                    <td>
                        <c:choose>
                            <c:when test="${usuario.ativo}">
                                <span class="badge bg-success">Ativo</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-danger">Inativo</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td class="text-end">
                        <a href="${pageContext.request.contextPath}/usuario?acao=editar&id=${usuario.codigo}" class="action-link link-edit">Editar</a>
                        <a href="${pageContext.request.contextPath}/usuario?acao=deletar&id=${usuario.codigo}" class="action-link link-delete">Excluir</a>
                    </td>
                </tr>
            </c:forEach>

            <c:if test="${empty usuarios}">
                <tr>
                    <td colspan="6" class="text-center py-4 text-muted">Nenhum usuário encontrado no sistema.</td>
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
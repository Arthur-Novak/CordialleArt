<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Usuário - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 py-5">

<div class="container text-center" style="max-width: 500px;">
    <div class="form-card" style="border-top: 5px solid var(--danger-red);">

        <div class="mb-4">
            <i class="fa-solid fa-triangle-exclamation" style="font-size: 4rem; color: var(--danger-red);"></i>
        </div>

        <h2 class="fw-bold mb-3">Tem certeza?</h2>

        <p class="text-muted mb-4">
            Você está prestes a excluir permanentemente o usuário:<br>
            <strong style="color: var(--dark-green); font-size: 1.2rem;">${usuario.nome}</strong><br>
            <span class="small">${usuario.email}</span>
        </p>

        <div class="alert alert-danger py-2 mb-4 small" role="alert">
            Esta ação não poderá ser desfeita e o usuário perderá o acesso ao sistema.
        </div>

        <form action="${pageContext.request.contextPath}/usuario?acao=deletar" method="POST">

            <input type="hidden" name="codigo" value="${usuario.codigo}">

            <div class="d-flex gap-2 justify-content-center mt-2">
                <a href="${pageContext.request.contextPath}/usuario?acao=listar" class="btn btn-light border px-4">Cancelar</a>
                <button type="submit" class="btn btn-danger px-4">Sim, Excluir</button>
            </div>
        </form>

    </div>
</div>

<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
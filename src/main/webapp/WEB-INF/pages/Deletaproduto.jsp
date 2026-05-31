<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Produto - Cordialle Art</title>

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
            Você está prestes a excluir permanentemente o produto do catálogo:<br>
            <strong style="color: var(--dark-green); font-size: 1.2rem;">${produto.nome}</strong><br>
            <span class="small">Preço: R$ ${produto.preco}</span>
        </p>

        <div class="alert alert-danger py-2 mb-4 small" role="alert">
            Esta ação apagará o produto do banco de dados e não poderá ser desfeita.
        </div>

        <form action="${pageContext.request.contextPath}/produto?acao=deletar" method="POST">

            <input type="hidden" name="codigo" value="${produto.codigo}">

            <div class="d-flex gap-2 justify-content-center mt-2">
                <a href="${pageContext.request.contextPath}/produto?acao=listar" class="btn btn-light border px-4">Cancelar</a>
                <button type="submit" class="btn btn-danger px-4">Sim, Excluir</button>
            </div>
        </form>

    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
</body>
</html>
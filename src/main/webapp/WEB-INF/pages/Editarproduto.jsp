<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Produto - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 py-5">

<div class="container" style="max-width: 600px;">
    <div class="text-center mb-4">
        <h1 class="title-font">Editar Produto</h1>
        <p class="text-muted small">Atualize as informações do produto #${produto.codigo}</p>
    </div>

    <div class="form-card">
        <form action="${pageContext.request.contextPath}/produto?acao=atualizar" method="POST">

            <input type="hidden" name="codigo" value="${produto.codigo}">

            <div class="mb-3">
                <label for="nome" class="form-label fw-medium">Nome do Produto</label>
                <input type="text" class="form-control" id="nome" name="nome" required value="${produto.nome}">
            </div>

            <div class="mb-3">
                <label for="preco" class="form-label fw-medium">Preço (R$)</label>
                <input type="number" step="0.01" class="form-control" id="preco" name="preco" required value="${produto.preco}">
            </div>

            <div class="mb-4">
                <label for="descricao" class="form-label fw-medium">Descrição</label>
                <textarea class="form-control" id="descricao" name="descricao" rows="4" required>${produto.descricao}</textarea>
            </div>

            <div class="d-flex gap-2 justify-content-end mt-4">
                <a href="${pageContext.request.contextPath}/produto?acao=listar" class="btn btn-light border">Cancelar</a>
                <button type="submit" class="btn btn-dark-green px-4">Atualizar Produto</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
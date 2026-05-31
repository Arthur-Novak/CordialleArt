<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Produto - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 py-5">

<div class="container" style="max-width: 600px;">
    <div class="text-center mb-4">
        <h1 class="title-font">Novo Produto</h1>
        <p class="text-muted small">Adicione um novo item à coleção da loja</p>
    </div>

    <div class="form-card">
        <form action="${pageContext.request.contextPath}/produto?acao=inserir" method="POST">

            <div class="mb-3">
                <label for="nome" class="form-label fw-medium">Nome do Produto</label>
                <input type="text" class="form-control" id="nome" name="nome" required placeholder="Ex: Caderno Artesanal">
            </div>

            <div class="mb-3">
                <label for="preco" class="form-label fw-medium">Preço (R$)</label>
                <input type="number" step="0.01" class="form-control" id="preco" name="preco" required placeholder="Ex: 89.90">
            </div>

            <div class="mb-4">
                <label for="descricao" class="form-label fw-medium">Descrição</label>
                <textarea class="form-control" id="descricao" name="descricao" rows="4" required placeholder="Detalhes do produto, materiais usados, etc."></textarea>
            </div>

            <div class="d-flex gap-2 justify-content-end">
                <a href="${pageContext.request.contextPath}/produto?acao=listar" class="btn btn-light border">Cancelar</a>
                <button type="submit" class="btn btn-dark-green px-4">Salvar Produto</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
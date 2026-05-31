<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100">

<div class="container text-center" style="max-width: 900px;">

    <h1 class="title-font mb-2">Painel Administrativo</h1>
    <h4 class="text-muted fw-light mb-5">O que deseja fazer?</h4>

    <div class="row g-4">

        <div class="col-md-6">
            <div class="form-card hover-card-dash h-100 d-flex flex-column justify-content-center align-items-center p-5">
                <i class="fa-solid fa-box-open mb-3" style="font-size: 3rem; color: var(--dark-green);"></i>
                <h3 class="fw-bold mb-3">Produtos</h3>
                <p class="text-muted small mb-4">Gerencie o catálogo da papelaria. Cadastre novas coleções, atualize preços e descrições.</p>

                <a href="${pageContext.request.contextPath}/produto?acao=listar" class="btn btn-dark-green w-100 py-2">
                    Gerenciar Produtos
                </a>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-card hover-card-dash h-100 d-flex flex-column justify-content-center align-items-center p-5">
                <i class="fa-solid fa-users mb-3" style="font-size: 3rem; color: var(--dark-green);"></i>
                <h3 class="fw-bold mb-3">Usuários</h3>
                <p class="text-muted small mb-4">Controle os acessos ao sistema. Adicione novos administradores, edite dados e permissões.</p>

                <a href="${pageContext.request.contextPath}/usuario?acao=listar" class="btn btn-dark-green w-100 py-2">
                    Gerenciar Usuários
                </a>


            </div>
        </div>

    </div>

    <div class="mt-5">
        <a href="${pageContext.request.contextPath}/home" class="btn btn-outline-green px-4">
            <i class="fa-solid fa-arrow-left me-2"></i> Voltar para a Loja
        </a>
        </a>
    </div>


    <div class="mt-5">
        <a href="${pageContext.request.contextPath}/relatorio" class="btn btn-dark-green mb-3 w-100">
            <i class="fa-solid fa-chart-line me-2"></i> Ver Relatórios Financeiros
        </a>
        </a>
    </div>



</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
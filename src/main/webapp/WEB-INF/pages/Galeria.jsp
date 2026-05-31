<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galeria - Cordialle Art</title>

    <!-- Bootstrap e Fontes -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/galeria.css">
</head>
<body style="background-color: var(--bg-main);">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg py-4 bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand mx-auto order-0 script-font" href="${pageContext.request.contextPath}/home" style="color: var(--dark-green); font-size: 2rem;">Cordialle Art</a>

        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2 d-flex justify-content-between">
            <ul class="navbar-nav mx-auto align-items-center">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home">Loja</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/quemsomos">Quem somos</a></li>
                <li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath}/galeria">Galeria</a></li>
            </ul>
            <div class="nav-icons ms-auto">
                <a href="${pageContext.request.contextPath}/carrinho"><i class="fa-solid fa-bag-shopping"></i></a>
                <a href=""><i class="fa-regular fa-user"></i></a>
            </div>
        </div>
    </div>
</nav>

<!-- Conteúdo da Galeria -->
<div class="container py-5">
    <div class="text-center mb-5">
        <h1 class="title-font" style="font-size: 4rem;">Nossa Coleção</h1>
        <p class="text-muted">Escolha as peças que vão guardar as suas melhores memórias.</p>
    </div>

    <div class="row g-4">
        <!-- O laço JSTL para percorrer os produtos que vieram do banco -->
        <c:forEach var="produto" items="${produtos}">
            <div class="col-md-4 col-lg-3">
                <div class="product-card">

                    <!-- Imagem Fictícia (Pode ser substituída por uma tag img real depois) -->
                    <div class="product-img-placeholder">
                        <i class="fa-solid fa-book-open"></i>
                    </div>

                    <div class="p-4 d-flex flex-column flex-grow-1">
                        <h5 class="fw-bold mb-2">${produto.nome}</h5>
                        <p class="text-muted small flex-grow-1">${produto.descricao}</p>
                        <div class="price-tag mb-3">R$ ${produto.preco}</div>

                        <!-- Formulário de Compra -->
                        <form action="${pageContext.request.contextPath}/carrinho?acao=adicionar" method="POST" class="mt-auto">
                            <!-- Envia o ID do produto escondido -->
                            <input type="hidden" name="produtoId" value="${produto.codigo}">

                            <div class="d-flex gap-2">
                                <!-- Seleção de Quantidade -->
                                <input type="number" name="quantidade" class="qtd-input" value="1" min="1" max="50" required title="Quantidade">

                                <!-- Botão de Adicionar ao Carrinho -->
                                <button type="submit" class="btn btn-dark-green flex-grow-1">
                                    <i class="fa-solid fa-cart-plus"></i> Comprar
                                </button>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </c:forEach>

        <!-- Mensagem caso a loja esteja sem produtos cadastrados -->
        <c:if test="${empty produtos}">
            <div class="col-12 text-center py-5">
                <i class="fa-solid fa-box-open mb-3" style="font-size: 3rem; color: var(--light-green);"></i>
                <h4 class="text-muted">Nenhum produto disponível no momento.</h4>
                <p class="text-muted">Volte em breve para conferir as novidades do ateliê!</p>
            </div>
        </c:if>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
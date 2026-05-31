<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Meu Carrinho - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/carrinho.css">
</head>
<body>

<nav class="navbar navbar-expand-lg py-4 bg-white shadow-sm mb-5">
    <div class="container d-flex justify-content-between">
        <a class="navbar-brand script-font m-0" href="${pageContext.request.contextPath}/home" style="color: var(--dark-green); font-size: 2rem; text-decoration: none;">Cordialle Art</a>
        <a href="${pageContext.request.contextPath}/galeria" class="btn btn-outline-green btn-sm">
            <i class="fa-solid fa-arrow-left me-1"></i> Voltar à Galeria
        </a>
    </div>
</nav>

<div class="container py-2">
    <h1 class="title-font mb-4">Meu Carrinho</h1>

    <div class="row g-4">
        <div class="col-lg-8">
            <div class="cart-card">
                <table class="table table-hover align-middle mb-0">
                    <thead>
                    <tr>
                        <th scope="col" class="border-0">Produto</th>
                        <th scope="col" class="text-center border-0">Preço</th>
                        <th scope="col" class="text-center border-0">Quantidade</th>
                        <th scope="col" class="text-end border-0">Subtotal</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td class="py-3">
                            <div class="product-name">Caderno Artesanal Botânico</div>
                            <div class="product-meta">Capa dura em tecido, costura copta</div>
                        </td>
                        <td class="text-center py-3">R$ 89,90</td>
                        <td class="text-center py-3">
                            <span class="quantity-badge">2x</span>
                        </td>
                        <td class="text-end fw-bold py-3">R$ 179,80</td>
                    </tr>

                    <tr>
                        <td class="py-3">
                            <div class="product-name">Bloco de Notas Ecológico</div>
                            <div class="product-meta">Papel reciclado 90g, 50 folhas</div>
                        </td>
                        <td class="text-center py-3">R$ 29,90</td>
                        <td class="text-center py-3">
                            <span class="quantity-badge">1x</span>
                        </td>
                        <td class="text-end fw-bold py-3">R$ 29,90</td>
                    </tr>

                    <tr>
                        <td class="py-3">
                            <div class="product-name">Caneta Tinteiro Vintage</div>
                            <div class="product-meta">Pena fina, recarregável com pistão</div>
                        </td>
                        <td class="text-center py-3">R$ 45,00</td>
                        <td class="text-center py-3">
                            <span class="quantity-badge">1x</span>
                        </td>
                        <td class="text-end fw-bold py-3">R$ 45,00</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="cart-card">
                <h4 class="fw-bold mb-4 pb-2 border-bottom">Resumo do Pedido</h4>

                <div class="d-flex justify-content-between mb-3">
                    <span class="text-muted">Subtotal (4 itens)</span>
                    <span class="fw-medium">R$ 254,70</span>
                </div>
                <div class="d-flex justify-content-between mb-4 pb-3 border-bottom">
                    <span class="text-muted">Entrega</span>
                    <span class="text-success small fw-bold">Grátis</span>
                </div>

                <div class="d-flex justify-content-between mb-4">
                    <strong class="fs-5">Total</strong>
                    <strong class="fs-5" style="color: var(--dark-green);">R$ 254,70</strong>
                </div>

                <button class="btn btn-dark-green w-100 py-3 mb-2 fw-medium">
                    Proceder para o Checkout
                </button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
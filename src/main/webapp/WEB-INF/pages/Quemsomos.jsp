<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quem Somos - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">

    <style>
        .about-img {
            border-radius: 12px;
            object-fit: cover;
            width: 100%;
            height: 100%;
            min-height: 400px;
            box-shadow: 0 15px 30px rgba(27, 56, 38, 0.1);
        }
        .story-text {
            line-height: 1.8;
            font-size: 1.1rem;
        }
        .signature {
            font-family: 'Alex Brush', cursive;
            font-size: 2.5rem;
            color: var(--dark-green);
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg py-4">
    <div class="container">
        <div class="collapse navbar-collapse w-100 order-1 order-md-0 dual-collapse2">
            <ul class="navbar-nav me-auto"></ul>
        </div>

        <a class="navbar-brand mx-auto order-0 script-font" href="${pageContext.request.contextPath}/home">Cordialle Art</a>

        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2 d-flex justify-content-between">
            <ul class="navbar-nav mx-auto align-items-center">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/home">Loja</a></li>
                <li class="nav-item"><a class="nav-link active" href="Quemsomos.jsp">Quem somos</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/galeria">Galeria</a></li>

                <li class="nav-item ms-lg-4">
                    <a class="nav-link fw-bold" style="color: var(--dark-green); border: 2px solid var(--light-green); border-radius: 8px; padding: 5px 15px;"
                       href="${pageContext.request.contextPath}/produto?acao=dashboard">
                        <i class="fa-solid fa-lock me-1"></i> DASHBOARD
                    </a>
                </li>
            </ul>
            <div class="nav-icons ms-auto">
                <a href="${pageContext.request.contextPath}/carrinho"><i class="fa-solid fa-bag-shopping"></i></a>
                <a href=""><i class="fa-regular fa-user"></i></a>
            </div>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target=".dual-collapse2">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

<section class="container py-5 mt-4">
    <div class="row align-items-center gy-5">

        <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/img/atelie.jpg" alt="Nosso Ateliê" class="about-img">
        </div>

        <div class="col-lg-5 offset-lg-1">
            <h5 class="text-uppercase text-muted small letter-spacing-1 mb-2">Muito Prazer</h5>
            <h1 class="title-font mb-4" style="font-size: 3.5rem;">Nossa História</h1>

            <div class="story-text text-muted">
                <p>A Cordialle Art nasceu de um fascínio simples e genuíno: a capacidade que o papel tem de guardar sentimentos. O que começou como um hobby nas horas vagas, criando cadernos para uso próprio, rapidamente se transformou numa paixão que precisava ser compartilhada.</p>

                <p>Nosso ateliê é um espaço de calma em meio ao caos digital. Todo o processo é feito à mão, com atenção a cada detalhe, desde a escolha da gramatura do papel até a última costura da encadernação. Trabalhamos sob o olhar atento e a supervisão rigorosa da Mel, a nossa cachorrinha e mascote oficial, que garante que o ambiente esteja sempre cheio de alegria e tranquilidade enquanto as peças ganham vida.</p>

                <p>Acreditamos que presentear é uma arte. Quando você escolhe um produto nosso, não está apenas levando papelaria; está levando horas de dedicação, propósito sustentável e um pedacinho da nossa história para eternizar a sua.</p>
            </div>

            <div class="mt-5">
                <p class="signature mb-0">Cordialle Art</p>
                <span class="small text-muted text-uppercase letter-spacing-1">Fundador & Artesão</span>
            </div>
        </div>

    </div>
</section>

<section class="container py-5 mb-5 border-top">
    <div class="row text-center gy-4 mt-3">
        <div class="col-md-4">
            <i class="fa-solid fa-leaf fs-1 mb-3" style="color: var(--light-green);"></i>
            <h4 class="fw-bold">Sustentabilidade</h4>
            <p class="text-muted small px-3">Materiais reciclados e embalagens livres de plásticos para proteger o nosso planeta.</p>
        </div>
        <div class="col-md-4">
            <i class="fa-solid fa-hand-holding-heart fs-1 mb-3" style="color: var(--light-green);"></i>
            <h4 class="fw-bold">Feito à Mão</h4>
            <p class="text-muted small px-3">Cada costura e cada vinco são feitos manualmente, garantindo peças únicas e exclusivas.</p>
        </div>
        <div class="col-md-4">
            <i class="fa-solid fa-pen-nib fs-1 mb-3" style="color: var(--light-green);"></i>
            <h4 class="fw-bold">Design Autoral</h4>
            <p class="text-muted small px-3">Estampas e coleções pensadas do zero para materializar personalidade e bom gosto.</p>
        </div>
    </div>
</section>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-4 mb-lg-0">
                <h3 class="script-font text-white mb-3">Cordialle Art</h3>
                <p class="text-white-50 small mb-4">Criamos cadernos feitos à mão e papelaria sustentável para guardar os seus momentos mais bonitos.</p>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    <a href="#"><i class="fa-brands fa-pinterest"></i></a>
                    <a href="#"><i class="fa-regular fa-envelope"></i></a>
                </div>
            </div>

            <div class="col-lg-2 offset-lg-2 col-6">
                <h6 class="text-white mb-3">Links</h6>
                <a href="${pageContext.request.contextPath}/home">Loja</a>
                <a href="Quemsomos.jsp">Sobre Nós</a>
                <a href="#">Contato</a>
            </div>

            <div class="col-lg-2 col-6">
                <h6 class="text-white mb-3">Termos</h6>
                <a href="#">Termos e Condições</a>
                <a href="#">Trocas e Devoluções</a>
            </div>
        </div>

        <div class="row mt-5 pt-4 border-top border-secondary">
            <div class="col-12 text-center text-white-50 small">
                &copy; 2026 Cordialle Art. Todos os direitos reservados.
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
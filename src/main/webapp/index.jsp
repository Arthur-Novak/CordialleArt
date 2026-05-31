<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100">

<div class="login-card text-center">
    <h1 class="script-font mb-1">Cordialle Art</h1>
    <p class="text-muted mb-4 small">Entre para continuar a criar memórias</p>

    <c:if test="${not empty erro}">
        <div class="alert alert-danger py-2 mb-4" role="alert">
                ${erro}
        </div>
    </c:if>

    <c:if test="${not empty mensagem}">
        <div class="alert alert-success py-2 mb-4" role="alert">
                ${mensagem}
        </div>
    </c:if>

    <form action="login" method="post">

        <div class="mb-3 text-start">
            <label for="email" class="form-label small fw-medium text-uppercase letter-spacing-1">
                <b>Login</b>
            </label>
            <input type="email" class="form-control" id="email" name="email" required placeholder="seu@email.com">
        </div>

        <div class="mb-4 text-start">
            <div class="d-flex justify-content-between align-items-center">
                <label for="senha" class="form-label small fw-medium text-uppercase letter-spacing-1 mb-0">
                    <b>Senha</b>
                </label>
            </div>
            <input type="password" class="form-control mt-2" id="senha" name="senha" required placeholder="••••••••">
        </div>

        <input type="submit" class="btn btn-dark-green w-100 mb-4" value="LOGAR" name="login">
    </form>

    <p class="small text-muted mb-0">
        Ainda não tem conta? <a href="usuario?acao=cadastrar" class="custom-link fw-bold">Registar agora</a>
    </p>
</div>

</body>
</html>
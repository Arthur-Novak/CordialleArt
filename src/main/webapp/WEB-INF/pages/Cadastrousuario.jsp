<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Usuário - Cordialle Art</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/crud.css">
</head>
<body class="d-flex align-items-center justify-content-center min-vh-100 py-5">

<div class="container" style="max-width: 800px;">
    <div class="text-center mb-4">
        <h1 class="title-font">Novo Usuário</h1>
        <p class="text-muted small">Cadastre um novo administrador no sistema</p>
    </div>

    <div class="form-card">
        <form action="${pageContext.request.contextPath}/usuario?acao=inserir" method="POST">

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="nome" class="form-label fw-medium">Nome Completo</label>
                    <input type="text" class="form-control" id="nome" name="nome" required placeholder="Ex: Ana Silva">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="email" class="form-label fw-medium">E-mail</label>
                    <input type="email" class="form-control" id="email" name="email" required placeholder="ana@cordialle.com">
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="senha" class="form-label fw-medium">Senha</label>
                    <input type="password" class="form-control" id="senha" name="senha" required placeholder="••••••••">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="telefone" class="form-label fw-medium">Telefone</label>
                    <input type="text" class="form-control" id="telefone" name="telefone" placeholder="(55) 99999-9999">
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="datanascimento" class="form-label fw-medium">Data de Nascimento</label>
                    <input type="date" class="form-control" id="datanascimento" name="datanascimento">
                </div>
                <div class="col-md-4 mb-3">
                    <label for="estado" class="form-label fw-medium">Estado</label>
                    <select class="form-select" id="estado" name="estado">
                        <option value="">Selecione...</option>
                        <option value="RS">Rio Grande do Sul</option>
                        <option value="SC">Santa Catarina</option>
                        <option value="PR">Paraná</option>
                        <option value="SP">São Paulo</option>
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="cidade" class="form-label fw-medium">Cidade</label>
                    <input type="text" class="form-control" id="cidade" name="cidade" placeholder="Ex: Santa Maria">
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label fw-medium">Status do Usuário</label>
                <select class="form-select" name="ativo" style="max-width: 250px;">
                    <option value="true">Ativo (Pode acessar a loja)</option>
                    <option value="false">Inativo (Bloqueado)</option>
                </select>
            </div>

            <div class="d-flex gap-2 justify-content-end mt-4">
                <a href="${pageContext.request.contextPath}/usuario?acao=listar" class="btn btn-light border">Cancelar</a>
                <button type="submit" class="btn btn-dark-green px-4">Salvar Usuário</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
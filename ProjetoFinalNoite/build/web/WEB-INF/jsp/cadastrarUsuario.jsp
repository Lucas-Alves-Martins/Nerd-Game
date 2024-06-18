<%-- 
    Document   : cadastrarUsuario
    Created on : 02/05/2024, 13:58:28
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles/cadastrarUsuario.css">
        <title>Cadastrar Usuario</title>
    </head>
    <body>
        <div class="container-cadastro">
            <form action="cadastro-usuario" method="post">
                <div class="mb-3">
                  <label for="nome" class="form-label">Insira seu nome completo:</label>
                  <input type="text" name="nome" class="form-control" id="nome">                
                </div>
                <div class="mb-3">
                  <label for="senha" class="form-label">Senha:</label>
                  <input type="password" name="senha" class="form-control" id="senha" required>
                </div>
                <div class="mb-3">
                    <label for="usuario" class="form-label">Insira seu username:</label>
                    <input type="text" name="usuario" class="form-control" id="usuario" required>                
                </div>
                <div class="mb-3">
                    <label for="telefone" class="form-label">Insira seu telefone:</label>
                    <input type="tel" name="telefone" class="form-control" id="telefone">                
                </div>
                <div class="mb-3">
                    <label for="data-nascimento" class="form-label">Insira seu data de nascimento:</label>
                    <input type="date" name="data-nascimento" class="form-control" id="data-nascimento">                
                </div>
                <div class="mb-3">
                    <label for="cpf" class="form-label">Insira seu cpf:</label>
                    <input type="text" name="cpf" class="form-control" id="cpf">                
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>

        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>

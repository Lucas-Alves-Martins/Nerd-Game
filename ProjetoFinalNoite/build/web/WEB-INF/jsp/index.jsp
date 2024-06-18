<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./styles/index.css">
    <title>Home</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <div class="container">
        <h1 class="my-4">Listagem de Produtos</h1>
        <div class="row">
            <c:forEach var="produto" items="${produtos}">
                <div class="col-md-4 mb-3">
                    <div class="card card-custom">
                        <div class="card-body">
                            <div class="imagemProduto">
                                <img src=data:image/png;base64,${produto.imagemBase64}" alt="${produto.nome}">
                            </div>
                            <h5 class="card-title">${produto.nome}</h5>
                            <p class="card-text categoria-text">Categoria: ${produto.categoria}</p>
                            <p class="card-text">Valor: R$ ${produto.valor}</p>
                            <p class="card-text">Descrição: ${produto.descricao}</p>
                        </div>
                        <a href="./produto-${produto.idProduto}" class="btn btn-primary">Comprar</a>
                    </div>
                </div>
            </c:forEach>
            <a href="./CadastroProdutosController">bah</a>
        </div>
    </div>
</body>

</html>

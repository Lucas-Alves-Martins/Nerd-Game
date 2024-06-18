<%-- 
    Document   : telaProduto
    Created on : 14/05/2024, 16:27:53
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela Produto</title>
    </head>
    <body>
         <jsp:include page="header.jsp"></jsp:include>
         <div class="row">
            <c:forEach var="produto" items="${produtos}">
                <div class="col-md-4 mb-3">
                    <div class="card card-custom">
                        <div class="card-body">
                             <a href="./produto?somenteUm=${produto.idProduto}">
                            <div class="imagemProduto">
                                <img src=data:image/png;base64,${produto.imagemBase64}" alt="${produto.nome}">
                            </div>
                            <h5 class="card-title">${produto.nome}</h5>
                            <p class="card-text categoria-text">Categoria: ${produto.categoria}</p>
                            <p class="card-text">Valor: R$ ${produto.valor}</p>
                            <p class="card-text">Descrição: ${produto.descricao}</p>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
            <a href="./CadastroProdutosController">bah</a>
        </div>
    </body>
</html>

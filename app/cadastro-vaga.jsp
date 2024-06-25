<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%@include file="../control/conexao.jsp" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recrutador | Empregos do Futuro</title>
    <link rel="stylesheet" href="../css/app_style/style_recrutador.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
    <%
        if(session.getAttribute("usuario") == null )
        {
            out.print("Conteudo de acesso restrito");
            out.print("<br><br>");
            out.print("<a href='../login.html'>Fazer Login</a>");
        }
        else
        {
    %>
    <nav>
        <div class="parte">
            <a href="./cadastro-vaga.jsp">Cadastrar Vaga</a>
        </div>

        <div class="parte">
            <a href="./recrutador.jsp"><% out.print( session.getAttribute("usuario")); %></a>
            <a href="../control/logout.jsp"><i class="bi bi-box-arrow-right"></i></a>
        </div>
    </nav>

    <main>
        <div class="content">
            <div class="titulo">
                <h1>Cadastrar Vaga</h1>
                <span>Insira as informações abaixo para cadastrar um novo emprego do Futuro</span>
            </div>

            <form action="../control/cadastrarVaga.jsp" method="post">
                <div class="line">
                    <div class="info">
                        <label for="txtCargo">Cargo</label>
                        <input type="text" id="txtCargo" name="txtCargo" placeholder="Cargo" autocomplete="off">
                    </div>
                    <div class="info">
                        <label for="txtSalario">Salário</label>
                        <input type="text" id="txtSalario" name="txtSalario" placeholder="Salario" autocomplete="off">
                    </div>
                </div>

                <div class="info">
                    <label for="txtDesc">Descrição</label>
                    <textarea name="txtDesc" id="txtDesc" placeholder="Descrição"></textarea>
                </div>

                <div class="line">
                    <div class="info">
                        <label for="txtEndereco">Endereço</label>
                        <input type="text" id="txtEndereco" name="txtEndereco" placeholder="Endereco" autocomplete="off">
                    </div>

                    <div class="info">
                        <label for="txtContrato">Tipo de Contrato</label>
                        <select name="txtContrato" id="txtContrato">
                            <option value=""></option>
                            <option value="1">CLT</option>
                            <option value="2">Estágio</option>
                            <option value="3">Temporário</option>
                            <option value="4">Pessoa Jurídica</option>
                        </select>
                    </div>
                </div>

                <div class="line">
                    <div class="info">
                        <label for="txtDepartamento">Departamento</label>
                        <select name="txtDepartamento" id="txtDepartamento">
                            <option value=""> </option>
                            <option value="1">Tecnologia</option>
                            <option value="2">Saúde</option>
                            <option value="3">Marketing</option>
                            <option value="4">Jurídico</option>
                            <option value="5">Comercial</option>
                        </select>
                    </div>
                    <div class="info">
                        <label for="txtIdioma">Idioma Necessário</label>
                        <select name="txtIdioma" id="txtIdioma">
                            <option value=""></option>
                            <option value="1">Inglês</option>
                            <option value="2">Espanhol</option>
                            <option value="3">Alemão</option>
                        </select>
                    </div>
                </div>

                <div class="botao">
                    <button class="btnCadastro">CADASTRAR VAGA</button>
                </div>
            </form>
        </div>
    </main>

    <% } %>
</body>
</html>
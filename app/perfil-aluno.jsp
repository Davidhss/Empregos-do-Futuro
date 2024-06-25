<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%@include file="../control/conexao.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aluno | Perfil</title>

    <!-- Estilização -->
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
            <a href="./aluno.jsp">Vagas</a>
        </div>

        <div class="parte">
            <a href="./recrutador.jsp"><% out.print(session.getAttribute("usuario")); %></a>
            <a href="../control/logout.jsp"><i class="bi bi-box-arrow-right"></i></a>
        </div>
    </nav>

        <main>
        <div class="content">
            <div class="titulo">
                <h1><% out.print(session.getAttribute("usuario")); %></h1>
                <span class="cargo">Aluno</span>
            </div>

            <form action="#" method="post">
                <div class="line">
                    <div class="info">
                        <label for="txtCelular">Celular</label>
                        <input type="number" id="txtCelular" name="txtCelular" autocomplete="off" disabled value="<% out.print(session.getAttribute("celular")); %>">
                    </div>
                    <div class="info">
                        <label for="txtemail">Email</label>
                        <input type="text" id="txtemail" name="txtemail" autocomplete="off"disabled value ="<% out.print(session.getAttribute("email")); %>">
                    </div>
                </div>

                <div class="info">
                        <label for="txtsenha">Senha</label>
                        <input type="text" id="txtsenha" name="txtsenha" autocomplete="off" disabled value="<% out.print(session.getAttribute("senha")); %>">
                    </div>
            </form>
        </div>
    </main>


    <%
        }
    %>
</body>
</html>
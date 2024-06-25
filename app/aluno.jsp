<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%@include file="../control/conexao.jsp" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aluno | Vagas</title>

    <!-- Estilização -->
    <link rel="stylesheet" href="../css/app_style/style_aluno.css">
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
            out.print("<div class='content-up'>");
                out.print("<div class='texto-aluno'>");
                    out.print("<h1>Bem vindo(a) <a href='./perfil-aluno.jsp'>");
                        out.print( session.getAttribute("usuario"));
                    out.print("</a>, </h1>");
                    
                    out.print("<h2>Encontre seu emprego dos sonhos aqui</h2>");
                    out.print("<a href='../control/logout.jsp' class='logout'>Sair</a>");
                    out.print("<div class='barra-pesquisa'>");
                        out.print("<img src='../img/magnifier_icon-icons.com_56375.png' alt='Buscar'>");
                        out.print("<input type='text' id='txtBusca' placeholder='Pesquisar...'>");
                        out.print("<button id='btnBusca'> Procurar</button>");
                    out.print("</div>");
                out.print("</div>");
            out.print("</div>");
            out.print("<div class='content-down'>");
                out.print("<div class='jobs'>");
                    out.print("<h1>Trabalhos Recomendados</h1>");
                out.print("</div>");
            
                String sql = "SELECT * FROM tbvaga";

                // Cria o statement para executar o camando no banco
                PreparedStatement stm = conexao.prepareStatement( sql );

                ResultSet dados = stm.executeQuery();

                out.print("<div class='exibir'>");
                    out.print("<table border='1' cellspacing='0' rules='none'>");

                        out.print("<thead>");
                            out.print("<tr>");
                                out.print("<th class='conteudo'>ID</th>");
                                out.print("<th class='conteudo'>Cargo</th>");
                                out.print("<th class='conteudo'>Local</th>");
                                out.print("<th class='conteudo'>Salario</th>");
                                out.print("<th class='conteudo'>Data de Criação</th>");
                            out.print("</tr>");
                        out.print("</thead>");

                        while( dados.next() )
                        {
                            out.print("<tbody>");
                                out.print("<tr>");
                                    out.print("<td class='conteudo'>");
                                        out.print( dados.getString("id") );
                                    out.print("</td>");

                                    out.print("<td class='conteudo'>");
                                        out.print( dados.getString("cargo") );
                                    out.print("</td>");

                                    out.print("<td class='conteudo'>");
                                        out.print( dados.getString("endereco") );
                                    out.print("</td>");

                                    out.print("<td class='conteudo'>");
                                        out.print("R$ " + dados.getFloat("salario") );
                                    out.print("</td>");

                                    out.print("<td class='conteudo'>");
                                        out.print( dados.getDate("data_criacao") );
                                    out.print("</td>");

                                    out.print("<td>");
                                        out.print("<a href='./aluno.jsp' class='link-vaga'>Cadidatar-se</a>");
                                    out.print("</td>");
                                out.print("</tr>");
                            out.print("</tbody>");

                        }

                    out.print("</table>");
                out.print("</div>");
            out.print("</div>");
            
            out.print("<div class='img-home'>");
                out.print("<img src='../img/Logo.png' alt='' />");
            out.print("</div>");
        }
    %>
</body>
</html>
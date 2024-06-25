<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>

<%
    String vlogin = request.getParameter("txtEmail");
    String vsenha = request.getParameter("txtSenha");
%>

<%@include file="../control/conexao.jsp" %>

<%
    String sql = "SELECT * FROM tbaluno WHERE email=? AND senha=?";

    PreparedStatement stm = conexao.prepareStatement( sql );

    stm.setString(1, vlogin) ;
    stm.setString(2, vsenha) ;

    ResultSet dados =  stm.executeQuery() ;

    if(dados.next())
    {
        session.setAttribute("usuario", dados.getString("nome"));
        session.setAttribute("email", dados.getString("email"));
        session.setAttribute("celular", dados.getString("celular"));
        session.setAttribute("senha", dados.getString("senha"));

       response.sendRedirect("../app/aluno.jsp");
    }
    else 
    {
        sql = "SELECT * FROM tbrecrutador WHERE email=? AND senha=?";
        stm = conexao.prepareStatement(sql);
        stm.setString(1, vlogin);
        stm.setString(2, vsenha);
        dados = stm.executeQuery();

        if (dados.next()) {
            session.setAttribute("usuario", dados.getString("nome"));
            session.setAttribute("email", dados.getString("email"));
            session.setAttribute("celular", dados.getString("celular"));
            session.setAttribute("senha", dados.getString("senha"));

            response.sendRedirect("../app/recrutador.jsp");
        } else {
            out.print("<script>alert('Login incorreto'); window.location.href = '../login.html';</script>");
        }
    }


%>

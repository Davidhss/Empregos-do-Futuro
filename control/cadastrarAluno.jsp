<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>

<%
    String vnome = request.getParameter("txtNome");
    String vcelular = request.getParameter("txtCelular");
    String vemail = request.getParameter("txtEmail");
    String vsenha = request.getParameter("txtSenha");
    String vdataNascimento = request.getParameter("txtDataNasc");
%>

<%@include file="./conexao.jsp" %>

<%
    String sql = "insert into tbaluno (nome, celular, email, senha, data_nasc) values (?,?,?,?,?);";

    PreparedStatement stm = conexao.prepareStatement(sql);

    stm.setString( 1, vnome );
    stm.setString( 2, vcelular );
    stm.setString( 3, vemail );
    stm.setString( 4, vsenha );
    stm.setString( 5, vdataNascimento );

    stm.execute();
    stm.close();

    String url = "../login.html";
    response.sendRedirect(url);
%>
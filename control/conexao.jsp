<%@page language="java" import="java.sql.*" %>

<%
    String database = "bdempregosfuturo";
    String host = "jdbc:mysql://localhost:3306/" + database;
    String user = "root";
    String pwd = "root";

    String driver = "com.mysql.jdbc.Driver";

    // Carregar o driver na memória
    Class.forName( driver );

    // Criar variável para conectar com o banco
    Connection conexao;

    // Abrir a conexão com o banco
    conexao = DriverManager.getConnection(host, user, pwd);

%>
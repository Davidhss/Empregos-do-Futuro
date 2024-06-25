<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>

<%
    String vcargo = request.getParameter("txtCargo");
    int vsalario = Integer.parseInt(request.getParameter("txtSalario"));
    String vdesc = request.getParameter("txtDesc");
    String vendereco = request.getParameter("txtEndereco");
    String vcontrato = request.getParameter("txtContrato");
    int vdepartamento = Integer.parseInt(request.getParameter("txtDepartamento"));
    int vidioma = Integer.parseInt(request.getParameter("txtIdioma"));
%>

<%@include file="./conexao.jsp" %>

<%
    String sql = "insert into tbvaga (cargo, descricao, tipo_contrato, salario, endereco, id_departamento, id_idioma, id_recrutador, disponibilidade) values (?,?,?,?,?,?,?, 1,TRUE);";

    PreparedStatement stm = conexao.prepareStatement(sql);

    stm.setString( 1, vcargo );
    stm.setString( 2, vdesc );
    stm.setString( 3, vcontrato );
    stm.setInt( 4, vsalario );
    stm.setString( 5, vendereco );
    stm.setInt( 6, vdepartamento );
    stm.setInt( 7, vidioma );

    stm.execute();
    stm.close();

    out.print("<script>alert('Vaga cadastrada com sucesso!'); window.location.href = '../app/recrutador.jsp';</script>");
%>
<%@page language="java" import="java.sql.*" %>

<%
    if( session != null ){
        session.invalidate() ;
        response.sendRedirect("../login.html");
    }
%>
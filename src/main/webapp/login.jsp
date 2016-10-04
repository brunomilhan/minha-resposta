<%--
  Created by IntelliJ IDEA.
  User: Bruno
  Date: 04/10/2016
  Time: 09:21
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" %>
<%@page pageEncoding="UTF-8" %>
<jsp:useBean class="pratica.jsp.LoginBean" id="loginBean" scope="request"/>
<jsp:setProperty name="loginBean" property="*"/>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="login.jsp">
    Código: <input type="text" name="login"/><br/>
    Nome: <input type="text" name="nome"/><br/>
    Senha: <input type="text" name="senha"/><br/>
    Perfil: <select name="perfil">
    <option value="1">Cliente</option>
    <option value="2">Gerente</option>
    <option value="3">Administrador</option>
</select>
    <input type="submit" value="Enviar"/>

</form>
<%
    if (request.getMethod().equals("POST")) {
        if (request.getParameter("login").equals(request.getParameter("senha"))) {
%>
<div style="color:#0000ff">
    <i>
        <jsp:getProperty name="loginBean" property="login"/>
    </i>
</div>
<%
} else {
%><div style="color:#ff0000">
    <i>
        <jsp:getProperty name="loginBean" property="login"/>
    </i>
</div>

<%

        }
    }
%>
</body>
</html>
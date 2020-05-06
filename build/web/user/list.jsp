<%-- 
    Document   : list.jsp
    Created on : 05/05/2020, 23:04:13
    Author     : samymartins
--%>

<%@page import="br.gov.sp.fatec.users.Db"%>
<%@page import="br.gov.sp.fatec.users.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários - UserWebApp</title>
    </head>
    <body>
        <h1>User Web App</h1>
        <h2>Usuários</h2>
        <h3>Lista</h3>
        <h4><a href="new.jsp">Adicionar Usuário</a></h4>
        <table border="1">
            <tr>
                <th>Nome do usuário</th>
                <th>Email</th>
            </tr>
            <%for(User user: Db.getUsers()){%>
            <tr>
                <td><%=user.getName()%></td>
                <td><%=user.getEmail()%></td>
                <td>
                    <% int i = Db.getUsers().indexOf(user);%>
                    <a href="edit.jsp?i=<%=i%>">Alterar</a>
                </td>
                <td><a href="delete.jsp?i=<%=i%>">Excluir</a></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>

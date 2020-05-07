<%-- 
    Document   : new.jsp
    Created on : 05/05/2020, 23:14:02
    Author     : samymartins
--%>

<%@page import="br.gov.sp.fatec.users.Db"%>
<%@page import="br.gov.sp.fatec.users.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String error = null;
    if(request.getParameter("add")!=null){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String senha1 = request.getParameter("senha1");
        String senha2 = request.getParameter("senha2");
        if(name.isEmpty()){
            error = "Nome inválido";
        }else if(email.isEmpty()){
            error = "Email inválido";
        }else if(senha1.isEmpty()){
            error = "Senha inválida";
        }else{
            if(senha1.equals(senha2)){
                User user = new User();
                user.setNome(name);
                user.setEmail(email);
                user.setPassword(senha1);
                Db.getUsers().add(user);
                response.sendRedirect("list.jsp");
            }else{
                error = "Senhas diferentes";
            }
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários - UserWebApp</title>
    </head>
    <body>
        <h1>User Web App</h1>
        <h3><a href="../index.jsp">Início</a></h3>
        <h3><a href="list.jsp">Usuário</a></h3>
        <h3>Novo</h3>
        <%if(error!=null){%>
        <div style="color:red"><%=error%></div>
        <%}%>
        <br/>
        <form>
            Nome do usuário:<br/>
            <input type="text" name="name"/><br/>
            Email: <br/>
            <input type="text" name="email"/><br/>
            <fieldset>
                <legend>Senha</legend>
                Senha:<br/>
                <input type="password" name="senha1"/><br/>
                Confirmação da Senha:<br/>
                <input type="password" name="senha2"/><br/>
            </fieldset>
            <input type="submit" name="add" value="Adicionar"><br/>
        </form>
    </body>
</html>

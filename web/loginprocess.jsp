<%@page import="bicycle.beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            MyEntityManager myEntityManager = new MyEntityManager();

            String username = request.getParameter("username");
            String password = request.getParameter("password");

            Login login = myEntityManager.login(username, password);

            if(login!=null)
            {
                response.sendRedirect("search.jsp");
                session.setAttribute("login",login);
            }
            else
            {
                response.sendRedirect("error.jsp");
            }

        %>
    </body>
</html>

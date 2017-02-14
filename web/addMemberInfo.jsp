<%@page import="bicycle.beans.Login"%>
<%@page import="bicycle.beans.MyEntityManager"%>
<%@page import="java.util.Vector"%>
<%@page import="bicycle.beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bicycle</title>
    </head>
    <body>
        <%
            MyEntityManager myEntityManager = new MyEntityManager();
            Login login = new Login();

            login.setMemberName(request.getParameter("username"));
            login.setPassword(request.getParameter("password"));
            login.setMemberName(request.getParameter("name"));
            login.setEmail(request.getParameter("email"));
            login.setLevel(request.getParameter("level"));

            if(myEntityManager.persist(login))
                {
                response.sendRedirect("success.jsp");
                }
            else
                {
                response.sendRedirect("error.jsp");
                }
        %>
    </body>
</html>

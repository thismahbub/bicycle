<%@page import="bicycle.beans.BicycleOption"%>
<%@page import="bicycle.beans.MyEntityManager"%>
<%@page import="java.util.Vector"%>
<%@page import="bicycle.beans.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bicycle- Add Process</title>
    </head>
    <body>
        <%
                MyEntityManager myEntityManager = new MyEntityManager();
                BicycleOption bicycleOption = (BicycleOption)session.getAttribute("bicycle");

                bicycleOption.setBicycleOptionID(Integer.parseInt(request.getParameter("bicycleOptionID")));
                bicycleOption.setNameOfOption(request.getParameter("name"));
                bicycleOption.setDeacriptionOfOption(request.getParameter("Description"));
                bicycleOption.setPriceOfOption(Integer.parseInt(request.getParameter("price")));

                if (myEntityManager.update(bicycleOption))
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

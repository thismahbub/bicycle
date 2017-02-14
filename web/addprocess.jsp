<%@page import="bicycle.beans.BicycleDetail"%>
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
            Retailer retailer = new Retailer();

            retailer.setRetailerID(Integer.parseInt(request.getParameter("Retailer_Id")));
            retailer.setNameOfRetailer(request.getParameter("Retailer_Name"));
            retailer.setPostalAddress(request.getParameter("Address"));
            retailer.setEmailAddress(request.getParameter("Email"));
            retailer.setPhoneNumber(Integer.parseInt(request.getParameter("Phone")));

            if(myEntityManager.persist(retailer))
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

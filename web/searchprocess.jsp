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
        <title>Bicycle</title>
            <script type="text/javascript">
            function printpage()
            {
            window.print();
            }
            </script>
        <link href="css/css.css" rel="stylesheet" type="text/css">

    </head>
    <body bgcolor="#ff6699">
     <%
        Login login =(Login) session.getAttribute("login");
        if(login==null)
        response.sendRedirect("index.jsp");
    %>
            <table border="0" cellpadding="5" cellspacing="5" width="900" bgcolor="#FFFFFF" id="container">
            <tr>
                <td height="150" colspan="2" align="center" id="header">Welcome to Bicycle Club</td>
            </tr>
            <tr></tr>
            <td width="150" bgcolor="#C4D71C" id="pageLink">Page Links<hr>
                <a href="search.jsp">Search</a>
                <a href="member_servey.jsp">Member Servey</a>
                <a href="SiteMap.jsp">Site Map</a>
                <hr>
                <a href="admin_retailer.jsp">Retailer Form</a>
                <a href="admin_bicycleDetail.jsp">Bicycle Detail</a>
                <a href="admin_bicycleOption.jsp">Bicycle Option</a>
                <a href="admin_memberInfo.jsp">Member Information</a>
                <a href="list_bicycleDetail.jsp">Detail List</a>


            </td>
            <td width="750"><div id="l" style="vertical-align: top;">Profile Name: <%=login.getMemberName()%>&nbsp;&nbsp;Member Email: &nbsp;<%=login.getEmail()%>&nbsp;&nbsp;<a href="logoutProcess.jsp">logout</a></div><br><br>
    
        <%
            MyEntityManager myEntityManager = new MyEntityManager();

            Vector<BicycleDetail> searchResult = (Vector<BicycleDetail>)myEntityManager.getEntityManager().createNamedQuery("BicycleDetail.findAll").getResultList();

            String model = request.getParameter("model");
            String type = request.getParameter("Select");
            String colore =request.getParameter("colore");
            
           

            for(int i=0;i<searchResult.size();i++)
            {
                if(!model.equals(searchResult.get(i).getModel()))
                {
                    searchResult.remove(i);
                    i--;
                }
   
            }


           


            for(int i=0;i<searchResult.size();i++)
            {
                if(!type.equals(searchResult.get(i).getType()))
                {
                    searchResult.remove(i);
                    i--;
                }
            }

           

            try
            {
                int frameSize =Integer.parseInt(request.getParameter("frameSize"));

                for(int i=0;i<searchResult.size();i++)
                {
                    if(frameSize != searchResult.get(i).getFrameSize())
                    {
                        searchResult.remove(i);
                        i--;
                    }
                }
             }
            catch(NumberFormatException nfe)
            {
            }

            
            
            try
            {
                 int wheelsize =Integer.parseInt(request.getParameter("wheelsize"));
                for(int i=0;i<searchResult.size();i++)
                {
                    if(wheelsize != searchResult.get(i).getWheelSize())
                    {
                        searchResult.remove(i);
                        i--;
                    }
                }
            }
            catch(NumberFormatException nfe)
                    {
                }

           

            try
            {
                 int price = Integer.parseInt(request.getParameter("price"));
                for(int i=0;i<searchResult.size();i++)
                {
                    if(price != searchResult.get(i).getBasicPrice())
                    {
                        searchResult.remove(i);
                        i--;
                    }
                }
            }
            catch(NumberFormatException nfe){}

           

            try{
                 int gear = Integer.parseInt(request.getParameter("gear"));
                for(int i=0;i<searchResult.size();i++)
                {
                    if(gear != searchResult.get(i).getNumberOfGears())
                    {
                        searchResult.remove(i);
                        i--;
                    }
                }
            }
            catch(NumberFormatException nfe){}


            %>


            <div>
                <table border="1" cellspacing="1" cellpadding="1">

                <%
                    for(int i=0;i<searchResult.size();i++)
                    {
                %>
                <tr>
                    <td width="15"> <%= searchResult.get(i).getBicycleDetailID()%></td>
                    <td width="100"> <%= searchResult.get(i).getMake()%></td>
                    <td width="100"> <%= searchResult.get(i).getType()%></td>
                    <td width="50"> <%= searchResult.get(i).getColour()%></td>
                    <td width="50"> <%= searchResult.get(i).getFrameSize()%></td>
                    <td width="50"> <%= searchResult.get(i).getNumberOfGears()%></td>
                    <td width="50"> <%= searchResult.get(i).getWheelSize()%></td>
                    <td width="50"> <%= searchResult.get(i).getBasicPrice()%></td>
                </tr>
                <%
                    }
                %>

                </table><br><input type="image" src="image/print.PNG" onclick="printpage()"></div></td>


            <tr id="l">
                <td colspan="2" height="80" id="fotter">All right reserved by Bicycle Club &copy; right 2011</td></tr></table>


    </body>
</html>

<%@page import="bicycle.beans.Comment"%>
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
        <link href="css/css.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="#ff6699">
        <%
                    Login login = (Login) session.getAttribute("login");
                    if (login == null) {
                        response.sendRedirect("index.jsp");
                    }
                    if (!login.getLevel().equals("admin")) {
                        response.sendRedirect("search.jsp");
                    }
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
                Admin<hr>
                <a href="admin_retailer.jsp">Retailer Form</a>
                <a href="admin_bicycleDetail.jsp">Bicycle Detail</a>
                <a href="admin_bicycleOption.jsp">Bicycle Option</a>
                <a href="admin_memberInfo.jsp">Member Information</a>
                List<hr>
                <a href="list_retailer.jsp">Retailer</a>
                <a href="list_bicycleDetail.jsp">Detail</a>
                <a href="list_bicycleoption.jsp">Option</a>
                <a href="list_memberinfo.jsp">Member Info</a>
                <a href="list_comment.jsp">Comment</a>
            </td>
            <td width="750" valign="top"><div id="r">Profile Name: <%=login.getMemberName()%>&nbsp;&nbsp;Member Email: &nbsp;<%=login.getEmail()%>&nbsp;<a href="logoutProcess.jsp">logout</a></div><div>
                    <div style="color:#090; font-weight:bold;font-size:16px;"><u>Comment Information</u></div><hr>



                    <table border="1" cellspacing="1" cellpadding="1" width="747">
                        <tr>
                            <%
                                        MyEntityManager myEntityManager = new MyEntityManager();

                                        Vector<Comment> searchResult = (Vector<Comment>) myEntityManager.getEntityManager().createNamedQuery("Comment.findAll").getResultList();

                                        for (int i = 0; i < searchResult.size(); i++) {
                            %>

                            <td width="100"> <%= searchResult.get(i).getUsername()%></td>
                            <td> <%= searchResult.get(i).getInterests()%></td>
                            <td> <%= searchResult.get(i).getComments()%></td>
                            <td width="150"><a href="deleteCommentProccess.jsp?userName=<%= searchResult.get(i).getUsername()%>">Delete</a></td>
                        </tr>
                        <%
                                    }
                        %>

                    </table>


                </div>
            <tr id="l">
                <td colspan="2" height="80" id="fotter">All right reserved by Bicycle Club &copy; right 2011</td></tr></table>


    </body>
</html>
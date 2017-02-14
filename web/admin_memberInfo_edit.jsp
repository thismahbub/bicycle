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
            <td width="750"><div id="l">Profile Name: <%=login.getMemberName()%>&nbsp;&nbsp;Member Email: &nbsp;<%=login.getEmail()%>&nbsp;&nbsp;<a href="logoutProcess.jsp">logout</a></div>
                <form action="editMemberProccess.jsp" method="post"><fieldset>
                        <legend><b>Member Information</b></legend>
                        <div id="c">
                            <table width="100%" cellspacing="10">
                                <tr>
                                    <td width="23%" id="l"><label>User Name</label></td>
                                    <td width="2%" id="c">:</td>
                                    <td width="75%" id="l"><input name="username" type="text" size="40" value="<%=login.getUsername()%>"></td>
                                </tr>
                                <tr>
                                    <td id="l">Password</td>
                                    <td id="c">:</td>
                                    <td id="l"><input name="password" type="password" size="40" value="<%=login.getPassword()%>"></td>
                                </tr>
                                <tr>
                                    <td id="l">Member Name</td>
                                    <td id="l">:</td>
                                    <td id="l"><input type="text" name="name"  size="40" value="<%=login.getMemberName()%>"></td></tr>
                                <tr>
                                    <td id="l">E-Mail</td>
                                    <td id="l">:</td>
                                    <td id="l"><input type="text" name="email" size="40" value="<%=login.getEmail()%>"></td></tr>
                                <tr>
                                <tr>
                                    <td id="l">Level</td>
                                    <td id="l">:</td>
                                    <td id="l"><input type="text" name="level" size="40" value="<%=login.getLevel()%>"></td></tr>
                                <tr>
                                    <td colspan="4" id="c"><input type="submit" name="Submit" value="Submit"></td>
                                </tr>
                            </table>
                        </div></fieldset></form>



            <tr id="vl">
                <td colspan="2" height="80" id="fotter">All right reserved by Bicycle Club &copy; right 2011</td></tr></table>


    </body>
</html>
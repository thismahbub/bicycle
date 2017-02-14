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
        <link href="css/css.css" rel="stylesheet" type="text/css">
    </head>
    <body bgcolor="#ff6699">
        <%
                    Login login = (Login) session.getAttribute("login");
                    if (login == null) {
                        response.sendRedirect("index.jsp");
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
                <form action="searchprocess.jsp" method="post"><fieldset><legend><b>Search Here</b></legend><div id="c">


                            <table width="100%" cellspacing="10">
                                <tr>
                                    <td width="18%" id="l"><label>Model</label></td>
                                    <td width="2%" id="c">:</td>
                                    <td width="29%" id="l"><input name="model" type="text"></td>
                                    <td colspan="3"  id="l">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td id="l">Type</td>
                                    <td id="c">:</td>
                                    <td  id="l"><label>
                                            <select name="Select" size="1" id="Select">
                                                <option>Five Star</option>
                                                <option>Renger</option>
                                                <option>Hero</option>
                                                <option>China</option>
                                                <option>Japan</option>
                                            </select>
                                        </label></td>
                                    <td width="19%" id="l">Color</td>
                                    <td id="c" width="2%">:</td>
                                    <td width="30%" id="l">
                                        <select name="colore" size="1" id="select">
                                            <option>Black</option>
                                            <option>White</option>
                                            <option>Green</option>
                                            <option>Pink</option>
                                            <option>Blue</option>
                                            <option>Red</option>
                                            <option>Silver</option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td height="48" id="l">Frame Size </td>
                                    <td id="c">:</td>
                                    <td id="l"><input name="frameSize" type="text"></td>
                                    <td id="l">Number of Gear </td>
                                    <td id="c">:</td>
                                    <td id="l"><select name="gear" size="1" id="select2">
                                            <option>03</option>
                                            <option>04</option>
                                            <option>05</option>
                                            <option>06</option></select></td></tr>
                                <tr>
                                    <td id="l">Wheel Size </td>
                                    <td id="c">:</td>
                                    <td id="l"><input name="wheelsize" type="text"></td>
                                    <td id="l">Price</td>
                                    <td id="c">:</td>
                                    <td id="l"><input name="price" type="text"></td>
                                </tr>
                                <tr>
                                    <td colspan="6" id="c"><INPUT type="submit" name="submit" value="submit"></td>
                                </tr></table>
                        </div></fieldset></form>



            <tr id="vl">
                <td colspan="2" height="80" id="fotter">All right reserved by Bicycle Club &copy; right 2011</td></tr></table>


    </body>
</html>

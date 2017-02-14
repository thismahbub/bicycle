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

        <table border="0" cellpadding="5" cellspacing="5" width="900" bgcolor="#FFFFFF" id="container">
            <tr>
                <td height="150" colspan="3" align="center" id="header">Welcome to Bicycle Club</td>
            </tr>
            <tr>
                <td width="200"><img name="Cycle" src="image/cycle1.jpg" width="190" height="250" alt=""></td>
                <td>
                    <form id="form" name="form" method="post" action="loginprocess.jsp">
                        <fieldset id="form"><legend><b>Login Here</b></legend><div id="c">

                                <table width="100%">
                                    <tr>
                                        <td id="l"><label>User Name</label></td>
                                        <td id="c">:</td>
                                        <td id="r"><input name="username" type="text" size="45"></td></tr>
                                    <tr>
                                        <td id="l"><label>Password</label></td>
                                        <td id="c">:</td>
                                        <td id="r"><input name="password" type="password" size="45"></td>
                                    </tr>
                                    <tr><td colspan="3"><br><div id="c">
                                            <input type="image" src="image/submit.gif" value="submit"></div></td></tr>
                                </table></div></fieldset></form>
                    <div>Welcome to Bicycle club. We are providing valuable information about bicycle and its equipments. You can know detail from this web site about a bicycle. It’s a fully dynamic web site. It’s user friendly check out now.</div><br>

                <td width="200"><img name="Cycle" src="image/bicycle2.jpg" width="190" height="250" alt=""></td>

            <tr id="vl">
                <td height="80" colspan="3" id="fotter">All right reserved by Bicycle Club &copy; right 2011</td></tr></table>


    </body>
</html>

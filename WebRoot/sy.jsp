<%@ page language="java" pageEncoding="utf-8" %>


<html>
    <head>
        <title>高校大学生学业规划管理系统</title>
        <LINK href="images/style.css" type=text/css rel=stylesheet>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
            <!--
            body, td, th {
                font-size: 12px;
            }

            -->
        </style>
    </head>
    <body leftMargin="5" topMargin="5" rightMargin="5">

        <p>&nbsp;</p>
        <table width="100%" height="193" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#D9E9FF" style="border-collapse: collapse">
            <tbody>
                <tr align="middle" bgcolor="#ffffff">
                    <td colspan="2" bgcolor="#CADCEA"><strong>欢迎登陆高校大学生学业规划管理系统</strong></td>
                </tr>
                <tr align="middle" bgcolor="#ffffff">
                    <td width="10%" align="left">当前用户：</td>
                    <td width="41%" align="left"><font class="t4"><%=request.getSession().getAttribute("username") %></font></td>
                </tr>
                <tr align="middle" bgcolor="#ffffff">
                    <td width="10%" align="left">您的权限：</td>
                    <td width="41%" align="left"><font class="t4"><%=request.getSession().getAttribute("cx") %></font></td>
                </tr>
                <tr align="middle" bgcolor="#ffffff">
                    <td width="10%" align="left">系统作者：</td>
                    <td width="41%" align="left"><font class="t4">xxxxxx</font></td>
                </tr>
                <tr align="middle" bgcolor="#ffffff">
                    <td align="left">指导老师：</td>
                    <td align="left">xxxxxxx</td>
                </tr>
                <tr align="middle" bgcolor="#ffffff">
                    <td align="left">联系方式：</td>
                    <td align="left"><font class="t41">xxxxxxxxxxxxxxx</font></td>
                </tr>
            </tbody>
        </table>
        <p>&nbsp;</p>
        <p align="right">&nbsp;</p>
    </body>
</html>

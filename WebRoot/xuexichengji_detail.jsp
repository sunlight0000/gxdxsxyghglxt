<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <% Map map = Query.make("xuexichengji").where("id", request.getParameter("id")).find(); %>

    <div class="admin-detail">
        <table class="table table-detail">
            <tr>
                <td width="180">成绩编号</td>
                <td><%= map.get("chengjibianhao") %>
                </td>

                <td width="180">学生</td>
                <td></td>
            </tr>
            <tr>
                <td width="180">学号</td>
                <td><%= map.get("xuehao") %>
                </td>

                <td width="180">姓名</td>
                <td><%= map.get("xingming") %>
                </td>
            </tr>
            <tr>
                <td width="180">院系</td>
                <td><%= map.get("yuanxi") %>
                </td>

                <td width="180">专业</td>
                <td><%= map.get("zhuanye") %>
                </td>
            </tr>
            <tr>
                <td width="180">学年</td>
                <td><%= map.get("xuenian") %>
                </td>

                <td width="180">科目</td>
                <td><% Map mapkemu5 = new CommDAO().find("SELECT kemumingcheng,id FROM kemu where id='" + map.get("kemu") + "'"); %>
                    <%= mapkemu5.get("kemumingcheng") %>
                </td>
            </tr>
            <tr>
                <td width="180">成绩</td>
                <td><%= map.get("chengji") %>
                </td>

                <td width="180">成绩备注</td>
                <td><%= map.get("chengjibeizhu") %>
                </td>
            </tr>
            <tr>
                <td width="180">添加人</td>
                <td><%= map.get("tianjiaren") %>
                </td>
            </tr>
        </table>
    </div>

    <div class="button-list">
        <div class="">
            <button onclick="history.go(-1);"
                    style="background: #07de19; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">返回
            </button>
            <button onclick="window.print()"
                    style="background: #4961de; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">打印本页
            </button>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>


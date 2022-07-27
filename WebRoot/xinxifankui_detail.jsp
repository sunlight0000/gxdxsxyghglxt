<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <% Map map = Query.make("xinxifankui").where("id", request.getParameter("id")).find(); %>

    <div class="admin-detail">
        <table class="table table-detail">
            <tr>
                <td width="180">反馈编号</td>
                <td><%= map.get("fankuibianhao") %></td>

                <td width="180">反馈时间</td>
                <td><%= map.get("fankuishijian") %></td>
            </tr>
            <tr>
                <td width="180">反馈内容</td>
                <td><%= map.get("fankuineirong") %></td>

                <td width="180">反馈回复</td>
                <td><%= map.get("fankuihuifu") %></td>
            </tr>
            <tr>
                <td width="180">反馈学生</td>
                <td><%= map.get("fankuixuesheng") %></td>

                <td width="180">反馈状态</td>
                <td><%= map.get("fankuizhuangtai") %></td>
            </tr>
            <tr></tr>
        </table>
    </div>

    <div class="button-list">
        <div class="">
            <button onclick="history.go(-1);" style="background: #07de19; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">返回</button>
            <button onclick="window.print()" style="background: #4961de; border: 1px solid #9a9a9a; border-top-width: 2px; border-left: 2px">打印本页</button>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>


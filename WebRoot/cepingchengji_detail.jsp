<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <% Map map = Query.make("cepingchengji").where("id", request.getParameter("id")).find(); %>

    <div class="admin-detail">
        <table class="table table-detail">
            <tr>
                <td width="180">测评题库id</td>
                <td><%= map.get("cepingtikuid") %></td>

                <td width="180">测评编号</td>
                <td><%= map.get("cepingbianhao") %></td>
            </tr>
            <tr>
                <td width="180">测评名称</td>
                <td><%= map.get("cepingmingcheng") %></td>

                <td width="180">发布人</td>
                <td><%= map.get("faburen") %></td>
            </tr>
            <tr>
                <td width="180">评估编号</td>
                <td><%= map.get("pinggubianhao") %></td>

                <td width="180">总得分</td>
                <td><%= map.get("zongdeifen") %></td>
            </tr>
            <tr>
                <td width="180">单选题得分</td>
                <td><%= map.get("danxuantidefen") %></td>

                <td width="180">多选题得分</td>
                <td><%= map.get("duoxuantidefen") %></td>
            </tr>
            <tr>
                <td width="180">测评学生</td>
                <td><%= map.get("cepingxuesheng") %></td>
            </tr>
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


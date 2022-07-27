<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <%
    String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
    String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序
    
    String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
    
    // 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中
    
    if (request.getParameter("xuehao") != null && !"".equals(request.getParameter("xuehao"))) {
        where += " AND xuehao LIKE '%" + request.getParameter("xuehao") + "%'";
    }
    if (request.getParameter("xingming") != null && !"".equals(request.getParameter("xingming"))) {
        where += " AND xingming LIKE '%" + request.getParameter("xingming") + "%'";
    }
    if (request.getParameter("yuanxi") != null && !"".equals(request.getParameter("yuanxi"))) {
        where += " AND yuanxi LIKE '%" + request.getParameter("yuanxi") + "%'";
    }
    if (request.getParameter("zhuanye") != null && !"".equals(request.getParameter("zhuanye"))) {
        where += " AND zhuanye LIKE '%" + request.getParameter("zhuanye") + "%'";
    }
    
    List<Map> list = Query.make("xuesheng").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 学生 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        学号

                        <input type="text" class="form-control" style="" name="xuehao" value="<%= request.getParameter("xuehao") !=null ? request.getParameter("xuehao") : "" %>" />
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="<%= request.getParameter("xingming") !=null ? request.getParameter("xingming") : "" %>" />
                    </div>
                    <div class="form-group">
                        院系

                        <input type="text" class="form-control" style="" name="yuanxi" value="<%= request.getParameter("yuanxi") !=null ? request.getParameter("yuanxi") : "" %>" />
                    </div>
                    <div class="form-group">
                        专业

                        <input type="text" class="form-control" style="" name="zhuanye" value="<%= request.getParameter("zhuanye") !=null ? request.getParameter("zhuanye") : "" %>" />
                    </div>

                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>学号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>联系方式</th>
                            <th>院系</th>
                            <th>专业</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        int i = 0;
                        for (Map map : list) {
                            i++;
                        %>

                        <tr id="<%= map.get("id") %>" pid="">
                            <td width="30" align="center">
                                <label> <%= i %> </label>
                            </td>
                            <td><%= map.get("xuehao") %></td>
                            <td><%= map.get("xingming") %></td>
                            <td><%= map.get("xingbie") %></td>
                            <td><%= map.get("lianxifangshi") %></td>
                            <td><%= map.get("yuanxi") %></td>
                            <td><%= map.get("zhuanye") %></td>
                            <td align="center">
                                <a href="xuesheng_detail.jsp?id=<%= map.get("id") %>">详情</a>
                                <% if ("超级管理员".equals(request.getSession().getAttribute("cx")) || "二级管理员".equals(request.getSession().getAttribute("cx"))) { %>
                                <a href="xuesheng_updt.jsp?id=<%= map.get("id") %>">编辑</a>

                                <a href="xuesheng.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
                                <%} %>

                                <!--qiatnalijne-->
                            </td>
                        </tr>
                        <%} %>

                    </tbody>
                </table>
            </div>

            ${page.info}
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>


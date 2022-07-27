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
    
    if (request.getParameter("gonghao") != null && !"".equals(request.getParameter("gonghao"))) {
        where += " AND gonghao LIKE '%" + request.getParameter("gonghao") + "%'";
    }
    if (request.getParameter("xingming") != null && !"".equals(request.getParameter("xingming"))) {
        where += " AND xingming LIKE '%" + request.getParameter("xingming") + "%'";
    }
    if (request.getParameter("biyeyuanxiao") != null && !"".equals(request.getParameter("biyeyuanxiao"))) {
        where += " AND biyeyuanxiao LIKE '%" + request.getParameter("biyeyuanxiao") + "%'";
    }
    
    List<Map> list = Query.make("jiaoshi").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 教师 </span>
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
                        工号

                        <input type="text" class="form-control" style="" name="gonghao" value="<%= request.getParameter("gonghao") !=null ? request.getParameter("gonghao") : "" %>" />
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="<%= request.getParameter("xingming") !=null ? request.getParameter("xingming") : "" %>" />
                    </div>
                    <div class="form-group">
                        毕业院校

                        <input type="text" class="form-control" style="" name="biyeyuanxiao" value="<%= request.getParameter("biyeyuanxiao") !=null ? request.getParameter("biyeyuanxiao") : "" %>" />
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
                            <th>工号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>联系方式</th>
                            <th>毕业院校</th>
                            <th>邮箱</th>
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
                            <td><%= map.get("gonghao") %></td>
                            <td><%= map.get("xingming") %></td>
                            <td><%= map.get("xingbie") %></td>
                            <td><%= map.get("lianxifangshi") %></td>
                            <td><%= map.get("biyeyuanxiao") %></td>
                            <td><%= map.get("youxiang") %></td>
                            <td align="center">
                                <a href="jiaoshi_detail.jsp?id=<%= map.get("id") %>">详情</a>

                                <a href="jiaoshi_updt.jsp?id=<%= map.get("id") %>">编辑</a>

                                <a href="jiaoshi.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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


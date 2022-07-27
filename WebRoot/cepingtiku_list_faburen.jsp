<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <%
    String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
    String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序
    
    String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
    where += " AND faburen='" + request.getSession().getAttribute("username") + "' "; //  设置faburen为当前登录用户
    
    // 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中
    
    if (request.getParameter("cepingbianhao") != null && !"".equals(request.getParameter("cepingbianhao"))) {
        where += " AND cepingbianhao LIKE '%" + request.getParameter("cepingbianhao") + "%'";
    }
    if (request.getParameter("cepingmingcheng") != null && !"".equals(request.getParameter("cepingmingcheng"))) {
        where += " AND cepingmingcheng LIKE '%" + request.getParameter("cepingmingcheng") + "%'";
    }
    
    List<Map> list = Query.make("cepingtiku").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 测评题库 </span>
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
                        测评编号

                        <input type="text" class="form-control" style="" name="cepingbianhao" value="<%= request.getParameter("cepingbianhao") !=null ? request.getParameter("cepingbianhao") : "" %>" />
                    </div>
                    <div class="form-group">
                        测评名称

                        <input type="text" class="form-control" style="" name="cepingmingcheng" value="<%= request.getParameter("cepingmingcheng") !=null ? request.getParameter("cepingmingcheng") : "" %>" />
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
                            <th>测评编号</th>
                            <th>测评名称</th>
                            <th>测评简介</th>
                            <th>发布人</th>
                            <th width="180" data-field="handler">操作</th>
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
                            <td><%= map.get("cepingbianhao") %></td>
                            <td><%= map.get("cepingmingcheng") %></td>
                            <td><%= map.get("cepingjianjie") %></td>
                            <td><%= map.get("faburen") %></td>
                            <td align="center">
                                <a href="cepingshiti_add.jsp?id=<%= map.get("id") %>">添加试题</a>




                                <a href="cepingtiku_updt.jsp?id=<%= map.get("id") %>">编辑</a>

                                <a href="cepingtiku.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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


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
    
    if (request.getParameter("fankuibianhao") != null && !"".equals(request.getParameter("fankuibianhao"))) {
        where += " AND fankuibianhao LIKE '%" + request.getParameter("fankuibianhao") + "%'";
    }
    
    List<Map> list = Query.make("xinxifankui").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 信息反馈 </span>
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
                        反馈编号

                        <input type="text" class="form-control" style="" name="fankuibianhao" value="<%= request.getParameter("fankuibianhao") !=null ? request.getParameter("fankuibianhao") : "" %>" />
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
                            <th>反馈编号</th>
                            <th>反馈时间</th>
                            <th>反馈内容</th>
                            <th>反馈回复</th>
                            <th>反馈学生</th>
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
                            <td><%= map.get("fankuibianhao") %></td>
                            <td><%= map.get("fankuishijian") %></td>
                            <td><%= map.get("fankuineirong") %></td>
                            <td><%= map.get("fankuihuifu") %></td>
                            <td><%= map.get("fankuixuesheng") %></td>
                            <td align="center">

                                <% if ("辅导员".equals(request.getSession().getAttribute("cx"))) { %>
                                <%
                                    if(map.get("fankuizhuangtai").equals("待回复"))
                                    {
                                %>
                                <a href="xinxifankui_updt.jsp?id=<%= map.get("id") %>">回复</a>
                                <%
                                    }
                                %>

                                <%} %>

                                <a href="xinxifankui_detail.jsp?id=<%= map.get("id") %>">详情</a>
                                <% if ("超级管理员".equals(request.getSession().getAttribute("cx"))|| "二级管理员".equals(request.getSession().getAttribute("cx"))) { %>
                                <a href="xinxifankui.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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


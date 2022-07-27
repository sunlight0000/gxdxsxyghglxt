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
    
    if (request.getParameter("cepingtikuid") != null && !"".equals(request.getParameter("cepingtikuid"))) {
        where += " AND cepingtikuid='" + request.getParameter("cepingtikuid") + "' ";
    }
    if (request.getParameter("cepingbianhao") != null && !"".equals(request.getParameter("cepingbianhao"))) {
        where += " AND cepingbianhao LIKE '%" + request.getParameter("cepingbianhao") + "%'";
    }
    if (request.getParameter("cepingmingcheng") != null && !"".equals(request.getParameter("cepingmingcheng"))) {
        where += " AND cepingmingcheng LIKE '%" + request.getParameter("cepingmingcheng") + "%'";
    }
    if (request.getParameter("shititimu") != null && !"".equals(request.getParameter("shititimu"))) {
        where += " AND shititimu LIKE '%" + request.getParameter("shititimu") + "%'";
    }
    if (request.getParameter("leixing") != null && !"".equals(request.getParameter("leixing"))) {
        where += " AND leixing ='" + request.getParameter("leixing") + "'";
    }
    
    List<Map> list = Query.make("cepingshiti").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 测评试题 </span>
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
                    <div class="form-group">
                        试题题目

                        <input type="text" class="form-control" style="" name="shititimu" value="<%= request.getParameter("shititimu") !=null ? request.getParameter("shititimu") : "" %>" />
                    </div>
                    <div class="form-group">
                        类型

                        <select
                            class="form-control class_leixing22"
                            data-value="<%= request.getParameter("leixing") !=null ? request.getParameter("leixing") : "" %>"
                            data-rule-required="true"
                            data-msg-required="请填写类型"
                            id="leixing"
                            name="leixing"
                        >
                            <option value="">请选择</option>
                            <option value="单选题">单选题</option>
                            <option value="多选题">多选题</option>
                        </select>
                        <script>
                            $(".class_leixing22").val($(".class_leixing22").attr("data-value"));
                        </script>
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
                            <th>发布人</th>
                            <th>试题题目</th>
                            <th>类型</th>
                            <th>选项</th>
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
                            <td><%= map.get("cepingbianhao") %></td>
                            <td><%= map.get("cepingmingcheng") %></td>
                            <td><%= map.get("faburen") %></td>
                            <td><%= map.get("shititimu") %></td>
                            <td><%= map.get("leixing") %></td>
                            <td>
                                <script>
                                    (function () {
                                        try {
                                            var field = <%= map.get("daan") %>;
                                            $.each(field, function () {
                                                document.writeln(this.zimu + ' ' + this.title + ' ' + '<br>');
                                            })
                                        } catch (e) {

                                        }
                                    })();
                                </script>
                            </td>
                            <td align="center">
                                <a href="cepingshiti_detail.jsp?id=<%= map.get("id") %>">详情</a>

                                <a href="cepingshiti_updt.jsp?id=<%= map.get("id") %>">编辑</a>

                                <a href="cepingshiti.jsp?a=delete&id=<%= map.get("id") %>" onclick="return confirm('确定要删除？')">删除</a>
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


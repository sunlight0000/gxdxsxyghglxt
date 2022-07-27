<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@ include file="head.jsp" %>

<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <%
        String orderby = util.Request.get("order", "id"); // 获取搜索框中的排序字段、默认为发布时间
        String sort = util.Request.get("sort", "desc"); // 获取搜索框中的排序类型、默认为倒序

        String where = " 1=1 "; // 防止sql 搜索条件为： where and a=b 这样的错误
        where += " AND xuehao='" + request.getSession().getAttribute("username") + "' "; //  设置xuehao为当前登录用户

        // 以下是检测搜索框中是否填写了或者选择了什么，则写入sql 语句中

        if (request.getParameter("chengjibianhao") != null && !"".equals(request.getParameter("chengjibianhao"))) {
            where += " AND chengjibianhao LIKE '%" + request.getParameter("chengjibianhao") + "%'";
        }
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
        if (request.getParameter("xuenian_start") != null && !"".equals(request.getParameter("xuenian_start"))) {
            where += " AND xuenian >='" + request.getParameter("xuenian_start") + "' ";
        }
        if (request.getParameter("xuenian_end") != null && !"".equals(request.getParameter("xuenian_end"))) {
            where += " AND xuenian <='" + request.getParameter("xuenian_end") + "' ";
        }
        if (request.getParameter("kemu") != null && !"".equals(request.getParameter("kemu"))) {
            where += " AND kemu ='" + request.getParameter("kemu") + "'";
        }

        List<Map> list = Query.make("xuexichengji").where(where).order(orderby + " " + sort).page(15);
    %>


    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 学习成绩 </span>
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
                        成绩编号

                        <input type="text" class="form-control" style="" name="chengjibianhao"
                               value="<%= request.getParameter("chengjibianhao") !=null ? request.getParameter("chengjibianhao") : "" %>"/>
                    </div>

                    <div class="form-group">
                        学年

                        <input type="text" class="form-control" name="xuenian_start" readonly="readonly"
                               onfocus="WdatePicker({dateFmt:'yyyy',lang:'zh-cn'})"/>-<input
                            type="text"
                            class="form-control"
                            name="xuenian_end"
                            readonly="readonly"
                            onfocus="WdatePicker({dateFmt:'yyyy',lang:'zh-cn'})"
                    />
                    </div>
                    <div class="form-group">
                        科目

                        <select class="form-control class_kemu2"
                                data-value="<%= request.getParameter("kemu") !=null ? request.getParameter("kemu") : "" %>"
                                data-rule-required="true" data-msg-required="请填写科目" id="kemu" name="kemu">
                            <option value="">请选择</option>
                            <% List<Map> select = new CommDAO().select("SELECT * FROM kemu ORDER BY id desc"); %>
                            <% for (Map m : select) { %>

                            <option value="<%= m.get("id") %>"><%= m.get("kemumingcheng") %>
                            </option>
                            <%} %>

                        </select>
                        <script>
                            $(".class_kemu2").val($(".class_kemu2").attr("data-value"));
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
                        <th>成绩编号</th>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>院系</th>
                        <th>专业</th>
                        <th>学年</th>
                        <th>科目</th>
                        <th>成绩</th>
                        <th>成绩备注</th>
                        <th>添加人</th>
                        <th width="120" data-field="handler">操作</th>
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
                            <label><%= i %>
                            </label>
                        </td>
                        <td><%= map.get("chengjibianhao") %>
                        </td>
                        <td><%= map.get("xuehao") %>
                        </td>
                        <td><%= map.get("xingming") %>
                        </td>
                        <td><%= map.get("yuanxi") %>
                        </td>
                        <td><%= map.get("zhuanye") %>
                        </td>
                        <td><%= map.get("xuenian") %>
                        </td>
                        <td><%
                            Map mapkemu2 = new CommDAO().find("SELECT kemumingcheng,id FROM kemu where id='" + map.get("kemu") + "'"); %>
                            <%= mapkemu2.get("kemumingcheng") %>
                        </td>
                        <td><%= map.get("chengji") %>
                        </td>
                        <td><%= map.get("chengjibeizhu") %>
                        </td>
                        <td><%= map.get("tianjiaren") %>
                        </td>
                        <td align="center">
                            <a href="xuexichengji_detail.jsp?id=<%= map.get("id") %>">详情</a>


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


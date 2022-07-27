<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>

<div style="padding: 10px" class="admin-content">
    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

    <script>
        alert("对不起,请您先登陆!");
        location.href = "login.jsp";
    </script>
    <%return;
    } %> <%
     String updtself = "0"; // 设置更新
     HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "cepingchengji");
     %>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑测评成绩:</div>
            <div class="panel-body">
                <form action="cepingchengji.jsp?a=update" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="cepingtikuid" value="<%= mmm.get("cepingtikuid") %>" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">测评编号</label>
                            <div class="col-sm-10"><%= mmm.get("cepingbianhao") %><input type="hidden" id="cepingbianhao" name="cepingbianhao" value="<%= Info.html(mmm.get("cepingbianhao")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">测评名称</label>
                            <div class="col-sm-10"><%= mmm.get("cepingmingcheng") %><input type="hidden" id="cepingmingcheng" name="cepingmingcheng" value="<%= Info.html(mmm.get("cepingmingcheng")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">发布人</label>
                            <div class="col-sm-10"><%= mmm.get("faburen") %><input type="hidden" id="faburen" name="faburen" value="<%= Info.html(mmm.get("faburen")) %>" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">评估编号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入评估编号"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="pinggubianhao"
                                    name="pinggubianhao"
                                    value="<%= Info.html(mmm.get("pinggubianhao")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">总得分</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入总得分"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="zongdeifen"
                                    name="zongdeifen"
                                    value="<%= Info.html(mmm.get("zongdeifen")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">单选题得分</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入单选题得分"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="danxuantidefen"
                                    name="danxuantidefen"
                                    value="<%= Info.html(mmm.get("danxuantidefen")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">多选题得分</label>
                            <div class="col-sm-10">
                                <input
                                    type="number"
                                    class="form-control"
                                    placeholder="输入多选题得分"
                                    style="width: 150px"
                                    number="true"
                                    data-msg-number="输入一个有效数字"
                                    id="duoxuantidefen"
                                    name="duoxuantidefen"
                                    value="<%= Info.html(mmm.get("duoxuantidefen")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">测评学生</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入测评学生"
                                    style="width: 150px"
                                    readonly="readonly"
                                    id="cepingxuesheng"
                                    name="cepingxuesheng"
                                    value="<%= mmm.get("cepingxuesheng") %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="<%= mmm.get("id") %>" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="<%= updtself %>" type="hidden" />

                                <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                                <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                            </div>
                        </div>
                    </div>

                    <!--form标签结束-->
                </form>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>

    <script>
        $(function () {
            $("#form1").validate();
        });
    </script>
</div>
<%@ include file="foot.jsp" %>


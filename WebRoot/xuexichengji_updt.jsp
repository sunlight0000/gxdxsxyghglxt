<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>
<%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<script>
    window.searchSelectUrl = "ajax.jsp?a=selectUpdate";
    window.selectUpdateUrl = "ajax.jsp?a=table";
</script>
<script src="js/selectUpdate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <% if (request.getSession().getAttribute("username") == null || "".equals(request.getSession().getAttribute("username"))) { %>

    <script>
        alert("对不起,请您先登陆!");
        location.href = "login.jsp";
    </script>
    <%
            return;
        }
    %> <%
    String updtself = "0"; // 设置更新
    HashMap mmm = new CommDAO().getmap(request.getParameter("id"), "xuexichengji");
%>


    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑学习成绩:</div>
            <div class="panel-body">
                <form action="xuexichengji.jsp?a=update" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成绩编号</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="输入成绩编号"
                                        style="width: 150px"
                                        readonly="readonly"
                                        id="chengjibianhao"
                                        name="chengjibianhao"
                                        value="<%= Info.html(mmm.get("chengjibianhao")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学生</label>
                            <div class="col-sm-10">
                                <div class="form-inline">
                                    <select
                                            class="form-control"
                                            data-fields="xuehao,xingming,yuanxi,zhuanye"
                                            data-value="<%= Info.html(mmm.get("xuesheng")) %>"
                                            id="xuesheng"
                                            name="xuesheng"
                                            onchange="getAjaxData('xuesheng',this,this.value)"
                                    >
                                        <option value="">请选择学生</option>
                                    </select>

                                    <script>
                                        function xuesheng_select_update() {
                                            var keyword = $("#xuesheng_keyword").val();
                                            var where = {};
                                            searchSelect("xuesheng", "xuesheng", keyword, where, "xuehao,xingming,yuanxi,zhuanye".split(","), "".split(","));
                                        }

                                        xuesheng_select_update();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学号</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control select-update"
                                        placeholder="输入学号"
                                        style="width: 150px"
                                        readonly="readonly"
                                        id="xuehao"
                                        name="xuehao"
                                        value="<%= mmm.get("xuehao") %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control select-update"
                                        placeholder="输入姓名"
                                        style="width: 150px"
                                        id="xingming"
                                        name="xingming"
                                        value="<%= Info.html(mmm.get("xingming")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">院系</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control select-update"
                                        placeholder="输入院系"
                                        style="width: 150px"
                                        id="yuanxi"
                                        name="yuanxi"
                                        value="<%= Info.html(mmm.get("yuanxi")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">专业</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control select-update"
                                        placeholder="输入专业"
                                        style="width: 150px"
                                        id="zhuanye"
                                        name="zhuanye"
                                        value="<%= Info.html(mmm.get("zhuanye")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学年</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control"
                                        onfocus="WdatePicker({dateFmt:'yyyy',lang:'zh-cn'})"
                                        style="width: 120px"
                                        id="xuenian"
                                        name="xuenian"
                                        readonly="readonly"
                                        value="<%= Info.html(mmm.get("xuenian")) %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">科目<span
                                    style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                        class="form-control class_kemu5"
                                        data-value="<%= Info.html(mmm.get("kemu")) %>"
                                        data-rule-required="true"
                                        data-msg-required="请填写科目"
                                        id="kemu"
                                        name="kemu"
                                        style="width: 250px"
                                >
                                    <% List<Map> select = new CommDAO().select("SELECT * FROM kemu ORDER BY id desc"); %>
                                    <% for (Map m : select) { %>

                                    <option value="<%= m.get("id") %>"><%= m.get("kemumingcheng") %>
                                    </option>
                                    <%} %>

                                </select>
                                <script>
                                    $(".class_kemu5").val($(".class_kemu5").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成绩</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入成绩" style="width: 150px"
                                       id="chengji" name="chengji" value="<%= Info.html(mmm.get("chengji")) %>"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">成绩备注</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入成绩备注"
                                          id="chengjibeizhu" name="chengjibeizhu">
<%= Info.html(mmm.get("chengjibeizhu")) %></textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">添加人</label>
                            <div class="col-sm-10">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="输入添加人"
                                        style="width: 150px"
                                        readonly="readonly"
                                        id="tianjiaren"
                                        name="tianjiaren"
                                        value="<%= mmm.get("tianjiaren") %>"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="<%= mmm.get("id") %>" type="hidden"/>
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden"/>
                                <input name="updtself" value="<%= updtself %>" type="hidden"/>

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


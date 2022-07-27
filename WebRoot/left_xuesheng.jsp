<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>信息反馈</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xinxifankui_add.jsp" target="main" class="sidebar-link text-muted pl-lg-5">信息反馈添加</a></li>
            <li class="sidebar-list-item"><a href="xinxifankui_list_fankuixuesheng.jsp" target="main" class="sidebar-link text-muted pl-lg-5">信息反馈查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>学习成绩</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xuexichengji_list_xuehao.jsp" target="main" class="sidebar-link text-muted pl-lg-5">学习成绩查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>评估测试</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="cepingtiku_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">测评题库查询</a></li>
            <li class="sidebar-list-item"><a href="cepingjieguo_list_cepingren.jsp" target="main" class="sidebar-link text-muted pl-lg-5">测评结果查询</a></li>

        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>个人中心</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xuesheng_updtself.jsp" target="main" class="sidebar-link text-muted pl-lg-5">修改个人资料</a></li>
            <li class="sidebar-list-item"><a href="mod.jsp" target="main" class="sidebar-link text-muted pl-lg-5">修改密码</a></li>
        </ul>
    </div>
</li>

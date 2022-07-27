<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>账号管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="admins_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">管理员账号管理</a></li>
            <li class="sidebar-list-item"><a href="admins_add.jsp" target="main" class="sidebar-link text-muted pl-lg-5">管理员账号添加</a></li>
            <li class="sidebar-list-item"><a href="mod.jsp" target="main" class="sidebar-link text-muted pl-lg-5">密码修改</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>教师管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="jiaoshi_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">教师查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>辅导员管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="fudaoyuan_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">辅导员查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>学生管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xuesheng_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">学生查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>学习成绩管理</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xuexichengji_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">学习成绩查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages5" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>信息反馈管理</span>
    </a>
    <div id="pages5" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xinxifankui_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">信息反馈查询</a></li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages6" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>测评题库管理</span>
    </a>
    <div id="pages6" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="cepingtiku_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">测评题库查询</a></li>
            <li class="sidebar-list-item"><a href="cepingshiti_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">测评试题查询</a></li>
            <li class="sidebar-list-item"><a href="cepingjieguo_list.jsp" target="main" class="sidebar-link text-muted pl-lg-5">测评结果查询</a></li>

        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages44" aria-expanded="false" aria-controls="pages" class="sidebar-link text-muted">
        <span>评估统计</span>
    </a>
    <div id="pages44" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="total_pinggu.jsp" target="main" class="sidebar-link text-muted pl-lg-5">评估统计查询</a></li>
        </ul>
    </div>
</li>

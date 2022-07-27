<%@ page language="java" import="dao.CommDAO" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>

<%@page import="util.Info" %>
<%@ page import="com.alibaba.fastjson.*" %>
<%@ page import="dao.Query" %>
<%@ page import="util.Request" %>
<%

    if (request.getParameter("f") != null) {


        String json1 = request.getParameter("JSON");
        String id = request.getParameter("id");
        JSONArray json = JSON.parseArray(json1);
        JSONObject leixingdefen = JSON.parseObject(request.getParameter("leixingdefen"));


        HashMap data = new HashMap();

        String kaoshibianhao = Info.getID();
        data.put("pinggubianhao", kaoshibianhao);
        data.put("cepingren", request.getSession().getAttribute("username"));
        data.put("addtime", Info.getDateStr());

        HashMap m = new HashMap();
        for (int i = 0; i < json.size(); i++) {
            JSONObject obj = json.getJSONObject(i);
            obj.putAll(data);
            obj.put("shitiid" , obj.get("id"));   // 错题里面记录的是那个试题的id
            obj.remove("id");

            m.putAll(obj);

             Query.make("cepingjieguo").add(m);

                System.err.println("执行成功了");
        }
        out.println("{code:0,data:1}");
        //        out.println("<script>alert('提交成功');location.href=cepingjieguo_list_cepingren.jsp?id='" + id + "';</script>");
//        out.println("<script>alert('提交成功');location.href=cepingjieguo_list_cepingren.jsp;</script>");
//        System.err.println("123");
    } else {
        out.println("{code:1,msg:\"信息提交失败\"}");
        out.close();
    }
%>
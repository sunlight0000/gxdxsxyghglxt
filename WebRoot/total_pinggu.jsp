<%@ page import="util.Request" %>
<%@ page import="dao.Query" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.alibaba.fastjson.JSONObject" %>
<%@ page import="util.Info" %>
<%@ page import="com.alibaba.fastjson.JSONArray" %>
<%@ page import="com.alibaba.fastjson.JSON" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/datepicker/WdatePicker.js"></script>
    <script src="js/jquery.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>
</head>
<body style="padding: 30px">


<h3>评估测试统计</h3>


<%
    List<HashMap> list = Query.make("cepingshiti").order("id desc").select();
%>

<table class="table">
    <thead>
    <tr>
        <th style="width: 350px">题目</th>
        <th style="width: 300px">选项</th>
        <th>占比</th>
    </tr>
    </thead>
    <tbody>

    <%
        int i = 0;
        for (HashMap map : list) {
            i++;
    %>
    <tr>
        <td><%=map.get("shititimu")%>
        </td>
        <td>
            <%
                JSONArray rs = JSON.parseArray(String.valueOf(map.get("daan"))); //Info.jsonDecode(map.get("daan"));

                for (Object entry : rs) {
                    //String k = entry.getKey();
                    Map r = (Map) entry; //entry.getValue();

                    long xuanxiang = Query.make("cepingjieguo")
                            /*.where("timu", Request.get("timu"))*/
                            .where("shititimu", map.get("shititimu"))
                            .where("find_in_set('" + r.get("zimu") + "' , zimu)>0").count();
                    r.put("xuanxiang", xuanxiang);
            %>

            <p>
                        <span style="float: left; width: 40px">
                            <%=xuanxiang%>人
                        </span>
                <%=r.get("zimu")%>、<%=r.get("title")%>
            </p>
            <%}%>
        </td>
        <Td>
            <div id="container<%=i%>" style="max-width:250px;height:250px"></div>
            <script>
                Highcharts.chart('container<%=i%>', {
                    credits: {
                        enabled: false , // 禁用版权信息
                        text: 'HCharts.cn',
                        href: 'http://www.hcharts.cn'
                    },
                    chart: {
                        plotBackgroundColor: null,
                        plotBorderWidth: null,
                        plotShadow: false,
                        type: 'pie'
                    },
                    title: {
                        text: ' '
                    },
                    tooltip: {
                        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                    },
                    plotOptions: {
                        pie: {
                            allowPointSelect: true,
                            cursor: 'pointer',
                            dataLabels: {
                                enabled: true,
                                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                style: {
                                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                }
                            }
                        }
                    },
                    series: [{
                        name: 'Brands',
                        colorByPoint: true,
                        data: [
                            <% for (Object entry : rs){
                            Map r = (Map) entry;
                            %>
                            {
                                name: '<%=r.get("zimu")%>',
                                y: <%=r.get("xuanxiang")%>
                            },
                            <% } %>

                        ]
                    }]
                });
            </script>
        </Td>
    </tr>
    <% } %>
    </tbody>

</table>


<br>


</body>
</html>

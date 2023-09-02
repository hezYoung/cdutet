
<%@ page language="java" pageEncoding="UTF-8"%>
<%
  String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>ECharts</title>
  <base href="<%=base%>" />

  <!-- 引入刚刚下载的 ECharts 文件 -->
  <script type="text/javascript" src="https://cdn.staticfile.org/echarts/4.7.0/echarts.min.js"></script>
  <script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>


</head>
<body>
<!-- 为 ECharts 准备一个定义了宽高的 DOM -->
<div id="main" style="height:600px;width: 900px"></div>

<script type="text/javascript">

  var myChart = echarts.init(document.getElementById('main'));
  // 显示标题，图例和空的坐标轴
  myChart.setOption({
    title: {
      text: '接种人数报表'
    },
    tooltip: {},
    legend: {
      data: ['人数']
    },
    xAxis: {
      data: []
    },
    yAxis: {},
    series: [
      {
        name: '人数',
        type: 'bar',
        data: []
      }
    ]
  });

  // 异步加载数据
  $.get('report/getAll').done(function(data) {
    // 填入数据
    myChart.setOption({
      xAxis: {
        data: data.points
      },
      series: [
        {
          // 根据名字对应到相应的系列
          name: '人数',
          data: data.nums
        }
      ]
    });
  });
</script>
</body>
</html>
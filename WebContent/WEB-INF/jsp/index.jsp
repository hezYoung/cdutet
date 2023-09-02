<%@ page language="java" pageEncoding="UTF-8"%>
<% 
String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>社区疫情管理系统</title>
<base href="<%=base%>" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("h2 + ul").hide();
		$("h2").click(function(){
			$("h2 + ul").hide();
			$(this).next("ul").show();
		});
	});
</script>
</head>
<body style="background-color: #f2f9fd;">
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>社区疫情管理系统</h1>
		</div>
		<div class="head-l">
			<a class="button button-little " href="<%=base%>sys/welcome"
				target="right"> <span class="icon-home"></span>管理首页
			</a> &nbsp;&nbsp;
			 <a class="button button-little " href="sys/logout">
			 <span class="icon-power-off"></span>退出登录
			</a > ${sessionScope.empName}
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title">
			<strong><span class="icon-list"></span>菜单列表</strong>
		</div>
		<h2>
			<span class="icon-pencil-square-o"></span>账户管理
		</h2>
		<ul>
			<li><a href="user/list" target="right"><span class="icon-caret-right"></span>账户列表</a></li>
			<li><a href="user/add" target="right"><span class="icon-caret-right"></span>添加账户</a></li>
		</ul>


		<h2>
			<span class="icon-pencil-square-o"></span>今日情况
		</h2>
		<ul>
			<li><a href="student/list" target="right"><span class="icon-caret-right"></span>确诊情况</a></li>
			<li><a href="student/add" target="right"><span class="icon-caret-right"></span>新增用户</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-o"></span>防疫管理
		</h2>
		<ul>
			<li><a href="exame/list" target="right"><span class="icon-caret-right"></span>社区管理</a></li>
			<li><a href="exame/add" target="right"><span class="icon-caret-right"></span>添加社区</a></li>
		</ul>

		<h2>
			<span class="icon-pencil-square-o"></span>疫苗管理
		</h2>
		<ul>
			<li><a href="grade/list" target="right"><span class="icon-caret-right"></span>接种情况</a></li>
			<li><a href="grade/add" target="right"><span class="icon-caret-right"></span>添加用户</a></li>
			<li><a href="report/add" target="right"><span class="icon-caret-right"></span>疫苗报表</a></li>
		</ul>

	</div>


	<div class="admin">
		<iframe src="<%=base%>sys/welcome" name="right" width="100%" height="100%"></iframe>
	</div>
		<script>
			// function  changeColor(a)               //定义函数
			// {
			// 	h2 .style.backgroundColor=a  ;
			// }
			//
			// h2.onclick=function()                 //事件代码
			// {
			// 	changeColor("green");               //调用函数
			// }

		</script>
</body>
</html>
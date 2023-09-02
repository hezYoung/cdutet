<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />


<title></title>
	<base href="<%=base%>" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<form method="post" action="<%=base%>">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder">社区列表</strong>
			</div>
			<br/>
<%--			<div class="demoTable">--%>
<%--				<div class="layui-form-item layui-form ">--%>
<%--					姓名：--%>
<%--					<div class="layui-inline">--%>
<%--						<input class="layui-input" type="text" name="exameName" id="exameName">--%>
<%--					</div>--%>

<%--					<a class="button border-main" href="exame/sousuo"><span--%>
<%--							class="icon-edit"></span> 搜索</a>--%>
<%--				</div>--%>
<%--			</div>--%>
				地区：<input type="text" name="exameName" id="exameName">
			<a class="button border-main" href="exame/sousuo"> 搜索</a>

			<table class="table table-hover text-center">
				<tr>
					<th>编号</th>
					<th>地址</th>
					<th>社区人数</th>
					<th>负责人</th>
					<th>操作</th>

				</tr>
				<c:forEach items="${list}" var="exame" varStatus="s">
					<tr>
						<td>${exame.id}</td>
						<td>${exame.exameName}</td>
						<td>${exame.exameTime}</td>
						<td>${exame.fuzheRen}</td>

						<td>
							<div class="button-group">
								<a class="button border-main" href="exame/endit?id=${exame.id}"><span
									class="icon-edit"></span> 修改</a>

								<a class="button border-red"
									href="exame/delete?id=${exame.id}" ><span
									class="icon-trash-o"></span> 删除</a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</form>
</body>
</html>
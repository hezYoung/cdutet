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
				<strong class="icon-reorder">账户列表</strong>
			</div>
			<br/>
			<div class="demoTable">
				<div class="layui-form-item layui-form ">
					姓名：
					<div class="layui-inline">
						<input class="layui-input" name="isbn" id="isbn" autocomplete="off">
					</div>

					<a class="button border-main" href="user/endit?id=${user.id}"><span
							class="icon-edit"></span> 搜索</a>
				</div>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>账号</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${list}" var="user" varStatus="s">
					<tr>
						<td>${user.id}</td>
						<td>${user.employeeName}</td>
						<td>${user.userName}</td>
						<td>${user.status}</td>

						<td>
							<div class="button-group">
								<a class="button border-main" href="user/endit?id=${user.id}"><span
									class="icon-edit"></span> 修改</a>

								<a class="button border-red"
									href="user/delete?id=${user.id}" ><span
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
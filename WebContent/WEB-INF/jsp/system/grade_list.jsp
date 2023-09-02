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
				<strong class="icon-reorder">疫苗情况</strong>
			</div>
			<br/>
			<table class="table table-hover text-center">
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>第一针</th>
					<th>接种时间</th>
					<th>第二针</th>
					<th>接种时间</th>
					<th>操作</th>
				</tr>
				<c:forEach items="${list}" var="grade" varStatus="s">
					<tr>
						<td>${grade.id}</td>
						<td>${grade.gradeName}</td>
						<td>${grade.point}</td>
						<td>${grade.jieTime}</td>
						<td>${grade.dierZhen}</td>
						<td>${grade.dierjieTime}</td>

						<td>
							<div class="button-group">
								<a class="button border-main" href="grade/endit?id=${grade.id}"><span
									class="icon-edit"></span> 修改</a>

								<a class="button border-red"
									href="grade/delete?id=${grade.id}" ><span
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
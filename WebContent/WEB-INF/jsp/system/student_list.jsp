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
				<strong class="icon-reorder">确诊情况</strong>
			</div>
			<br/>
			<table class="table table-hover text-center">
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机号</th>
					<th>所属社区</th>
					<th>目前状态</th>
					<th>确诊时间</th>
					<th>操作</th>

				</tr>
				<c:forEach var="student" items="${list}" varStatus="s">
					<tr>
						<td>${student.id}</td>
						<td>${student.studentName}</td>
						<td>${student.sex}</td>
						<td>${student.birthday}</td>
						<td>${student.studentNo}</td>
						<td>${student.idNum}</td>
						<td>${student.classNo}</td>

						<td>
							<div class="button-group">
								<a class="button border-main" href="student/endit?id=${student.id}"><span
									class="icon-edit"></span> 修改</a>

								<a class="button border-red"
									href="student/delete?id=${student.id}" ><span
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
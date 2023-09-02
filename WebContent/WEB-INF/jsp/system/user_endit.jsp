<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>

<title>后台管理</title>
	<base href="<%=base%>" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>修改用户</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="<%=base%>user/doendit">
				<input name="id" value="${user.id}" style="display: none">
				<div class="form-group">
					<div class="label">
						<label>账户号：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${user.userName}" name="userName" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${user.employeeName}" name="employeeName" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>密码：</label>
					</div>
					<div class="field">
						<input type="password" class="input w50" value="${user.password}" name="password" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>状态：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${user.status}" name="status" />
						<div class="tips"></div>
					</div>
				</div>
				<div style="width: 100px;">
					<input type="submit"
						   class="button button-block bg-main text-big input-big"
						   value="提交">
				</div>
<%--				<div class="form-group">--%>
<%--					<div class="label">--%>
<%--						<label>是否负责人：</label>--%>
<%--					</div>--%>
<%--					<div class="input-block input-check input-check-inline">--%>
<%--						<input type="checkbox" value=""/>--%>
<%--					</div>--%>
<%--				</div>--%>
				
			</form>
		</div>
	</div>
</body>
</html>
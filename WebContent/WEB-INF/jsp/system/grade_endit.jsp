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
			<strong><span class="icon-pencil-square-o"></span>修改接种情况</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="<%=base%>grade/doendit">
				<input name="id" value="${grade.id}" style="display: none">
				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${grade.gradeName}" name="gradeName" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>第一针：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${grade.point}" name="point" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>接种时间：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${grade.jieTime}" name="jieTime" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>第二针：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${grade.dierZhen}" name="dierZhen" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>接种时间：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${grade.dierjieTime}" name="dierjieTime" />
						<div class="tips"></div>
					</div>
				</div>

				<div style="width: 100px;">
					<input type="submit"
						   class="button button-block bg-main text-big input-big"
						   value="提交">
				</div>

				
			</form>
		</div>
	</div>
</body>
</html>
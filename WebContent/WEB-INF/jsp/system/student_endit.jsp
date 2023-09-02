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

	<script type="text/javascript">
		//显示下拉菜单  显示所属这个流程的节点
		//初始化
		$(document).ready(function() {
			$.ajax({
				url: "showNodesByFlowNameOption",//调用方法
				type: "GET",
				data: {majorNo:$("#majorNo").val()},//参数
				dataType: "json",//类型

				success: function(data) {
					var tbHtml = "";//定义HTML
					tbHtml += "<option></option>";
					$.each(data, function(key, value) {//循环
						tbHtml+="<option value="+value.nid+">"+value.label+"</option>"//显示查询出来的结果内容
					});
					$('#endid').html(tbHtml);//显示HTML
				}
			});

		});


	</script>

</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>修改用户</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="<%=base%>student/doendit">
				<input name="id" value="${student.id}" style="display: none">
				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${student.studentName}" name="studentName" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>性别：</label>
					</div>

					<div class="field">
						<input type="text" class="input w50" value="${student.sex}" name="sex" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>手机号：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${student.birthday}" name="birthday" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>所属社区：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${student.studentNo}" name="studentNo" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>目前状态：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${student.idNum}" name="idNum" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>确诊时间：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="${student.classNo}" name="classNo" />
						<div class="tips"></div>
					</div>
				</div>


<%--				<div class="form-group">--%>
<%--					<div class="label">--%>
<%--						<label>专业：</label>--%>
<%--					</div>--%>
<%--					<div class="field">--%>
<%--						<select name="" id="">--%>
<%--							<option value="计算机" ${student.majorNo=="计算机"?'selected':''}>计算机</option>--%>
<%--							<option value="会计" ${student.majorNo=="会计"?'selected':''}>会计</option>--%>

<%--						</select>--%>


<%--					</div>--%>
<%--				</div>--%>

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
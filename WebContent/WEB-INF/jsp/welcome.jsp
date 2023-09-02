<%@ page language="java" pageEncoding="UTF-8"%>
<% 
String base = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<title></title>
<base href="<%=base%>" />
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="welcome"></div>
	<div class="container">
		<div class="line bouncein">
			<div class="xs6 xm4 xs3-move xm4-move">
				<div style="height:150px;"></div>
				<div class="media media-y margin-big-bottom"></div>
				<h3 class="w1" style="margin-left:-200px;margin-top:-100px">欢迎用户${sessionScope.empName} </h3>
				<br/>
				<br/>

				<h1 style="font-size: 40px;margin-left:-200px;margin-top:-120px" class="w1" >欢迎使用疫情防控系统</h1>
			</div>
		</div>
	</div>
</body>
</html>
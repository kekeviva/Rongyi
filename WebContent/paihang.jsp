<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>排行</title>
<!-- bt框架 -->
<%@ include file="bt.jsp"%>
</head>
<body>
	<div class="container">
		<!-- 导航栏 -->
		<%@ include file="nav.jsp"%>
		<div class="row">
		<!-- left主内容区 -->
		<div class="col-md">
			<%@ include file="sort.jsp"%>
		</div>
		
		<!-- 右边个人账户区 -->
		<div class="col-md-3">
		<%@ include file="right.jsp"%></div>
		</div>
	</div>
</body>
</html>
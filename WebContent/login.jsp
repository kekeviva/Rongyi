<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- bt框架 -->
<%@ include file="bt.jsp"%>
</head>
<body class="bg-light">
	<nav class="navbar navbar-dark bg-dark">
	  <span class="navbar-brand mb-0 h1" style="margin-left:250px">融易基金交易平台</span>
	</nav>
<div class="container" >
  <div class="row" style="margin-top:100px">
    <div class="col">
				  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="image/6.jpg" class="d-block w-100" alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="image/7.jpg" class="d-block w-100" alt="...">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
    </div>
    <div class="col-sm-4">
       <div class="card-header bg-secondary text-white text-center">
		      <h5>用户登录</h5>
		  </div>
		  <div class="card-body bg-white">
				<form>
				<div class="form-group row">
				    <label for="inputPassword" class="col-sm-4 col-form-label">用户账户：</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword" class="col-sm-4 col-form-label">登陆密码：</label>
				    <div class="col-sm-6">
				      <input type="password" class="form-control" id="inputPassword">
				    </div>
				  </div>
				    <div class="form-group form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1">
					    <label class="form-check-label" for="exampleCheck1">记住密码</label>
					</div>
					
					
				   <a href="zhuye.jsp" class="btn btn-primary" style="margin-left:20px">登录</a>
				   <a href="register.jsp" class="btn btn-primary" style="margin-left:100px">注册</a>
				   
				</form>
		  </div>
		</div>
    </div>
  </div>
</body>
</html>
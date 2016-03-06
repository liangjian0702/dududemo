<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String userName = (String) session.getAttribute("user");
	String message = (String) session.getAttribute("message");
	String hide = null;
	if (null != message) {
		hide = "show";
	} else {
		hide = "hide";
	}
%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="<%=basePath%>static/bootstrap-3.3.6/docs/favicon.ico">

<title>Signin Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=basePath%>static/bootstrap-3.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link
	href="<%=basePath%>static/bootstrap-3.3.6/dist/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=basePath%>static/bootstrap-3.3.6/dist/custom/signin.css"
	rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/ie-emulation-modes-warning.js"></script>
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/jquery.min.js"></script>
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

	<div class="container">

		<form class="form-horizontal" method="post"
			action="<%=path%>/admin/login">
			<h2 class="form-signin-heading">后台管理</h2>
			<div class="alert alert-danger <%=hide%>">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<%=message%>
			</div>
			<label for="inputEmail" class="sr-only">管理员账户</label> <input
				type="text" id="name" name="name" class="form-control"
				placeholder="name" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="password" name="password" class="form-control"
				placeholder="Password" required>
			<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		</form>

	</div>
	<!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>

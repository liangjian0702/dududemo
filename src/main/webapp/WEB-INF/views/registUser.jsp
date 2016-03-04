<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>Regist User</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=basePath %>static/bootstrap-3.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="<%=basePath %>static/bootstrap-3.3.6/dist/custom/signin.css"
	rel="stylesheet">
<script
	src="<%=basePath %>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/jquery.min.js"></script>
<script
	src="<%=basePath %>static/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>


</head>
<body>


	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target=".bs-example-modal-lg">Large modal</button>

	<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog"
		aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg">


			<div class="modal-content">
				<form class="form-signin" method="post"
					action="<%=path %>/createUser">


					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="purchaseLabel">Purchase</h4>
					</div>
					<div class="modal-body">
						<h2 class="form-signin-heading">Please regist</h2>
						<label for="name" class="sr-only">name</label> <input type="text"
							id="name" class="form-control" placeholder="name" required
							autofocus> <label for="password" class="sr-only">password</label>
						<input type="password" id="password" class="form-control"
							placeholder="password" required>
						<div class="checkbox">
							<label> <input type="checkbox" value="remember-me">
								Remember me
							</label>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Regist</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

<title>Login</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=basePath%>static/bootstrap-3.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/jquery.min.js"></script>
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>


</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#myModal">Launch demo modal
	</button>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<form class="form-horizontal" method="post"
					action="<%=path%>/loginSubmit">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">请登录</h4>
					</div>
					<div class="modal-body">
				<div class="form-group">
                    <label  class="col-sm-2 control-label"
                              for="name" >name</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" 
                        id="name" name="name" placeholder="name" required/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 control-label"
                          for="password">password</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control"
                            id="password" name="password" placeholder="password" required/>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <div class="checkbox">
                        <label>
                            <input type="checkbox" value="remember-me"/> Remember me
                        </label>
                      </div>
                    </div>
                  </div>
						
						
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>
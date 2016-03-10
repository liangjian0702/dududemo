<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String userName = (String) session.getAttribute("user");
	String message = (String) session.getAttribute("message");
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

<title>Home</title>

<!-- Bootstrap core CSS -->
<link
	href="<%=basePath%>static/bootstrap-3.3.6/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link href="<%=basePath%>static/css/dashboard.css" rel="stylesheet">

<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/jquery.min.js"></script>
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/js/bootstrap.min.js"></script>

<!-- Just to make our placeholder images work. -->
<script
	src="<%=basePath%>static/bootstrap-3.3.6/dist/custom/assets/js/vendor/holder.min.js"></script>


</head>
<body>

	<!-- nav -->
	<jsp:include page="component/menu.jsp" flush="true" />

	<div class="container-fluid">
		<div class="row">

			<!-- sidebar -->
			<jsp:include page="component/sidebar.jsp" flush="true" />

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<!-- content -->
				<jsp:include page="${module}" flush="true" />
			</div>
		</div>
	</div>

</body>
</html>

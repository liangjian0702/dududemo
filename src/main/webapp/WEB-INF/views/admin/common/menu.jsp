<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="org.apache.commons.lang3.StringUtils"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String userName = (String) session.getAttribute("user");
    String message = (String) session.getAttribute("message");
    System.out.println("page---->" + message);
%>

<!-- include login-->
<%if(StringUtils.isNotEmpty(message)){%>
<!-- include message-->
<script type="text/javascript">
$("#messageModal").modal()
</script>
<%}%>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=path%>/admin/home">嘟嘟旅游后台管理</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Dashboard</a></li>
				<li><a href="#">Settings</a></li>
				<% if(null != userName || "".equals(userName)) {%>
				<li><a href="#">欢迎<%=userName%></a></li>
				<li><a href="<%=path%>/admin/logout">退出<span
						class="sr-only">(current)</span></a></li>
				<%} %>
			</ul>
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search...">
			</form>
		</div>
	</div>
</nav>

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

<!-- sidebar -->
<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li class="active"><a href="#">地导管理 <span class="sr-only">(current)</span></a></li>
		<li><a href="#">车辆管理</a></li>
		<li><a href="#">住宿</a></li>
		<li><a href="#">订单管理</a></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a href="">Nav item</a></li>
		<li><a href="">Nav item again</a></li>
		<li><a href="">One more nav</a></li>
		<li><a href="">Another nav item</a></li>
		<li><a href="">More navigation</a></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li><a href="">Nav item again</a></li>
		<li><a href="">One more nav</a></li>
		<li><a href="">Another nav item</a></li>
	</ul>
</div>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="org.apache.commons.lang3.StringUtils"%>
<%@ page import="com.dudu.app.constants.Constants"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String userName = (String) session.getAttribute("user");
	String message = (String) session.getAttribute("message");
	System.out.println("page---->" + message);
%>

<script type="text/javascript">
$(function() {
	var module = "${module}";
	var HOTEL_JSP = "<%=Constants.HOTEL_JSP%>";
	var CAR_JSP = "<%=Constants.CAR_JSP%>";
	var GUIDE_JSP = "<%=Constants.GUIDE_JSP%>";
	var url = "/app/admin/hotel";
	if (module == CAR_JSP) {
		url = "/app/admin/car";
	} else if (module == GUIDE_JSP) {
		url = "/app/admin/guide";
	} else {
		url = "/app/admin/hotel";
	}
    $('.nav-sidebar a[href$="' + url + '"]').parent().addClass("active");
});
</script>

<!-- sidebar -->
<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li>
		<a href="<%=path%>/admin/hotel">酒店管理 <span
				class="sr-only">(current)</span></a></li>
		<li>
		<a href="<%=path%>/admin/car">车辆管理</a></li>
		<li>
		<a href="<%=path%>/admin/guide">地导管理</a></li>
		<li><a href="#">订单管理</a></li>
	</ul>
	<!-- 	<ul class="nav nav-sidebar">
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
	</ul> -->
</div>

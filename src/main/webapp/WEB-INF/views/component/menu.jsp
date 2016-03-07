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
<jsp:include page="login.jsp" flush="true" />
<%if(StringUtils.isNotEmpty(message)){%>
<!-- include message-->
<jsp:include page="message.jsp" flush="true" />
<script type="text/javascript">
$("#messageModal").modal()
</script>
<%}%>

<!-- Fixed navbar -->
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=path%>/"><spring:message
					code="lbl.projectname" /></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="#"><spring:message code="lbl.customize" /></a></li>
				<li><a href="#"><spring:message code="lbl.personalguider" /></a></li>
				<li><a href="#"><spring:message code="lbl.help" /></a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"><spring:message code="lbl.order" /> <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Action</a></li>
						<li><a href="#">Another action</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li class="dropdown-header">Nav header</li>
						<li><a href="#">Separated link</a></li>
						<li><a href="#">One more separated link</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="?lang=zh_CN"><spring:message
							code="lbl.lang_chinese" /></a></li>
				<li><a href="?lang=ja_JP"><spring:message
							code="lbl.lang_japanese" /></a></li>
				<% if(null != userName || "".equals(userName)) {%>
				<li><a href="#"><spring:message code="lbl.welcome" /><%=userName%></a></li>
				<li><a href="<%=path%>/logout"><spring:message
							code="lbl.logout" /><span class="sr-only">(current)</span></a></li>
				<%} else { %>
				<li><a href="#" data-toggle="modal" data-target="#loginModal"><spring:message
							code="lbl.login" /> <span class="sr-only">(current)</span></a></li>
				<%} %>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
</nav>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<P>  ${message}. </P>
<P> welcome ${name}. </P>
<P>  The time on the server is ${serverTime}. </P>
<a href="<%=basePath %>loginInt">login</a>
<a href="<%=basePath %>registUser">regist</a>
</body>
</html>

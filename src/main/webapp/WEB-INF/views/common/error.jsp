<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html SYSTEM "http://www.thymeleaf.org/dtd/xhtml1-strict-thymeleaf-spring4-4.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">

<head th:substituteby="header :: copy"></head>

<body>
	<h1>Support Friendly Error Page</h1>
	<p th:if="${url}">
		<b>Page:</b> <span th:text="${url}">Page URL</span>
	</p>

	<p th:if="${timestamp}" id='created'>
		<b>Occurred:</b> <span th:text="${timestamp}">Timestamp</span>
	</p>

	<p th:if="${status}">
		<b>Response Status:</b> <span th:text="${status}">status-code</span> <span
			th:if="${error}" th:text="'('+${error}+')'">error ...</span>
	</p>

	<p>Application has encountered an error. Please contact support on
		...</p>

	<p>Support may ask you to right click to view page source.</p>

    <!--
      // Hidden Exception Details  - this is not a recommendation, but here is
      // how you hide an exception in the page using Thymeleaf
      -->
	<div th:utext="'&lt;!--'" th:remove="tag"></div>
	<div th:utext="'Failed URL: ' +  ${url}" th:remove="tag">${url}</div>
	<div th:utext="'Exception: ' + ${exception.message}" th:remove="tag">${exception.message}</div>
	<ul th:remove="tag">
		<li th:each="ste : ${exception.stackTrace}" th:remove="tag"><span
			th:utext="${ste}" th:remove="tag">${ste}</span></li>
	</ul>
	<div th:utext="'--&gt;'" th:remove="tag"></div>


	<div th:substituteby="footer :: copy"></div>

</body>
</html>
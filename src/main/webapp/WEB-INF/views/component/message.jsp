<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- Modal -->
<div class="modal fade" id="messageModal" tabindex="-1" role="dialog"
	aria-labelledby="messageModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					onclick="location.href='<%=path%>/clearmessage'" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="messageModalLabel">
					<spring:message code="lbl.message" />
				</h4>
			</div>
			<div class="modal-body">${message}</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal"
					onclick="location.href='<%=path%>/clearmessage'">
					<spring:message code="lbl.close" />
				</button>
			</div>
		</div>
	</div>
</div>
